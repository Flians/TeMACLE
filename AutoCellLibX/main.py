from BLIFPreProc import *

# from BLIFGNNTraining import *
from BLIFPatternGrowth import *
import os
import time
import matplotlib
from spice import *
from iCell import loadiCellArea, runiCellForNetlist
from Astran import loadAstranArea, runAstranForNetlist
import copy


'''
STDCellNames = [
    # "AND2X1",
    "AND2X2",
    "AOI21X1",
    # "AOI22X1",
    "BUFX2",
    # "BUFX4",
    # "CLKBUF1",
    # "CLKBUF2",
    # "CLKBUF3",
    # "DFFNEGX1",
    # "DFFPOSX1",
    # "DFFSR",
    # "FAX1",
    # "HAX1",
    "INVX1",
    # "INVX2",
    # "INVX4",
    # "INVX8",
    # "LATCH",
    # "MUX2X1",
    "NAND2X1",
    "NAND3X1",
    "NOR2X1",
    "NOR3X1",
    "OAI21X1",
    # "OAI22X1",
    # "OR2X1",
    "OR2X2",
    # "TBUFX1",
    # "TBUFX2",
    "XNOR2X1",
    "XOR2X1",
    "const_0",
    "const_1",
]

'''

STDCellNames = ['AND2x2', 'AOI21x1', 'BUFx2', 'INVx1', 'NAND2x1', 'NAND3x1', 'NOR2x1', 'NOR3x1', 'OAI21x1', 'OR2x2', 'TIEHIx1', 'TIELOx1', 'XNOR2x1', 'XOR2x1']


