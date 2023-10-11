from numpy import record
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
    benchmarks = ["adder", "ctrl", "i2c", "multiplier", "router"]

    stdType2GSCLArea = loadOrignalGSCL45nmGDS()
    topThr = 5
    ratioThr = 0.05
    cntThr = 30
    # benchmarks = ["tc_008_arthmetic_sin"]
    # ratioThr = -1
    # cntThr = -1

    for benchmarkName in benchmarks:
        startTime = time.time()
        ratioThr = 0.05
        cntThr = 30
        if (benchmarkName == "tc_008_arthmetic_sin"):
            ratioThr = 0.025

        print("=================================================================================\n",
              benchmarkName, "\n=================================================================================\n")
        # load liberty/spice/design BLIF
        subckts = loadSpiceSubcircuits(f"{current_path}/../stdCelllib/cellsAstranFriendly.sp")
        BLIFGraph, cells, netlist, stdCellTypesForFeature, dataset, maxLabelIndex, clusterSeqs, clusterNum = loadDataAndPreprocess(
            libFileName=f"{current_path}/../stdCelllib/gscl45nm.lib", blifFileName=f"{current_path}/../benchmark/blif/{benchmarkName}.blif", startTime=startTime)
        oriArea = getArea(cells, stdType2GSCLArea)
        print("originalArea=", oriArea)

        outputPath = f"{current_path}/outputs/{benchmarkName}/"
        mkdir(outputPath)

        if (ASTRANBuildPath != ""):
            for oriStdCellType in stdCellTypesForFeature:
                if (oriStdCellType.find("bool") >= 0):
                    continue
                if (os.path.exists(f'{current_path}/originalAstranStdCells/{oriStdCellType}.gds')):
                    continue
                runAstranForNetlist(AstranPath=ASTRANBuildPath, gurobiPath=f"{current_path}/../tools/gurobi/bin/gurobi_cl",
                                    technologyPath=f"{current_path}/../tools/astran/Astran/build/Work/tech_freePDK45.rul",
                                    spiceNetlistPath=f'{current_path}/../stdCelllib/cellsAstranFriendly.sp',
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
        failImproveCnt = 0
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
                patternSubgraph = BLIFGraph.subgraph(
                    tmpClusterSeq.patternClusters[0].cellIdsContained)

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
                                    runAstranForNetlist(AstranPath=ASTRANBuildPath, gurobiPath=f"{current_path}/../tools/gurobi/bin/gurobi_cl",
                                                        technologyPath=f"{current_path}/../tools/astran/Astran/build/Work/tech_freePDK45.rul",
                                                        spiceNetlistPath=f'{outputPath}/COMPLEX{patternTraceId}.sp', complexName=f'COMPLEX{patternTraceId}', commandDir=outputPath)
                                    loadAstranArea(outputPath, f'COMPLEX{patternTraceId}')
                                except:
                                    print("WARNING :", benchmarkName, " fails!")
                                    benchmarkFailure = True

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
                for complexName in lastComplexSelection:
                    print(complexName, file=fileResult)
                print("\n runtime:", time.time() - startTime, " (s)", file=fileResult)
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
                libFileName=f"{current_path}/../stdCelllib/gscl45nm.lib", blifFileName=f"{current_path}/../benchmark/blif/{benchmarkName}.blif", startTime=startTime, bypassInitialCluster=True)

            clusterSeqs, clusterNum = heuristicLabelSomeNodesAndGetInitialClusters_BasedOn(
                BLIFGraph, cells, netlist, targetPatternTrace)
            endTime = time.time()
            print("heuristicLabelSomeNodesAndGetInitialClusters done. time esclaped: ", endTime - startTime)

            oriArea = getArea(cells, stdType2GSCLArea)
            print("originalArea=", oriArea)

            outputPath = f"{current_path}/outputs/{benchmarkName}/"
            mkdir(outputPath)

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
            print('|', oriArea, '|', saveArea, '|', saveRatio, '|', patternCnt, '|', patternSize, '|',
                  patternCoverage, '|', patternName, '|', patternCode, '|', file=fileResult)
        fileResult.close()


if __name__ == '__main__':
    matplotlib.use("Pdf")
    main()
