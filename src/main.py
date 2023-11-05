import os
import time
import matplotlib
from queue import PriorityQueue

from spice import *
from Astran import *
from BLIFFSM import *
from BLIFPreProc import *
from GDSIIAnalysis import *
from liberty.parser import Group, Attribute, EscapedString

def main():
    os.environ["CUDA_VISIBLE_DEVICES"] = "-1"
    current_path = os.path.dirname(os.path.abspath(__file__))
    os.environ["LD_LIBRARY_PATH"] = f'{current_path}/../tools/gurobi/lib:{os.environ.get("LD_LIBRARY_PATH", ";")}'
    # AstranPath = ""  # empty when Astran is unavailable.
    AstranPath = f"{current_path}/../tools/astran/Astran/build/bin/Astran"
    # gurobiPath="/Library/gurobi1003/macos_universal2/bin/gurobi_cl" 
    gurobiPath=f"{current_path}/../tools/gurobi/bin/gurobi_cl"
    technologyPath=f"{current_path}/../tools/astran/Astran/build/Work/tech_freePDK45.rul"
    stdSpiceNetlistPath=f"{current_path}/../stdCelllib/cellsAstranFriendly.sp"

    # load liberty/spice
    stdType2GSCLArea = loadOrignalGSCL45nmGDS()
    subckts = loadSpiceSubcircuits(stdSpiceNetlistPath)
    stdCellLib, liberty = loadLibertyFile(f"{current_path}/../stdCelllib/gscl45nm.lib")

    benchmarks = ["sqrt",
                  "voter", "arbiter", "cavlc", "div",
                  "int2float", "max", "priority", "sin",
                  "square", "BoomBranchPredictor",
                  "GemminiLoopMatmul", "GemminiLoopConv", "DCache", "BoomRegisterFile", "GemminiMesh", ]
    # benchmarks = ["adder", "ctrl", "i2c", "multiplier", "router"]
    benchmarks = ["adder"]

    topThr = 5 # The maximum number of patterns chosen
    cntThr = 10 # # The maximum node number of each pattern
    cutsize = 4
    fliterThr = 10
    ratioThr = 0.05

    for benchmarkName in benchmarks:
        startTime = time.time()
        if (benchmarkName == "tc_008_arthmetic_sin"):
            ratioThr = 0.025

        print("=================================================================================\n",
              benchmarkName, "\n=================================================================================\n")
        
        # load spice/design BLIF
        BLIFGraph, cells, stdCellTypesForFeature, clusterTree = loadDataAndPreprocess(
            stdCellLib=stdCellLib,
            blifFileName=f"{current_path}/../benchmark/blif/{benchmarkName}.blif",
            K=cutsize,
            startTime=startTime)
        oriArea = getArea(cells, stdType2GSCLArea)
        print("originalArea=", oriArea)

        outputPath = f"{current_path}/outputs/{benchmarkName}/"
        os.makedirs(outputPath, exist_ok=True)

        # generate Astran-based cells
        if (AstranPath != ""):
            for oriStdCellType, oriStdCellFreq in stdCellTypesForFeature:
                if (oriStdCellType.find("bool") >= 0):
                    continue
                if (os.path.exists(f'{current_path}/originalAstranStdCells/{oriStdCellType}.gds')):
                    continue
                runAstranForNetlist(AstranPath=AstranPath, 
                                    gurobiPath=gurobiPath,
                                    technologyPath=technologyPath,
                                    spiceNetlistPath=stdSpiceNetlistPath,
                                    complexName=oriStdCellType, commandDir=f'{current_path}/originalAstranStdCells/')
        stdType2AstranArea = loadAstranGDS()
        astranArea = getArea(cells, stdType2AstranArea)
        print("astranArea=", astranArea)

        ########################### Load data before #############################################
        bestSaveArea = 0
        bestAstranArea = astranArea
        complexSelection = []
        recordPatternDetails = []
        blifFileName=f"{current_path}/../benchmark/blif/{benchmarkName}.blif"
        for cid in range(topThr):
            # fliter clusters and get Top-K clusters
            pattern2Coding = defaultdict(list)
            pattern2Cnt = defaultdict(lambda: [0, 0])
            for coding, codingTree in clusterTree.items():
                if len(codingTree) < 2:
                    continue
                nnode = int(coding[:coding.index('|')])
                if nnode > cntThr:  # limit the maximum node number of each cluster
                    continue
                for rootId, clusters in codingTree.items():
                    pattern2Coding[coding] += clusters
                    pattern2Cnt[coding][1] += len(clusters)  # the number of clusters
                pattern2Cnt[coding][0] = pattern2Cnt[coding][1] * nnode  # total number of nodes

            sorted_by_second = sorted(pattern2Cnt.items(), key=lambda k_v: (-k_v[1][0], -k_v[1][1]))[:fliterThr]
            print("top pattern types: ", sorted_by_second)

            # statistical Top-K cluster frequency
            clusterSeqs = PriorityQueue(topThr)
            for coding, _ in sorted_by_second:
                nnode = int(coding[:coding.index('|')])
                cur_clusters = set(pattern2Coding[coding])
                while cur_clusters and len(cur_clusters) > 1:
                    if clusterSeqs.full():
                        cur_low = clusterSeqs.get()
                        if (len(cur_clusters) * nnode, len(cur_clusters)) <= cur_low[0]:
                            clusterSeqs.put(cur_low)
                            break
                        else:
                            clusterSeqs.put(cur_low)
                    cluster1 = cur_clusters.pop()
                    new_clusters = {cluster1}
                    g1 = BLIFGraph.subgraph(cluster1.cellIdsContained)
                    for cluster2 in cur_clusters:
                        if cluster1.rootId == cluster2.rootId:
                            continue
                        g2 = BLIFGraph.subgraph(cluster2.cellIdsContained)
                        if SATMatch(g1, g2):
                            new_clusters.add(cluster2)
                    cur_clusters -= new_clusters
                    if len(new_clusters) < 2:
                        continue
                    clusterSeqs.put(((len(new_clusters) * nnode, len(new_clusters)), DesignPatternClusterSeq(coding, list(new_clusters))))

            for _ in range(topThr):
                (ntnode, ncluster), clusterSeq = clusterSeqs.get()
                nnode = ntnode // ncluster
                if (ncluster == 0 or nnode >= cntThr):
                    continue

                patternTraceId = str(cid) + '_' + ','.join(map(str, sorted(list(clusterSeq.patternClusters[0].cellIdsContained))))
                print("dealing with pattern#", patternTraceId, "with", ncluster, "clusters ( size =", nnode, ")")
                if (ntnode < ratioThr * len(cells) and ncluster < cntThr):
                    print("===Warning: the pattern is too small and bypassed. pattern: [", clusterSeq.patternExtensionTrace, "]", ntnode, "<<<", len(cells))
                    continue

                patternSubgraph = BLIFGraph.subgraph(clusterSeq.patternClusters[0].cellIdsContained)
                drawColorfulFigureForGraphWithAttributes(patternSubgraph, save_to_file=f'{outputPath}/{patternTraceId}.png', withLabel=True, figsize=(20, 20))

                # export the SPICE netlist of the complex of cells
                exportSpiceNetlist(clusterSeq, subckts, patternTraceId, outputPath)

                # if ASTRAN is available, run it to get the layout and area evaluation
                if (AstranPath != "" and not os.path.exists(f'{outputPath}/{patternTraceId}.gds')):
                    try:
                        runAstranForNetlist(AstranPath=AstranPath,
                                            gurobiPath=gurobiPath,
                                            technologyPath=technologyPath,
                                            spiceNetlistPath=f'{outputPath}/{patternTraceId}.sp', 
                                            complexName=f'{patternTraceId}', commandDir=outputPath)
                        print("\n>>> : Synthesis pattern#", patternTraceId, "successfully!")
                    except:
                        print("\n>>> : Synthesis pattern#", patternTraceId, "unsuccessfully!")
                        continue

                exampleCells = clusterSeq.patternClusters[0].cellsContained
                oriUnitAstranArea = getArea(exampleCells, stdType2AstranArea)
                newUnitAstranArea = loadAstranArea(outputPath, f'{patternTraceId}')
                if oriUnitAstranArea > newUnitAstranArea:
                    # construct a new cell
                    patternFunc, ipins, opins, IPEqu = obtainClusterFunc(patternSubgraph,cells)
                    newCell = Group('cell', [patternTraceId], [Attribute('area', newUnitAstranArea), Attribute('nnode', nnode)], [Group('pin',[ipin],[Attribute('direction', 'input')]) for ipin in ipins] + [Group('pin',[opin],[Attribute('direction', 'output'), Attribute('function', EscapedString(patternFunc[opin]))]) for opin in opins])
                    liberty.groups.append(newCell)
                    with open(f'{outputPath}/{patternTraceId}.lib', 'w') as lib_writer:
                        lib_writer.write("\n".join(writeLiberty(liberty)))
                    stdCellIPEqu[patternTraceId] = IPEqu
                    # remapping
                    if os.system(
    f'''yosys -p "read_liberty -lib {outputPath}/{patternTraceId}.lib;
    read_blif {blifFileName};
    hierarchy -auto-top;
    flatten;
    synth -auto-top;
    flatten;
    proc; fsm; opt; memory; opt;
    dfflibmap -liberty {outputPath}/{patternTraceId}.lib;
    abc  -liberty {outputPath}/{patternTraceId}.lib;
    opt;
    opt;
    clean;
    opt;
    clean;
    write_blif -impltf {outputPath}/{patternTraceId}.blif;"'''):
                        print('>>> remapping failed!')
                    else:
                        print('>>> remapping succeed!')
                        # load spice/design BLIF
                        blifFileName = F'{outputPath}/{patternTraceId}.blif'
                        BLIFGraph, cells, stdCellTypesForFeature, clusterTree = loadDataAndPreprocess(
                            stdCellLib=stdCellLib,
                            blifFileName=blifFileName,
                            K=cutsize,
                            startTime=startTime)
                        stdType2AstranArea[patternTraceId] = newUnitAstranArea
                        newAstranArea = getArea(cells, stdType2AstranArea)
                        print("astranArea=", newAstranArea)
                        if newAstranArea >= bestAstranArea:
                            print('>>> area increased after remapping!')
                            continue
                        bestAstranArea = newAstranArea
                        complexSelection.append((f'{patternTraceId}', ncluster, nnode, clusterSeq.patternExtensionTrace))
                        recordPatternDetails.append(((oriUnitAstranArea - newUnitAstranArea) * ncluster,
                                                (oriUnitAstranArea - newUnitAstranArea) * ncluster / astranArea * 100,
                                                ncluster,
                                                nnode,
                                                ntnode,
                                                f'{patternTraceId}',
                                                clusterSeq.patternExtensionTrace))
                    pass
                
        saveArea = bestAstranArea - astranArea
        print("saveArea=", saveArea, " / ", saveArea / astranArea * 100, "%")
        if (saveArea > bestSaveArea):
            bestSaveArea = saveArea
            fileResult = open(outputPath + "/bestRecord-" + benchmarkName, 'w')
            print(bestSaveArea, " <- compared to Astran GDS area", file=fileResult)
            print(bestSaveArea / astranArea * 100, "% <- compared to Astran GDS area", file=fileResult)
            print("The generated complex cells are (name, clusterNum, cellNumInOneCluster, patternCode):", file=fileResult)
            for complexName in complexSelection:
                print(complexName, file=fileResult)
            print("\n runtime:", time.time() - startTime, " (s)", file=fileResult)
            fileResult.close()
        else:
            assert(False)

        fileResult = open(f'{outputPath}/bestRecord-patterns-{benchmarkName}', 'w')
        recordPatternDetails = sorted(recordPatternDetails, key=lambda x: -x[0])
        print("| designOverallArea | saveArea | saveRatio | patternCnt | patternSize | patternCoverage | patternName | patternCode |", file=fileResult)
        for saveArea, saveRatio, patternCnt, patternSize, patternCoverage, patternName, patternCode in recordPatternDetails:
            print('|', oriArea, '|', saveArea, '|', saveRatio, '|', patternCnt, '|', patternSize,
                  '|', patternCoverage, '|', patternName, '|', patternCode, '|', file=fileResult)
        fileResult.close()


if __name__ == '__main__':
    matplotlib.use("Pdf")
    main()