def main():
    os.environ["CUDA_VISIBLE_DEVICES"] = "-1"
    current_path = os.path.dirname(os.path.abspath(__file__))
    os.environ["LD_LIBRARY_PATH"] = f'{current_path}/../tools/gurobi/lib:{os.environ.get("LD_LIBRARY_PATH", ";")}'

    SCSynthesis = 'iCell'
    # SCSynthesis = 'Astran'

    iCellPath = f'{current_path}/../tools/iCell/iCell'
    AstranPath = f'{current_path}/../tools/astran/Astran/build/bin/Astran'

    if SCSynthesis == 'Astran':
        # gurobiPath='/Library/gurobi1003/macos_universal2/bin/gurobi_cl'
        gurobiPath = f'{current_path}/../tools/gurobi/bin/gurobi_cl'
        technologyPath = f'{current_path}/../tools/astran/Astran/build/Work/tech_freePDK45.rul'
        stdSpiceNetlistPath = f'{current_path}/../stdCellLib/gscl45nm/gscl45nm.sp'
        initialLibertyPath = f'{current_path}/../stdCellLib/gscl45nm/gscl45nm.lib'
    else:
        stdSpiceNetlistPath = f'{current_path}/../stdCellLib/asap7/asap7_75t_L.sp'
        initialLibertyPath = f'{current_path}/../stdCellLib/asap7/asap7_75t_L.lib'

    benchmarks = ["sqrt", "voter", "arbiter", "cavlc", "div", "int2float", "max", "priority", "sin", "square", "BoomBranchPredictor", "GemminiLoopMatmul", "GemminiLoopConv", "DCache", "BoomRegisterFile", "GemminiMesh"]
    benchmarks = ["adder", 'arbiter', 'bar', 'cavlc', "ctrl", 'dec', 'div', 'hyp', "i2c", 'int2float', 'log2', 'max', 'mem_ctrl', "multiplier", "priority", "router", 'sin', 'sqrt', "square", 'voter']

    # load initial cell area
    stdType2GSCLArea = {}
    liberty = parse_liberty(open(initialLibertyPath).read())
    for cell_group in liberty.get_groups('cell'):
        cell_name = cell_group.args[0].split('_')[0]
        if cell_name in STDCellNames:
            # record initial cell area
            stdType2GSCLArea[cell_name] = cell_group.get_attribute(key="area", default=-1)

    topThr = 5
    ratioThr = 0.05
    cntThr = 30
    patternNodesThr = 5

    for benchmarkName in benchmarks:
        startTime = time.time()
        if benchmarkName == "tc_008_arthmetic_sin":
            ratioThr = 0.025

        print("=================================================================================\n", benchmarkName, "\n=================================================================================\n")
        # load liberty/spice/design BLIF
        subckts = loadSpiceSubcircuits(stdSpiceNetlistPath)
        subckts_ = {}
        for name, spsub in subckts.items():
            subckts_[name.split('_')[0]] = spsub
        subckts = subckts_
        BLIFGraph, cells, netlist, stdCellTypesForFeature, dataset, maxLabelIndex, clusterSeqs, clusterNum = loadDataAndPreprocess(
            libFileName=initialLibertyPath, blifFileName=f"{current_path}/../benchmark/blif/{benchmarkName}.blif", startTime=startTime
        )
        oriArea = getArea(cells, stdType2GSCLArea)
        print("originalArea=", oriArea)

        outputPath = f"{current_path}/../outputs/{SCSynthesis}/AutoCellLibX/{benchmarkName}/"
        os.makedirs(outputPath, exist_ok=True)

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

                    # export the SPICE netlist of the complex of cells
                    exportSpiceNetlist(tmpClusterSeq, subckts, str(patternTraceId), outputPath)
                    narea = -1
                    if SCSynthesis == 'Astran':
                        narea = loadAstranArea(GDSPath=outputPath, typeName=f'COMPLEX{patternTraceId}')
                        if narea < 0:
                            runAstranForNetlist(AstranPath=AstranPath, gurobiPath=gurobiPath, technologyPath=technologyPath, spiceNetlistPath=f'{outputPath}/COMPLEX{patternTraceId}.sp', complexName=f'COMPLEX{patternTraceId}', commandDir=outputPath)
                            narea = loadAstranArea(GDSPath=outputPath, typeName=f'COMPLEX{patternTraceId}')
                    elif SCSynthesis == 'iCell':
                        narea = loadiCellArea(GDSPath=outputPath, typeName=f'COMPLEX{patternTraceId}')
                        if narea == -2:
                            runiCellForNetlist(iCellPath=iCellPath, spiceNetlistPath=f'{outputPath}/COMPLEX{patternTraceId}.sp', complexName=f'COMPLEX{patternTraceId}', commandDir=outputPath)
                            narea = loadiCellArea(GDSPath=outputPath, typeName=f'COMPLEX{patternTraceId}')
                    else:
                        pass
                    if narea < 0:
                        print('>>> : Synthesis pattern#', patternTraceId, 'unsuccessfully!\n')
                        continue

                if benchmarkFailure:
                    break
                exampleCells = []
                for cellId in tmpClusterSeq.patternClusters[0].cellIdsContained:
                    exampleCells.append(cells[cellId])

                oriUnitAstranArea = getArea(exampleCells, stdType2Area)
                oriUnitGSCLArea = getArea(exampleCells, stdType2GSCLArea)
                newUnitAstranArea = loadAstranArea(outputPath, f'COMPLEX{patternTraceId}') if SCSynthesis == 'Astran' else loadiCellArea(outputPath, f'COMPLEX{patternTraceId}')
                if newUnitAstranArea >=0 and oriUnitAstranArea - newUnitAstranArea > 0:
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
                for complexName in lastComplexSelection:
                    print(complexName, file=fileResult)
                print("\nruntime:", time.time() - startTime, " (s)", file=fileResult)
                fileResult.close()
            else:
                break

            clusterSeq = clusterSeqs[0]

            assert ratioThr > 0
            if len(clusterSeq.patternClusters[0].cellIdsContained) * len(clusterSeq.patternClusters) < ratioThr * len(cells) and len(clusterSeq.patternClusters) < cntThr:
                break

            newSeqOfClusters, patternNum = growASeqOfClusters(BLIFGraph, clusterSeq, clusterNum, patternNum, paintPattern=True)

            # export the SPICE netlist of the complex of cells
            exportSpiceNetlist(newSeqOfClusters[0], subckts, len(clusterSeqs), outputPath)

            clusterSeqs = clusterSeqs[1:]
            clusterSeqs += newSeqOfClusters
            clusterSeqs = removeEmptySeqsAndDisableClusters(clusterSeqs)
            clusterSeqs = sortPatternClusterSeqs(clusterSeqs)

        # record total runtime
        with open(outputPath + "/bestRecord-" + benchmarkName, 'a+') as fileResult:
            fileResult.write(f"\nTotal runtime: {time.time() - startTime} (s)\n")

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

            stdType2Area = copy.deepcopy(stdType2GSCLArea)
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

                # export the SPICE netlist of the complex of cells
                exportSpiceNetlist(newSeqOfClusters[0], subckts, len(clusterSeqs), outputPath)

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
