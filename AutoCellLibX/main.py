from BLIFPreProc import *
# from BLIFGNNTraining import *
from BLIFPatternGrowth import *
import os
import time
import matplotlib
from spice import *
from Astran import *
from GDSIIAnalysis import *


def mkdir(pathStr):
    if os.path.exists(pathStr):
        pass
    else:
        os.mkdir(pathStr)


def main():
    os.environ["CUDA_VISIBLE_DEVICES"] = "-1"
    current_path = os.path.dirname(os.path.abspath(__file__))
    os.environ["LD_LIBRARY_PATH"] = f'{current_path}/../tools/gurobi/lib:{os.environ.get("LD_LIBRARY_PATH", ";")}'
    # ASTRANBuildPath = ""  # empty when Astran is unavailable.
    # !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
    ASTRANBuildPath = f"{current_path}/../tools/astran/Astran/build"

    benchmarks = ["sqrt",
                  "voter", "arbiter", "cavlc", "div",
                  "int2float", "max", "priority", "sin",
                  "square", "BoomBranchPredictor",
                  "GemminiLoopMatmul", "GemminiLoopConv", "DCache", "BoomRegisterFile", "GemminiMesh", ]
    benchmarks = ["adder", 'arbiter', 'bar', 'cavlc', "ctrl", 'dec', 'div', 'hyp', "i2c", 'int2float', 'log2', 'max', 'mem_ctrl', "multiplier", "priority", "router", 'sin', 'sqrt', "square", 'voter']

    stdType2GSCLArea = loadOrignalGSCL45nmGDS()
    topThr = 5
    ratioThr = 0.05
    cntThr = 30

    for benchmarkName in benchmarks:
        startTime = time.time()
        if (benchmarkName == "tc_008_arthmetic_sin"):
            ratioThr = 0.025

        print("=================================================================================\n",
              benchmarkName, "\n=================================================================================\n")
        # load liberty/spice/design BLIF
        subckts = loadSpiceSubcircuits(f"{current_path}/../stdCellLib/gscl45nm/cellsAstranFriendly.sp")
        BLIFGraph, cells, netlist, stdCellTypesForFeature, dataset, maxLabelIndex, clusterSeqs, clusterNum = loadDataAndPreprocess(
            libFileName=f"{current_path}/../stdCellLib/gscl45nm/gscl45nm.lib",
            blifFileName=f"{current_path}/../benchmark/blif/{benchmarkName}.blif",
            startTime=startTime)
        oriArea = getArea(cells, stdType2GSCLArea)
        print("originalArea=", oriArea)

        outputPath = f"{current_path}/outputs/{benchmarkName}/"
        os.makedirs(outputPath, exist_ok=True)

        if (ASTRANBuildPath != ""):
            for oriStdCellType in stdCellTypesForFeature:
                if (oriStdCellType.find("bool") >= 0 or oriStdCellType in ['const_0', 'const_1']):
                    continue
                if (os.path.exists(f'{current_path}/originalAstranStdCells/{oriStdCellType}.gds')):
                    continue
                runAstranForNetlist(AstranPath=ASTRANBuildPath, gurobiPath=f"{current_path}/../tools/gurobi/bin/gurobi_cl",
                                    technologyPath=f"{current_path}/../tools/astran/Astran/build/Work/tech_freePDK45.rul",
                                    spiceNetlistPath=f'{current_path}/../stdCellLib/gscl45nm/cellsAstranFriendly.sp',
                                    complexName=oriStdCellType, commandDir=f'{current_path}/originalAstranStdCells/')
        stdType2AstranArea = loadAstranGDS()
        astranArea = getArea(cells, stdType2AstranArea)
        print("astranArea=", astranArea)

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
            if (len(clusterSeqs[0].patternClusters) == 0):
                break
            if (len(clusterSeqs[0].patternClusters[0].cellIdsContained) >= 11):
                continue

            saveArea = 0
            saveGSCLArea = 0
            complexSelection = []
            for j in range(0, topThr):
                if (j >= len(clusterSeqs)):
                    break
                tmpClusterSeq = clusterSeqs[j]
                patternTraceId = tmpClusterSeq.patternClusters[0].clusterTypeId
                patternSubgraph = BLIFGraph.subgraph(tmpClusterSeq.patternClusters[0].cellIdsContained)

                if (not patternTraceId in dumpedPaterns.keys()):
                    if (len(tmpClusterSeq.patternClusters[0].cellIdsContained) >= 11):
                        continue
                    print("dealing with pattern#", patternTraceId, " with ", len(tmpClusterSeq.patternClusters), " clusters (size=", len(tmpClusterSeq.patternClusters[0].cellIdsContained), ")")

                    if (len(tmpClusterSeq.patternClusters[0].cellIdsContained) * len(tmpClusterSeq.patternClusters) < ratioThr * len(cells) and len(tmpClusterSeq.patternClusters) < cntThr):
                        print("===Warning: the pattern is too small and bypassed. pattern: [", tmpClusterSeq.patternExtensionTrace, "]",
                              len(tmpClusterSeq.patternClusters[0].cellIdsContained) * len(tmpClusterSeq.patternClusters), "<<<", len(cells))
                        break
                    dumpedPaterns[tmpClusterSeq.patternExtensionTrace] = patternTraceId
                    detectedPatterns.append(tmpClusterSeq.patternExtensionTrace)

                    drawColorfulFigureForGraphWithAttributes(patternSubgraph, save_to_file=f'{outputPath}/COMPLEX{patternTraceId}.png', withLabel=True, figsize=(20, 20))

                    # export the SPICE netlist of the complex of cells
                    exportSpiceNetlist(tmpClusterSeq, subckts, str(patternTraceId), outputPath)

                    # if ASTRAN is available, run it to get the layout and area evaluation
                    if (ASTRANBuildPath != ""):
                        if (not os.path.exists(f'{outputPath}/COMPLEX{patternTraceId}.gds')):
                            if (len(tmpClusterSeq.patternClusters[0].cellIdsContained) < 11):
                                try:
                                    runAstranForNetlist(AstranPath=ASTRANBuildPath,
                                                        gurobiPath=f"{current_path}/../tools/gurobi/bin/gurobi_cl",
                                                        technologyPath=f"{current_path}/../tools/astran/Astran/build/Work/tech_freePDK45.rul",
                                                        spiceNetlistPath=f'{outputPath}/COMPLEX{patternTraceId}.sp', complexName=f'COMPLEX{patternTraceId}', commandDir=outputPath)
                                    loadAstranArea(outputPath, f'COMPLEX{patternTraceId}')
                                except:
                                    print("WARNING :", benchmarkName, " fails!")
                                    # benchmarkFailure = True
                                    break

                if (benchmarkFailure):
                    break
                exampleCells = []
                for cellId in tmpClusterSeq.patternClusters[0].cellIdsContained:
                    exampleCells.append(cells[cellId])

                oriUnitAstranArea = getArea(exampleCells, stdType2AstranArea)
                oriUnitGSCLArea = getArea(exampleCells, stdType2GSCLArea)
                newUnitAstranArea = loadAstranArea(outputPath, f'COMPLEX{patternTraceId}')
                if (oriUnitAstranArea - newUnitAstranArea > 0):
                    complexSelection.append((f'COMPLEX{patternTraceId}', len(tmpClusterSeq.patternClusters),
                                             len(tmpClusterSeq.patternClusters[0].cellIdsContained), tmpClusterSeq.patternExtensionTrace))
                    saveArea += (oriUnitAstranArea - newUnitAstranArea) * len(tmpClusterSeq.patternClusters)
                    saveGSCLArea += (oriUnitGSCLArea - newUnitAstranArea) * len(tmpClusterSeq.patternClusters)

            if (benchmarkFailure):
                break

            print("saveArea=", saveArea, " / ", saveArea / astranArea * 100, "%")
            if (saveArea > bestSaveArea):
                bestSaveArea = saveArea
                lastSaveGSCLArea = saveGSCLArea
                lastComplexSelection = complexSelection
                fileResult = open(outputPath + "/bestRecord-" + benchmarkName, 'w')
                print(bestSaveArea, " <- compared to Astran GDS area", file=fileResult)
                print(bestSaveArea / astranArea * 100, "% <- compared to Astran GDS area", file=fileResult)
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

            assert (ratioThr > 0)
            if (len(clusterSeq.patternClusters[0].cellIdsContained) * len(clusterSeq.patternClusters) < ratioThr * len(cells)
                    and len(clusterSeq.patternClusters) < cntThr):
                break

            newSeqOfClusters, patternNum = growASeqOfClusters(BLIFGraph, clusterSeq, clusterNum, patternNum, paintPattern=True)

            # export the SPICE netlist of the complex of cells
            exportSpiceNetlist(newSeqOfClusters[0], subckts, len(clusterSeqs), outputPath)

            clusterSeqs = clusterSeqs[1:]
            clusterSeqs += newSeqOfClusters
            clusterSeqs = removeEmptySeqsAndDisableClusters(clusterSeqs)
            clusterSeqs = sortPatternClusterSeqs(clusterSeqs)

        # record total runtime
        with open(outputPath + "/bestRecord-" + benchmarkName, 'a') as fileResult:
            fileResult.write(f"\n runtime: {time.time() - startTime} (s)\n")
            
        if (benchmarkFailure):
            continue

        countedSet = set()
        recordPatternDetails = []
        detectedPatterns.reverse()
        fileResult = open(f'{outputPath}/bestRecord-seperate{benchmarkName}', 'w')
        for targetPatternTrace in detectedPatterns:
            if (targetPatternTrace in countedSet):
                continue

            BLIFGraph, cells, netlist, stdCellTypesForFeature, dataset, maxLabelIndex, clusterSeqs, clusterNum = loadDataAndPreprocess(
                libFileName=f"{current_path}/../stdCellLib/gscl45nm/gscl45nm.lib",
                blifFileName=f"{current_path}/../benchmark/blif/{benchmarkName}.blif",
                startTime=startTime, bypassInitialCluster=True)

            clusterSeqs, clusterNum = heuristicLabelSomeNodesAndGetInitialClusters_BasedOn(BLIFGraph, cells, netlist, targetPatternTrace)
            print("heuristicLabelSomeNodesAndGetInitialClusters done. time esclaped: ", time.time() - startTime)

            oriArea = getArea(cells, stdType2GSCLArea)
            print("originalArea=", oriArea)

            # outputPath = f"{current_path}/outputs/{benchmarkName}/"
            # mkdir(outputPath)

            stdType2AstranArea = loadAstranGDS()
            astranArea = getArea(cells, stdType2AstranArea)
            print("astranArea=", astranArea)

            clusterSeqs = sortPatternClusterSeqs(clusterSeqs)

            patternNum = len(clusterSeqs)
            bestSaveArea = 0
            lastSaveGSCLArea = 0
            lastComplexSelection = 0

            for i in range(0, 10):
                print("searching for ", targetPatternTrace)
                if (len(clusterSeqs[0].patternClusters) == 0):
                    break
                if (len(clusterSeqs[0].patternClusters[0].cellIdsContained) >= 11):
                    continue

                saveArea = 0
                saveGSCLArea = 0
                complexSelection = []
                touch = False
                for j in range(0, 1):
                    if (j >= len(clusterSeqs)):
                        break
                    tmpClusterSeq = clusterSeqs[j]
                    patternTraceId = dumpedPaterns[tmpClusterSeq.patternExtensionTrace]
                    patternSubgraph = BLIFGraph.subgraph(tmpClusterSeq.patternClusters[0].cellIdsContained)

                    exampleCells = []
                    for cellId in tmpClusterSeq.patternClusters[0].cellIdsContained:
                        exampleCells.append(cells[cellId])

                    complexSelection.append((f'COMPLEX{patternTraceId}', len(tmpClusterSeq.patternClusters),
                                             len(tmpClusterSeq.patternClusters[0].cellIdsContained), tmpClusterSeq.patternExtensionTrace))
                    oriUnitAstranArea = getArea(exampleCells, stdType2AstranArea)
                    oriUnitGSCLArea = getArea(exampleCells, stdType2GSCLArea)
                    newUnitAstranArea = loadAstranArea(outputPath, f'COMPLEX{patternTraceId}')
                    saveArea += (oriUnitAstranArea - newUnitAstranArea) * len(tmpClusterSeq.patternClusters)
                    saveGSCLArea += (oriUnitGSCLArea - newUnitAstranArea) * len(tmpClusterSeq.patternClusters)

                    touch = True

                print("saveArea=", saveArea, " / ", saveArea / astranArea * 100, "%")
                if (touch and (not tmpClusterSeq.patternExtensionTrace in countedSet)):

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

                    recordPatternDetails.append((bestSaveArea, bestSaveArea / astranArea * 100,
                                                 len(tmpClusterSeq.patternClusters),
                                                 len(tmpClusterSeq.patternClusters[0].cellIdsContained),
                                                 len(tmpClusterSeq.patternClusters[0].cellIdsContained) * len(tmpClusterSeq.patternClusters),
                                                 f'COMPLEX{patternTraceId}',
                                                 tmpClusterSeq.patternExtensionTrace)
                                                )
                    if (targetPatternTrace == lastComplexSelection[0][3]):
                        break

                clusterSeq = clusterSeqs[0]
                if (len(clusterSeq.patternClusters[0].cellIdsContained) * len(clusterSeq.patternClusters) < ratioThr * len(cells)
                        and len(clusterSeq.patternClusters) < cntThr):
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
            print('|', oriArea, '|', saveArea, '|', saveRatio, '|', patternCnt, '|', patternSize,
                  '|', patternCoverage, '|', patternName, '|', patternCode, '|', file=fileResult)
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
