from BLIFPreProc import *

# from BLIFGNNTraining import *
from BLIFPatternGrowth import *
import os
import time
import matplotlib
from spice import *
from iCell import loadiCellArea, runiCellForNetlist
from Astran import loadAstranArea, runAstranForNetlist
from GDSIIAnalysis import loadOrignalGSCL45nmGDS, STDCellNames, loadAstranGDS, loadiCellGDS
import shutil
import copy

var('A B C D E F')  # FOR Sympy


def mkdir(pathStr):
    if os.path.exists(pathStr):
        pass
    else:
        os.mkdir(pathStr)


def main():
    os.environ["CUDA_VISIBLE_DEVICES"] = "-1"
    current_path = os.path.dirname(os.path.abspath(__file__))
    os.environ["LD_LIBRARY_PATH"] = f'{current_path}/../tools/gurobi/lib:{os.environ.get("LD_LIBRARY_PATH", ";")}'

    SCSynthesis = 'iCell'  #'Astran'

    gurobiPath = f'{current_path}/../tools/gurobi/bin/gurobi_cl'
    AstranPath = f'{current_path}/../tools/astran/Astran/build/bin/Astran'
    technologyPath = f'{current_path}/../tools/astran/Astran/build/Work/tech_freePDK45.rul'

    iCellPath = f'{current_path}/../tools/iCell/iCell'

    stdSpiceNetlistPath = f'{current_path}/../stdCellLib/asap7/asap7_75t_L.sp'
    initialLibertyPath = f'{current_path}/../stdCellLib/asap7/asap7_75t_L.lib'
    initialGenlibPath = f'{current_path}/../stdCellLib/asap7/asap7_75t_L.genlib'
    extendCellPath = f'{current_path}/../stdCellLib/asap7/extend'

    # load extended cell library
    extendCellLib = loadExtendCells(extendCellPath)

    benchmarks = ["sqrt", "voter", "arbiter", "cavlc", "div", "int2float", "max", "priority", "sin", "square", "BoomBranchPredictor", "GemminiLoopMatmul", "GemminiLoopConv", "DCache", "BoomRegisterFile", "GemminiMesh"]
    benchmarks = ["adder", 'arbiter', 'bar', 'cavlc', "ctrl", 'dec', 'div', 'hyp', "i2c", 'int2float', 'log2', 'max', 'mem_ctrl', "multiplier", "priority", "router", 'sin', 'sqrt', "square", 'voter']

    stdType2GSCLArea = {}
    if 'asap7' in initialLibertyPath:
        liberty = parse_liberty(open(initialLibertyPath).read())
        for cell_group in liberty.get_groups('cell'):
            cell_name = cell_group.args[0].split('_')[0]
            for a in cell_group.attributes:
                if a.name == 'area':
                    stdType2GSCLArea[cell_name] = a.value
                    break
    else:
        stdType2GSCLArea = loadOrignalGSCL45nmGDS()
    topThr = 5
    ratioThr = 0.05
    cntThr = 30
    patternNodesThr = 5

    for benchmarkName in benchmarks:
        startTime = time.time()
        if benchmarkName == "tc_008_arthmetic_sin":
            ratioThr = 0.025

        print("=================================================================================\n", benchmarkName, "\n=================================================================================\n")
        # load spice
        subckts = loadSpiceSubcircuits(stdSpiceNetlistPath)
        subckts_ = {}
        for name, spsub in subckts.items():
            subckts_[name.split('_')[0]] = spsub
        subckts = subckts_
        # load liberty/design BLIF
        BLIFGraph, cells, netlist, stdCellTypesForFeature, dataset, maxLabelIndex, clusterSeqs, clusterNum = loadDataAndPreprocess(
            libFileName=initialLibertyPath, blifFileName=f"{current_path}/../benchmark/blif/{benchmarkName}.blif", startTime=startTime
        )
        oriArea = getArea(cells, stdType2GSCLArea)
        print("originalArea=", oriArea)

        outputPath = f"{current_path}/../outputs/{SCSynthesis}/AutoCellLibX/{benchmarkName}/"
        os.makedirs(outputPath, exist_ok=True)

        if iCellPath != '' and SCSynthesis == 'iCell':
            for oriStdCellType in stdCellTypesForFeature:
                if oriStdCellType.find("bool") >= 0 or oriStdCellType in ['PI', 'const_0', 'const_1', 'TIEHIx1', 'TIELOx1']:
                    continue
                if SCSynthesis == 'Astran' and loadAstranArea(GDSPath=f'{current_path}/originalAstranStdCells/', typeName=oriStdCellType) is False:
                    runAstranForNetlist(AstranPath=AstranPath, gurobiPath=gurobiPath, technologyPath=technologyPath, spiceNetlistPath=stdSpiceNetlistPath, complexName=oriStdCellType, commandDir=f'{current_path}/originalAstranStdCells/')
                elif SCSynthesis == 'iCell' and loadiCellArea(GDSPath=f'{current_path}/originaliCellStdCells/', typeName=f'{oriStdCellType}_ASAP7_75t_L') is False:
                    runiCellForNetlist(iCellPath=iCellPath, spiceNetlistPath=stdSpiceNetlistPath, complexName=f'{oriStdCellType}_ASAP7_75t_L', commandDir=f'{current_path}/originaliCellStdCells/')
        stdType2Area = loadAstranGDS() if SCSynthesis == 'Astran' else loadiCellGDS()
        stdType2Area = copy.deepcopy(stdType2GSCLArea)
        sccArea = getArea(cells, stdType2Area)
        print(f"synthesized {SCSynthesis}Area=", sccArea)

        clusterSeqs = sortPatternClusterSeqs(clusterSeqs)

        # iteratively to pick the most frequent subgraph and extend them by absorbing their neighbors
        dumpedPaterns = dict()
        detectedPatterns = []

        patternNum = len(clusterSeqs)
        bestSaveArea = 0
        lastSaveGSCLArea = 0
        lastComplexSelection = 0
        targetPatternTrace = ""
        benchmarkFailure = False

        for i in range(0, topThr):
            if len(clusterSeqs[0].patternClusters) == 0:
                break
            if len(clusterSeqs[0].patternClusters[0].cellIdsContained) > patternNodesThr:
                continue

            saveArea = 0
            saveGSCLArea = 0
            complexSelection = []
            for j in range(0, topThr):
                if j >= len(clusterSeqs):
                    break
                tmpClusterSeq = clusterSeqs[j]
                patternTraceId = tmpClusterSeq.patternClusters[0].clusterTypeId
                patternSubgraph = BLIFGraph.subgraph(tmpClusterSeq.patternClusters[0].cellIdsContained)

                if not patternTraceId in dumpedPaterns.keys():
                    if len(tmpClusterSeq.patternClusters[0].cellIdsContained) > patternNodesThr:
                        continue
                    print("dealing with pattern#", patternTraceId, " with ", len(tmpClusterSeq.patternClusters), " clusters (size=", len(tmpClusterSeq.patternClusters[0].cellIdsContained), ")")

                    if len(tmpClusterSeq.patternClusters[0].cellIdsContained) * len(tmpClusterSeq.patternClusters) < ratioThr * len(cells) and len(tmpClusterSeq.patternClusters) < cntThr:
                        print(
                            "===Warning: the pattern is too small and bypassed. pattern: [",
                            tmpClusterSeq.patternExtensionTrace,
                            "]",
                            len(tmpClusterSeq.patternClusters[0].cellIdsContained) * len(tmpClusterSeq.patternClusters),
                            "<<<",
                            len(cells),
                        )
                        break
                    dumpedPaterns[tmpClusterSeq.patternExtensionTrace] = patternTraceId
                    detectedPatterns.append(tmpClusterSeq.patternExtensionTrace)

                    drawColorfulFigureForGraphWithAttributes(patternSubgraph, save_to_file=f'{outputPath}/COMPLEX{patternTraceId}.png', withLabel=True, figsize=(20, 20))

                    # construct the cluster's function
                    patternFunc, ipins, opins, patternFunText = obtainClusterFunc(patternSubgraph, cells)

                    # export the SPICE netlist of the complex of cells
                    exportSpiceNetlist(tmpClusterSeq, subckts, f'COMPLEX{patternTraceId}', ipins, opins, patternFunText, outputPath=f'{outputPath}/COMPLEX{patternTraceId}.sp')

                    flag = False
                    pfunc = None
                    # check if current pattern exists in pre-defined extened cell library
                    if patternFunText not in extendCellLib:
                        if len(patternFunc) == 1:
                            pfunc = next((x for x in extendCellLib if bool_map(next(iter(patternFunc.values())), eval(x))), None)
                        if pfunc:
                            flag = True
                            # need to change function
                    else:
                        flag = True
                    nnode = len(tmpClusterSeq.patternClusters[0].cellIdsContained)
                    if flag:
                        if not pfunc:
                            pfunc = patternFunText
                        shutil.copy(f'{extendCellPath}/{pfunc};{extendCellLib[pfunc].nnode}.iCelllog', f'{outputPath}/COMPLEX{patternTraceId}.iCelllog')

                    # if SC synthesizer is available, run it to get the layout and area evaluation
                    if (AstranPath != '' and SCSynthesis == 'Astran') or (iCellPath != '' and SCSynthesis == 'iCell'):
                        try:
                            res = True
                            if SCSynthesis == 'Astran' and loadAstranArea(outputPath, patternTraceId) is False:
                                res = runAstranForNetlist(
                                    AstranPath=AstranPath, gurobiPath=gurobiPath, technologyPath=technologyPath, spiceNetlistPath=f'{outputPath}/COMPLEX{patternTraceId}.sp', complexName=patternTraceId, commandDir=outputPath
                                )
                            elif SCSynthesis == 'iCell':
                                if not os.path.exists(os.path.join(outputPath, f'COMPLEX{patternTraceId}.iCelllog')):
                                    res = runiCellForNetlist(iCellPath=iCellPath, spiceNetlistPath=f'{outputPath}/COMPLEX{patternTraceId}.sp', complexName=f'COMPLEX{patternTraceId}', commandDir=outputPath)
                                elif loadiCellArea(outputPath, f'COMPLEX{patternTraceId}') is False:
                                    print('>>> : Synthesis pattern#', patternTraceId, 'unsuccessfully!\n')
                                    break
                            if res:
                                print('>>> : Synthesis pattern#', patternTraceId, 'successfully!\n')
                                if flag is False:
                                    shutil.copy(f'{outputPath}/COMPLEX{patternTraceId}.iCelllog', f'{extendCellPath}/{patternFunText};{nnode}.iCelllog')
                                    shutil.copy(f'{outputPath}/COMPLEX{patternTraceId}.png', f'{extendCellPath}/{patternFunText};{nnode}.png')
                                    shutil.copy(f'{outputPath}/COMPLEX{patternTraceId}.run', f'{extendCellPath}/{patternFunText};{nnode}.run')
                                    shutil.copy(f'{outputPath}/COMPLEX{patternTraceId}.sp', f'{extendCellPath}/{patternFunText};{nnode}.sp')
                                    extendCellLib[patternFunText] = StdCellType(patternFunText, nnode)
                            else:
                                print('>>> : Synthesis pattern#', patternTraceId, 'unsuccessfully!\n')
                                break
                        except:
                            print('>>> : Synthesis pattern#', patternTraceId, 'unsuccessfully!\n')
                            break

                if benchmarkFailure:
                    break
                exampleCells = []
                for cellId in tmpClusterSeq.patternClusters[0].cellIdsContained:
                    exampleCells.append(cells[cellId])

                oriUnitAstranArea = getArea(exampleCells, stdType2Area)
                oriUnitGSCLArea = getArea(exampleCells, stdType2GSCLArea)
                newUnitAstranArea = loadAstranArea(outputPath, f'COMPLEX{patternTraceId}') if SCSynthesis == 'Astran' else loadiCellArea(outputPath, f'COMPLEX{patternTraceId}')
                if oriUnitAstranArea - newUnitAstranArea > 0:
                    complexSelection.append((f'COMPLEX{patternTraceId}', len(tmpClusterSeq.patternClusters), len(tmpClusterSeq.patternClusters[0].cellIdsContained), tmpClusterSeq.patternExtensionTrace))
                    saveArea += (oriUnitAstranArea - newUnitAstranArea) * len(tmpClusterSeq.patternClusters)
                    saveGSCLArea += (oriUnitGSCLArea - newUnitAstranArea) * len(tmpClusterSeq.patternClusters)

            if benchmarkFailure:
                break

            print("saveArea=", saveArea, " / ", saveArea / sccArea * 100, "%")
            if saveArea > bestSaveArea:
                bestSaveArea = saveArea
                lastSaveGSCLArea = saveGSCLArea
                lastComplexSelection = complexSelection
                fileResult = open(outputPath + "/bestRecord-" + benchmarkName, 'w')
                print(bestSaveArea, f" <- compared to {SCSynthesis} GDS area", file=fileResult)
                print(bestSaveArea / sccArea * 100, f"% <- compared to {SCSynthesis} GDS area", file=fileResult)
                print(lastSaveGSCLArea, " <- compared to GSCL GDS area", file=fileResult)
                print(lastSaveGSCLArea / oriArea * 100, "% <- compared to GSCL GDS area", file=fileResult)
                print("The generated complex cells are (name, clusterNum, cellNumInOneCluster, patternCode):", file=fileResult)
                eachClusterNum = []
                totalClusterCellNum = 0
                for complexName in lastComplexSelection:
                    print(complexName, file=fileResult)
                    eachClusterNum.append(str(complexName[2]))
                    totalClusterCellNum += complexName[1] * complexName[2]
                # print("\n runtime:", time.time() - startTime, " (s)", file=fileResult)
                print('Pattern Sizes: ', '/'.join(eachClusterNum), file=fileResult)
                print(f'Pattern Cov.: {totalClusterCellNum}/{len(cells)}={totalClusterCellNum / len(cells)}', file=fileResult)
                fileResult.close()
            else:
                break

            clusterSeq = clusterSeqs[0]

            assert ratioThr > 0
            if len(clusterSeq.patternClusters[0].cellIdsContained) * len(clusterSeq.patternClusters) < ratioThr * len(cells) and len(clusterSeq.patternClusters) < cntThr:
                break

            newSeqOfClusters, patternNum = growASeqOfClusters(BLIFGraph, clusterSeq, clusterNum, patternNum, paintPattern=True)

            patternSubgraph = BLIFGraph.subgraph(newSeqOfClusters[0].patternClusters[0].cellIdsContained)
            # construct the cluster's function
            patternFunc, ipins, opins, patternFunText = obtainClusterFunc(patternSubgraph, cells)

            # export the SPICE netlist of the complex of cells
            exportSpiceNetlist(newSeqOfClusters[0], subckts, f'COMPLEX{patternTraceId}', ipins, opins, patternFunText, outputPath=f'{outputPath}/COMPLEX{patternTraceId}.sp')

            clusterSeqs = clusterSeqs[1:]
            clusterSeqs += newSeqOfClusters
            clusterSeqs = removeEmptySeqsAndDisableClusters(clusterSeqs)
            clusterSeqs = sortPatternClusterSeqs(clusterSeqs)

        # record total runtime
        with open(outputPath + "/bestRecord-" + benchmarkName, 'a') as fileResult:
            fileResult.write(f"\n runtime: {time.time() - startTime} (s)\n")

        if benchmarkFailure:
            continue

        countedSet = set()
        recordPatternDetails = []
        detectedPatterns.reverse()
        fileResult = open(f'{outputPath}/bestRecord-seperate{benchmarkName}', 'w')
        for targetPatternTrace in detectedPatterns:
            if targetPatternTrace in countedSet:
                continue

            BLIFGraph, cells, netlist, stdCellTypesForFeature, dataset, maxLabelIndex, clusterSeqs, clusterNum = loadDataAndPreprocess(
                libFileName=initialLibertyPath, blifFileName=f"{current_path}/../benchmark/blif/{benchmarkName}.blif", startTime=startTime, bypassInitialCluster=True
            )

            clusterSeqs, clusterNum = heuristicLabelSomeNodesAndGetInitialClusters_BasedOn(BLIFGraph, cells, netlist, targetPatternTrace)
            print("heuristicLabelSomeNodesAndGetInitialClusters done. time esclaped: ", time.time() - startTime)

            oriArea = getArea(cells, stdType2GSCLArea)
            print("originalArea=", oriArea)

            # outputPath = f"{current_path}/outputs/{benchmarkName}/"
            # mkdir(outputPath)

            stdType2Area = loadAstranGDS() if SCSynthesis == 'Astran' else loadiCellGDS()
            sccArea = getArea(cells, stdType2Area)
            print(f"{SCSynthesis}Area=", sccArea)

            clusterSeqs = sortPatternClusterSeqs(clusterSeqs)

            patternNum = len(clusterSeqs)
            bestSaveArea = 0
            lastSaveGSCLArea = 0
            lastComplexSelection = 0

            for i in range(0, 10):
                print("searching for ", targetPatternTrace)
                if len(clusterSeqs[0].patternClusters) == 0:
                    break
                if len(clusterSeqs[0].patternClusters[0].cellIdsContained) > patternNodesThr:
                    continue

                saveArea = 0
                saveGSCLArea = 0
                complexSelection = []
                touch = False
                for j in range(0, 1):
                    if j >= len(clusterSeqs):
                        break
                    tmpClusterSeq = clusterSeqs[j]
                    patternTraceId = dumpedPaterns[tmpClusterSeq.patternExtensionTrace]
                    patternSubgraph = BLIFGraph.subgraph(tmpClusterSeq.patternClusters[0].cellIdsContained)

                    exampleCells = []
                    for cellId in tmpClusterSeq.patternClusters[0].cellIdsContained:
                        exampleCells.append(cells[cellId])

                    complexSelection.append((f'COMPLEX{patternTraceId}', len(tmpClusterSeq.patternClusters), len(tmpClusterSeq.patternClusters[0].cellIdsContained), tmpClusterSeq.patternExtensionTrace))
                    oriUnitAstranArea = getArea(exampleCells, stdType2Area)
                    oriUnitGSCLArea = getArea(exampleCells, stdType2GSCLArea)
                    newUnitAstranArea = loadAstranArea(outputPath, f'COMPLEX{patternTraceId}') if SCSynthesis == 'Astran' else loadiCellArea(outputPath, f'COMPLEX{patternTraceId}')
                    saveArea += (oriUnitAstranArea - newUnitAstranArea) * len(tmpClusterSeq.patternClusters)
                    saveGSCLArea += (oriUnitGSCLArea - newUnitAstranArea) * len(tmpClusterSeq.patternClusters)

                    touch = True

                print("saveArea=", saveArea, " / ", saveArea / sccArea * 100, "%")
                if touch and (not tmpClusterSeq.patternExtensionTrace in countedSet):

                    countedSet.add(tmpClusterSeq.patternExtensionTrace)
                    bestSaveArea = saveArea
                    lastSaveGSCLArea = saveGSCLArea
                    lastComplexSelection = complexSelection

                    # print(bestSaveArea, " <- compared to Astran GDS area",
                    #       file=fileResult)
                    # print(bestSaveArea/astranArea*100,
                    #       "% <- compared to Astran GDS area", file=fileResult)
                    # print(lastSaveGSCLArea,
                    #       " <- compared to GSCL GDS area", file=fileResult)
                    # print(lastSaveGSCLArea/oriArea*100,
                    #       "% <- compared to GSCL GDS area", file=fileResult)
                    # print(
                    #     "The generated complex cells are (name, clusterNum, cellNumInOneCluster, patternCode):", file=fileResult)

                    recordPatternDetails.append(
                        (
                            bestSaveArea,
                            bestSaveArea / sccArea * 100,
                            len(tmpClusterSeq.patternClusters),
                            len(tmpClusterSeq.patternClusters[0].cellIdsContained),
                            len(tmpClusterSeq.patternClusters[0].cellIdsContained) * len(tmpClusterSeq.patternClusters),
                            f'COMPLEX{patternTraceId}',
                            tmpClusterSeq.patternExtensionTrace,
                        )
                    )
                    if targetPatternTrace == lastComplexSelection[0][3]:
                        break

                clusterSeq = clusterSeqs[0]
                if len(clusterSeq.patternClusters[0].cellIdsContained) * len(clusterSeq.patternClusters) < ratioThr * len(cells) and len(clusterSeq.patternClusters) < cntThr:
                    break

                newSeqOfClusters, patternNum = growASeqOfClusters_BasedOn(BLIFGraph, clusterSeq, clusterNum, patternNum, paintPattern=True, targetPatternTrace=targetPatternTrace)

                patternSubgraph = BLIFGraph.subgraph(newSeqOfClusters[0].patternClusters[0].cellIdsContained)
                # construct the cluster's function
                patternFunc, ipins, opins, patternFunText = obtainClusterFunc(patternSubgraph, cells)

                # export the SPICE netlist of the complex of cells
                exportSpiceNetlist(newSeqOfClusters[0], subckts, f'COMPLEX{patternTraceId}', ipins, opins, patternFunText, outputPath=f'{outputPath}/COMPLEX{patternTraceId}.sp')

                clusterSeqs = clusterSeqs[1:]
                clusterSeqs += newSeqOfClusters
                clusterSeqs = removeEmptySeqsAndDisableClusters(clusterSeqs)
                clusterSeqs = sortPatternClusterSeqs(clusterSeqs)

        recordPatternDetails = sorted(recordPatternDetails, key=lambda x: -x[0])
        print("| designOverallArea | saveArea | saveRatio | patternCnt | patternSize | patternCoverage | patternName | patternCode |", file=fileResult)
        for saveArea, saveRatio, patternCnt, patternSize, patternCoverage, patternName, patternCode in recordPatternDetails:
            print('|', oriArea, '|', saveArea, '|', saveRatio, '|', patternCnt, '|', patternSize, '|', patternCoverage, '|', patternName, '|', patternCode, '|', file=fileResult)
        fileResult.close()


if __name__ == '__main__':
    matplotlib.use("Pdf")
    main()
    ''' 
    import sys
    SCRIPT_DIR = os.path.dirname(os.path.abspath(__file__))
    sys.path.append(os.path.join(SCRIPT_DIR, '../build/tools'))
    import SynPy
    import time

    current_path = os.path.dirname(os.path.abspath(__file__))
    benchmarks = ["adder", 'arbiter', 'bar', 'cavlc', "ctrl", 'dec', 'div', 'hyp', "i2c", 'int2float', 'log2', 'max', 'mem_ctrl', "multiplier", "priority", "router", 'sin', 'sqrt', "square", 'voter']
    for benchmarkName in benchmarks:
        timer = time.time()
        initialRes = SynPy.synthesis(f'{current_path}/../benchmark/aig/{benchmarkName}.aig', f'{current_path}/../stdCellLib/gscl45nm/gscl45nm.genlib', 
                                     f'{current_path}/../src/outputs/adder/adder.lib', f'{current_path}/../benchmark/blif/{benchmarkName}.blif')
        if initialRes[0] == -1:
            print(f'>>> synthesis {benchmarkName} failed!')
        else:
            print(f'>>> synthesis {benchmarkName} runtime: {time.time() - timer}')
    '''
