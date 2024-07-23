import os
import copy
import time
import shutil
import matplotlib
from queue import PriorityQueue

import sys

SCRIPT_DIR = os.path.dirname(os.path.abspath(__file__))
sys.path.append(os.path.join(SCRIPT_DIR, '../build/tools'))
import SynPy  # type: ignore

from spice import *
from iCell import loadiCellArea, runiCellForNetlist
from Astran import loadAstranArea, runAstranForNetlist
from BLIFFSM import *
from BLIFPreProc import *
from GDSIIAnalysis import STDCellNames, loadAstranGDS, loadiCellGDS
from liberty.parser import Group, Attribute, EscapedString


def main():
    os.environ['CUDA_VISIBLE_DEVICES'] = '-1'
    current_path = os.path.dirname(os.path.abspath(__file__))
    os.environ['LD_LIBRARY_PATH'] = f'{current_path}/../tools/gurobi/lib:' + os.environ.get('LD_LIBRARY_PATH', ';')

    # SCSynthesis = 'iCell'
    SCSynthesis = 'Astran'

    iCellPath = f'{current_path}/../tools/iCell/iCell'
    AstranPath = f'{current_path}/../tools/astran/Astran/build/bin/Astran'

    if SCSynthesis == 'Astran':
        # gurobiPath='/Library/gurobi1003/macos_universal2/bin/gurobi_cl'
        gurobiPath = f'{current_path}/../tools/gurobi/bin/gurobi_cl'
        technologyPath = f'{current_path}/../tools/astran/Astran/build/Work/tech_freePDK45.rul'
        stdSpiceNetlistPath = f'{current_path}/../stdCellLib/gscl45nm/gscl45nm.sp'
        initialLibertyPath = f'{current_path}/../stdCellLib/gscl45nm/gscl45nm.lib'
        initialGenlibPath = f'{current_path}/../stdCellLib/gscl45nm/gscl45nm.genlib'
        extendCellPath = f'{current_path}/../stdCellLib/gscl45nm/extend'
    else:
        stdSpiceNetlistPath = f'{current_path}/../stdCellLib/asap7/asap7_75t_L.sp'
        initialLibertyPath = f'{current_path}/../stdCellLib/asap7/asap7_75t_L.lib'
        initialGenlibPath = f'{current_path}/../stdCellLib/asap7/asap7_75t_L.genlib'
        extendCellPath = f'{current_path}/../stdCellLib/asap7/extend'

    # generate SCSynthesis-based cells
    if (AstranPath != '' and SCSynthesis == 'Astran') or (iCellPath != '' and SCSynthesis == 'iCell'):
        for oriStdCellType in STDCellNames:
            if oriStdCellType.find('bool') >= 0 or oriStdCellType in ['PI', 'const_0', 'const_1', 'TIEHIx1', 'TIELOx1']:
                continue
            if SCSynthesis == 'Astran' and loadAstranArea(GDSPath=f'{current_path}/originalAstranStdCells/', typeName=oriStdCellType) is False:
                runAstranForNetlist(AstranPath=AstranPath, gurobiPath=gurobiPath, technologyPath=technologyPath, spiceNetlistPath=stdSpiceNetlistPath, complexName=oriStdCellType, commandDir=f'{current_path}/originalAstranStdCells/')
            elif SCSynthesis == 'iCell' and loadiCellArea(GDSPath=f'{current_path}/originaliCellStdCells/', typeName=f'{oriStdCellType}_ASAP7_75t_L') is False:
                runiCellForNetlist(iCellPath=iCellPath, spiceNetlistPath=stdSpiceNetlistPath, complexName=f'{oriStdCellType}_ASAP7_75t_L', commandDir=f'{current_path}/originaliCellStdCells/')

    # load GDS
    stdType2Area = loadAstranGDS() if SCSynthesis == 'Astran' else loadiCellGDS()
    # load liberty
    stdCellLib, liberty, liberty_all = loadLibertyFile(initialLibertyPath)
    # load spice
    subckts = loadSpiceSubcircuits(stdSpiceNetlistPath)
    if SCSynthesis == 'iCell':
        subckts_ = {}
        for name, spsub in subckts.items():
            subckts_[name.split('_')[0]] = spsub
        subckts = subckts_
    stdType2LibArea = {}
    # update area
    for cell_group in liberty.get_groups('cell'):
        cell_name = cell_group.args[0].split('_')[0]
        for a in cell_group.attributes:
            if a.name == 'area':
                stdType2LibArea[cell_name] = a.value
                stdType2Area[cell_name] = a.value
                '''
                if cell_name in stdType2Area:
                    a.value = stdType2Area[cell_name]
                else:
                    stdType2Area[cell_name] = a.value
                '''
                break
    # initial .genlib
    writeGenlib(liberty, initialGenlibPath)
    # load extended cell library
    extendCellLib = loadExtendCells(extendCellPath)

    # benchmarks and parameters
    benchmarks = ['sqrt', 'voter', 'arbiter', 'cavlc', 'div', 'int2float', 'max', 'priority', 'sin', 'square', 'BoomBranchPredictor', 'GemminiLoopMatmul', 'GemminiLoopConv', 'DCache', 'BoomRegisterFile', 'GemminiMesh']
    benchmarks = ['adder', 'arbiter', 'bar', 'cavlc', 'ctrl', 'dec', 'div', 'hyp', 'i2c', 'int2float', 'log2', 'max', 'mem_ctrl', 'multiplier', 'priority', 'router', 'sin', 'sqrt', 'square', 'voter']
    topThr = 5  # The maximum number of patterns chosen
    cntThr = 5  # # The maximum node number of each pattern
    cutsize = 3
    ratioThr = 0.01

    recover_stdCellLib, recover_liberty = copy.deepcopy(stdCellLib), copy.deepcopy(liberty)
    for benchmarkName in benchmarks:
        print('=================================================================================\n', benchmarkName, '\n=================================================================================\n')
        outputPath = f'{current_path}/../outputs/{SCSynthesis}/K{cutsize}/{benchmarkName}/'
        os.makedirs(outputPath, exist_ok=True)
        # copy library
        stdCellLib, liberty = copy.deepcopy(recover_stdCellLib), copy.deepcopy(recover_liberty)
        # mapping
        blifFileName = f'{outputPath}/{benchmarkName}.blif'
        if not os.path.exists(blifFileName):
            with open(f'{outputPath}/{benchmarkName}.lib', 'w', encoding='utf-8') as lib_writer:
                lib_writer.write('\n'.join(writeLiberty(liberty)))
            initialRes = SynPy.synthesis(f'{current_path}/../benchmark/aig/{benchmarkName}.aig', initialGenlibPath, f'{outputPath}/{benchmarkName}.lib', blifFileName)
            if initialRes[0] == -1:
                # fmt: off
                """ 
            if os.system(
f'''yosys -p "read_liberty -lib {outputPath}/{benchmarkName}.lib;
read_verilog {current_path}/../benchmark/aig/{benchmarkName}.v;
hierarchy -auto-top;
flatten;
synth -auto-top;
flatten;
proc; fsm; opt; memory; opt;
dfflibmap -liberty {outputPath}/{benchmarkName}.lib;
abc -liberty {outputPath}/{benchmarkName}.lib;
opt;
opt;
clean;
opt;
clean;
write_blif -impltf {blifFileName};
stat -liberty {outputPath}/{benchmarkName}.lib;"'''):
                """
                # fmt: on
                print('>>> mapping failed!')
                continue
            else:
                print('>>> mapping succeed!')

        total_resyn_time = 0
        startTime = time.time()
        # load spice/design BLIF
        BLIFGraph, cells, stdCellTypesForFeature, clusterTree = loadDataAndPreprocess(stdCellLib=stdCellLib, blifFileName=blifFileName, K=cutsize, startTime=startTime)
        oriArea = getArea(cells, stdType2LibArea)
        print('originalArea=', oriArea)
        sccArea = getArea(cells, stdType2Area)
        print(f'initial {SCSynthesis}Area=', sccArea)

        ########################### Load data before #############################################
        bestSaveArea = 0
        bestSCCArea = sccArea
        complexSelection = []
        recordPatternDetails = []
        patternFuncs = set([','.join(list(x.outputFuncMap.values())) for name, x in stdCellLib.items() if name != "PI"])
        for cid in range(topThr):
            # fliter clusters and get Top-K clusters
            pattern2Coding = {}
            pattern2Cnt = {}
            for coding, codingTree in clusterTree.items():
                if len(codingTree) < 2:
                    continue
                nnode = int(coding[: coding.index('|')])
                if nnode > cntThr:  # limit the maximum node number of each cluster
                    continue
                for rootId, clusters in codingTree.items():
                    pattern2Coding.setdefault(coding, []).extend(clusters)
                    pattern2Cnt.setdefault(coding, [0, 0])[1] += len(clusters)  # the number of clusters
                pattern2Cnt[coding][0] = pattern2Cnt[coding][1] * nnode  # total number of nodes

            sorted_by_second = sorted(pattern2Cnt.items(), key=lambda k_v: (-k_v[1][0], -k_v[1][1]))
            # print('top pattern types: ', sorted_by_second)

            # statistical Top-K cluster frequency
            clusterSeqs = PriorityQueue()
            for coding, _ in sorted_by_second:
                nnode = int(coding[: coding.index('|')])
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
                    for cluster2 in cur_clusters:
                        if cluster1.rootId == cluster2.rootId:
                            continue
                        if SATMatch(cluster1.graph, cluster2.graph):
                            new_clusters.add(cluster2)
                    cur_clusters -= new_clusters
                    if len(new_clusters) < 2:
                        continue
                    clusterSeqs.put(((len(new_clusters), nnode), DesignPatternClusterSeq(coding, list(new_clusters))))

            candidates = []
            while not clusterSeqs.empty():
                candidates.append(clusterSeqs.get())

            for (ncluster, nnode), clusterSeq in reversed(candidates):
                ntnode = nnode * ncluster
                if ncluster <= 1 or nnode >= cntThr or ntnode < BLIFGraph.number_of_nodes() * ratioThr:
                    continue
                cindex = 0
                if SCSynthesis == 'Astran' and benchmarkName in ['int2float', 'multiplier', 'sin', 'voter']:
                    cindex = 1
                patternTraceId = benchmarkName.upper() + '_G' + str(cid) + '_' + '_'.join(map(str, sorted(list(clusterSeq.patternClusters[cindex].cellIdsContained))))  # type: ignore
                print('dealing with pattern#', patternTraceId, 'with', ncluster, 'clusters ( size =', nnode, ')')
                patternSubgraph = clusterSeq.patternClusters[cindex].graph
                # construct the cluster's function
                patternFunc, ipins, opins, IPEqu = obtainClusterFunc(patternSubgraph, cells)
                assert len(ipins) <= cutsize
                patternFunText = ''
                for opin, func in patternFunc.items():
                    patternFunText += f'{func},'.replace(' ', '')
                patternFunText = patternFunText[:-1]

                flag = False
                # check if current pattern has been used
                if patternFunText not in patternFuncs:
                    pfunc = None
                    if len(patternFunc) == 1:
                        pfunc = next((x for x in patternFuncs if bool_map(func, x)), None)
                    patternFuncs.add(patternFunText)
                    if pfunc:
                        flag = True
                else:
                    flag = True
                if flag:
                    continue

                flag = False
                # check if current pattern exists in pre-defined extened cell library
                if patternFunText not in extendCellLib:
                    pfunc = None
                    if len(patternFunc) == 1:
                        pfunc = next((x for x, xfun in extendCellLib.items() if xfun and bool_map(func, next(iter(xfun.outputFuncMap.values())))), None)
                    if pfunc:
                        flag = True
                        # need to change function
                else:
                    flag = True
                if flag:
                    if not pfunc:
                        pfunc = patternFunText
                    extCell = extendCellLib[pfunc]
                    if extCell.nnode <= nnode or patternFunText in ['~A|~B|~C']:
                        nnode = extCell.nnode
                        shutil.copy(f'{extendCellPath}/{pfunc};{nnode}.{SCSynthesis}log', f'{outputPath}/{patternTraceId}.{SCSynthesis}log')
                    else:
                        flag = False
                        extendCellLib.pop(pfunc)
                        # os.remove(f'{extendCellPath}/{pfunc};{extCell.nnode}.{SCSynthesis}log')
                        # os.remove(f'{extendCellPath}/{pfunc};{extCell.nnode}.png')
                        # os.remove(f'{extendCellPath}/{pfunc};{extCell.nnode}.run')
                        # os.remove(f'{extendCellPath}/{pfunc};{extCell.nnode}.sp')

                # draw a schemaitc of this pattern
                drawColorfulFigureForGraphWithAttributes(patternSubgraph, save_to_file=f'{outputPath}/{patternTraceId}.png', withLabel=True, figsize=(20, 20))
                # export the SPICE netlist of the complex of cells
                if flag and len(patternFunc) == 1:
                    extendCellSpices = loadSpiceSubcircuits(f'{extendCellPath}/{pfunc};{nnode}.sp')
                    extendCellSpice = next(iter(extendCellSpices.values()))
                    pin_map = bool_map(next(iter(extCell.outputFuncMap.values())), func)
                    exportSpiceNetlistByCopy(clusterSeq, extendCellSpice, patternTraceId, nnode, pin_map[1], ipins, opins, patternFunText, outputPath=f'{outputPath}/{patternTraceId}.sp', cindex=cindex)
                else:
                    exportSpiceNetlist(clusterSeq, subckts, patternTraceId, ipins, opins, patternFunText, outputPath=f'{outputPath}/{patternTraceId}.sp', cindex=cindex)
                # if SC synthesizer is available, run it to get the layout and area evaluation
                if (AstranPath != '' and SCSynthesis == 'Astran') or (iCellPath != '' and SCSynthesis == 'iCell'):
                    try:
                        res = True
                        if SCSynthesis == 'Astran' and loadAstranArea(outputPath, patternTraceId) is False:
                            res = runAstranForNetlist(AstranPath=AstranPath, gurobiPath=gurobiPath, technologyPath=technologyPath, spiceNetlistPath=f'{outputPath}/{patternTraceId}.sp', complexName=patternTraceId, commandDir=outputPath)
                        elif SCSynthesis == 'iCell':
                            if not os.path.exists(os.path.join(outputPath, f'{patternTraceId}.{SCSynthesis}log')):
                                res = runiCellForNetlist(iCellPath=iCellPath, spiceNetlistPath=f'{outputPath}/{patternTraceId}.sp', complexName=patternTraceId, commandDir=outputPath)
                            elif loadiCellArea(outputPath, patternTraceId) is False:
                                print('>>> : Synthesis pattern#', patternTraceId, 'unsuccessfully!\n')
                                continue
                        if res:
                            print('>>> : Synthesis pattern#', patternTraceId, 'successfully!\n')
                            if flag is False:
                                shutil.copy(f'{outputPath}/{patternTraceId}.{SCSynthesis}log', f'{extendCellPath}/{patternFunText};{nnode}.{SCSynthesis}log')
                                shutil.copy(f'{outputPath}/{patternTraceId}.png', f'{extendCellPath}/{patternFunText};{nnode}.png')
                                shutil.copy(f'{outputPath}/{patternTraceId}.run', f'{extendCellPath}/{patternFunText};{nnode}.run')
                                shutil.copy(f'{outputPath}/{patternTraceId}.sp', f'{extendCellPath}/{patternFunText};{nnode}.sp')
                                extendCellLib[patternFunText] = loadExtendCell(extendCellPath, f'{patternFunText};{nnode}.sp')
                        else:
                            print('>>> : Synthesis pattern#', patternTraceId, 'unsuccessfully!\n')
                            continue
                    except:
                        print('>>> : Synthesis pattern#', patternTraceId, 'unsuccessfully!\n')
                        continue

                exampleCells = clusterSeq.patternClusters[cindex].cellsContained
                oriCellArea = getArea(exampleCells, stdType2Area)
                newCellArea = loadAstranArea(outputPath, patternTraceId) if SCSynthesis == 'Astran' else loadiCellArea(outputPath, patternTraceId)
                if not newCellArea or newCellArea <= 0:
                    print('>>> : New pattern#', patternTraceId, 'has more area!\n')
                    continue
                if oriCellArea > newCellArea:
                    # construct a new cell
                    newCell = Group('cell', [patternTraceId], [Attribute('area', newCellArea), Attribute('nnode', nnode)], [Group('pin', [ipin], [Attribute('direction', 'input')]) for ipin in ipins.values()] + [Group('pin', [opin], [Attribute('direction', 'output'), Attribute('function', EscapedString(str(patternFunc[opin]).replace(' ', '').replace('&', '*').replace('|', '+').replace('~', '!')))]) for opin in opins.values()])  # type: ignore
                    liberty.groups.append(newCell)
                    with open(f'{outputPath}/{patternTraceId}.lib', 'w', encoding='utf-8') as lib_writer:
                        lib_writer.write('\n'.join(writeLiberty(liberty)))
                    stdCellIPEqu[patternTraceId] = IPEqu
                    # remapping
                    writeGenlib(liberty, f'{outputPath}/{patternTraceId}.genlib')
                    initialRes = SynPy.synthesis(f'{current_path}/../benchmark/aig/{benchmarkName}.aig', f'{outputPath}/{patternTraceId}.genlib', f'{outputPath}/{patternTraceId}.lib', f'{outputPath}/{patternTraceId}.blif')
                    total_resyn_time += initialRes[1]
                    if initialRes[0] == -1:
                        # fmt: off
                        """
                    if os.system(
    f'''yosys -p "read_liberty -lib {outputPath}/{patternTraceId}.lib;
    read_blif {blifFileName};
    hierarchy -auto-top;
    flatten;
    synth -auto-top;
    flatten;
    proc; fsm; opt; memory; opt;
    dfflibmap -liberty {outputPath}/{patternTraceId}.lib;
    abc -liberty {outputPath}/{patternTraceId}.lib;
    opt;
    opt;
    clean;
    opt;
    clean;
    write_blif -impltf {outputPath}/{patternTraceId}.blif;
    stat -liberty {outputPath}/{patternTraceId}.lib;"'''):
                        """
                        # fmt: on
                        print('>>> remapping failed!')
                        liberty.groups.pop()
                        del stdCellIPEqu[patternTraceId]
                    else:
                        print('>>> remapping succeed!')
                        newCell = StdCellType(patternTraceId, nnode)
                        for ipin in ipins.values():
                            newCell.addPin(ipin, 'input')
                        for opin in opins.values():
                            newCell.addPin(opin, 'output', str(patternFunc[opin]).replace(' ', ''))
                        stdCellLib[patternTraceId] = newCell
                        # load spice/design BLIF
                        BLIFGraph_, cells_, stdCellTypesForFeature_, clusterTree_ = loadDataAndPreprocess(stdCellLib=stdCellLib, blifFileName=F'{outputPath}/{patternTraceId}.blif', K=cutsize, startTime=startTime)
                        stdType2Area[patternTraceId] = newCellArea
                        newSCCArea = getArea(cells_, stdType2Area)
                        print(f'current {SCSynthesis}Area=', newSCCArea)
                        if newSCCArea >= bestSCCArea:
                            print('>>> area increased after remapping!\n')
                            liberty.groups.pop()
                            del stdCellIPEqu[patternTraceId]
                            del stdCellLib[patternTraceId]
                            del stdType2Area[patternTraceId]
                            continue
                        else:
                            print(f'>>> choose the cluster {patternTraceId}!\n')
                        BLIFGraph, cells, stdCellTypesForFeature, clusterTree = BLIFGraph_, cells_, stdCellTypesForFeature_, clusterTree_
                        subckts.update(loadSpiceSubcircuits(f'{outputPath}/{patternTraceId}.sp'))
                        blifFileName = F'{outputPath}/{patternTraceId}.blif'
                        bestSCCArea = newSCCArea
                        complexSelection.append([patternTraceId, ncluster, nnode, clusterSeq.patternExtensionTrace])
                        recordPatternDetails.append(((oriCellArea - newCellArea) * ncluster, (oriCellArea - newCellArea) * ncluster / sccArea * 100, ncluster, nnode, ntnode, patternTraceId, clusterSeq.patternExtensionTrace))
                        break
                else:
                    print('>>> there is no area improvement for new pattern!')

        saveArea = sccArea - bestSCCArea
        print('saveArea=', saveArea, ' / ', saveArea / sccArea * 100, '%')
        if saveArea > bestSaveArea:
            bestSaveArea = saveArea
            fileResult = open(f'{outputPath}/bestRecord-{benchmarkName}', 'w', encoding='utf-8')
            print(bestSaveArea, f' <- compared to {SCSynthesis} GDS area', file=fileResult)
            print(bestSaveArea / sccArea * 100, f'% <- compared to {SCSynthesis} GDS area', file=fileResult)
            print(oriArea - bestSCCArea, ' <- compared to GSCL GDS area', file=fileResult)
            print((oriArea - bestSCCArea) / sccArea * 100, '% <- compared to GSCL GDS area', file=fileResult)
            print('The generated complex cells are (name, clusterNum, cellNumInOneCluster, patternCode):', file=fileResult)
            cell_name_num = {x[0]: x[1] for x in stdCellTypesForFeature}
            totalClusterCellNum = 0
            eachClusterNum = []
            totalCellNum = sum(stdCellLib[x[0]].nnode * x[1] for x in stdCellTypesForFeature)
            for complexName in complexSelection:
                complexName[1] = cell_name_num.get(complexName[0], 0)
                if complexName[1] > 0:
                    eachClusterNum.append(str(complexName[2]))
                    totalClusterCellNum += complexName[1] * complexName[2]
                    print(complexName, file=fileResult)
            print('Pattern Sizes: ', '/'.join(eachClusterNum), file=fileResult)
            print(f'Pattern Cov.: {totalClusterCellNum}/{totalCellNum}={totalClusterCellNum / totalCellNum}', file=fileResult)
            print('\nruntime:', time.time() - startTime - total_resyn_time, ' (s)', file=fileResult)
            fileResult.close()
        else:
            print('There is no improvement for', benchmarkName)

        fileResult = open(f'{outputPath}/bestRecord-patterns-{benchmarkName}', 'w', encoding='utf-8')
        recordPatternDetails = sorted(recordPatternDetails, key=lambda x: -x[0])
        print('| designOverallArea | saveArea | saveRatio | patternCnt | patternSize | patternCoverage | patternName | patternCode |', file=fileResult)
        for saveArea, saveRatio, patternCnt, patternSize, patternCoverage, patternName, patternCode in recordPatternDetails:
            print('|', oriArea, '|', saveArea, '|', saveRatio, '|', patternCnt, '|', patternSize, '|', patternCoverage, '|', patternName, '|', patternCode, '|', file=fileResult)
        fileResult.close()


if __name__ == '__main__':
    matplotlib.use('Pdf')
    main()
