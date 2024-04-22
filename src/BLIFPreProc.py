import blifparser.blifparser as blifparser
import networkx as nx
import numpy as np
import copy
import time
import os
import re
from typing import Any, Dict, List, Set
from functools import reduce
from itertools import product, chain
from liberty.parser import parse_liberty, Group, EscapedString

from BLIFGraphUtil import *


bypassTypes = ('DFF', 'bool')


def softmax(x):
    """Compute softmax values for each sets of scores in x."""
    e_x = np.exp(x - np.max(x))
    return e_x / e_x.sum()


def kcuts(BLIFGraph: nx.DiGraph, n, k, computed: Dict[Any, List[Set]] = None) -> List[Set]:  # type: ignore
    """
    Generate k-cuts.

    Parameters
    ----------
    n : str
            Node to compute cuts for.
    k : int
            Maximum cut width.

    Returns
    -------
    iter of str
            k-cuts.

    """
    if computed is None:
        computed = {}

    if n in computed:
        return computed[n]

    # helper function
    def merge_cut_sets(a_cuts, b_cuts):
        merged_cuts = []
        for a_cut, b_cut in product(a_cuts, b_cuts):
            merged_cut = a_cut | b_cut
            if len(merged_cut) <= k:
                merged_cuts.append(merged_cut)
        return merged_cuts

    pres = set(BLIFGraph.predecessors(n))
    if pres:
        fanin_cut_sets = [kcuts(BLIFGraph, f, k, computed) for f in pres]
        cuts = reduce(merge_cut_sets, fanin_cut_sets) + [{n}]
    else:
        cuts = [{n}]

    # add cuts
    computed[n] = cuts
    return cuts


def kcuts_PIs_POs(BLIFGraph: nx.DiGraph, k) -> Dict[Any, List[Set]]:  # type: ignore
    """
    Generate all k-cuts from PIs to POs.

    Parameters
    ----------
    k : int
            Maximum cut width.

    Returns
    -------
    iter of str
            k-cuts.

    """
    computed: Dict[Any, List[Set]] = {}

    # helper function
    def merge_cut_sets(a_cuts, b_cuts):
        merged_cuts = []
        for a_cut, b_cut in product(a_cuts, b_cuts):
            merged_cut = a_cut | b_cut
            if len(merged_cut) <= k:
                merged_cuts.append(merged_cut)
        return merged_cuts

    for n in nx.topological_sort(BLIFGraph):
        pres = set(BLIFGraph.predecessors(n))
        if pres:
            fanin_cut_sets = [computed[f] for f in pres]
            cuts = reduce(merge_cut_sets, fanin_cut_sets) + [{n}]
        else:
            cuts = [{n}]
        # add cuts
        computed[n] = cuts
    return computed


def kcuts_kcones_PIs_POs(BLIFGraph: nx.DiGraph, k) -> tuple[Dict[Any, List[Set]], Dict[str, Set[int]]]:  # type: ignore
    """
    Generate all k-cuts from PIs to POs.

    Parameters
    ----------
    k : int
            Maximum cut width.

    Returns
    -------
    iter of str
            k-cuts.

    """
    computed: Dict[Any, List[Set]] = {}
    all_cones: Dict[str, Set[int]] = {}

    for n in nx.topological_sort(BLIFGraph):
        it = BLIFGraph.predecessors(n)
        pre = next(it, None)
        if pre is not None:
            cuts = copy.deepcopy(computed[pre])
            partial_cones: Dict[str, Set[int]] = {}
            for a_cut in cuts:
                la = ','.join(map(str, sorted(a_cut | {pre})))
                lc = ','.join(map(str, sorted(a_cut | {n})))
                partial_cones[lc] = all_cones[la] | {n, pre}
            for pre2 in it:
                merged_cuts = []
                cuts2 = copy.deepcopy(computed[pre2])
                for a_cut, b_cut in product(cuts, cuts2):
                    merged_cut = a_cut | b_cut
                    if len(merged_cut) <= k:
                        merged_cuts.append(merged_cut)
                        la = ','.join(map(str, sorted(a_cut | {n})))
                        lb = ','.join(map(str, sorted(b_cut | {pre2})))
                        lc = ','.join(map(str, sorted(merged_cut | {n})))
                        partial_cones[lc] = partial_cones[la] | all_cones[lb] | {pre, pre2}
                cuts = merged_cuts
                pre = pre2
            for a_cut in cuts:
                lc = ','.join(map(str, sorted(a_cut | {n})))
                all_cones[lc] = partial_cones[lc]
            cuts += [{n}]
        else:
            cuts = [{n}]
        # add cuts
        computed[n] = cuts
        all_cones[str(n)] = {n}
    return computed, all_cones


def calculate_longest_distances(G: nx.DiGraph) -> List[int]:
    n = G.number_of_nodes()
    dist: List[int] = [n for i in range(n)]
    for u in nx.topological_sort(G):
        for v in G.successors(u):
            if dist[v] > dist[u] + 1:
                dist[v] = dist[u] + 1
    return dist


def ancestors(G: nx.DiGraph, target, sources: Set[int] = None, include_self=True) -> Set:
    """Returns all nodes having a path to `target` in `G`.

    Parameters
    ----------
    G : NetworkX DiGraph
        A directed graph
    sources : nods in `G`
    target  : node in `G`
    include_self : whether the return contains the target

    Returns
    -------
    set()
        The ancestors of target in G
    """

    def dfs(cur, sources: Set[int] = None, dist: List[int] = None, min_depth: int = None, computed: Dict[Any, List] = None) -> Set:  # type: ignore
        if computed is None:
            computed = {}

        if cur in computed:
            return computed[cur]  # type: ignore

        curPred = set()
        for pred in G.predecessors(cur):
            if dist and min_depth is not None and dist[pred] < min_depth:
                continue
            if sources and pred in sources:
                curPred.add(pred)
            else:
                tmp = dfs(pred, sources, dist, min_depth, computed)
                if tmp:
                    curPred |= tmp
                if not sources or tmp:
                    curPred.add(pred)
        computed[cur] = curPred  # type: ignore
        return curPred

    if not G.has_node(target):
        raise nx.NetworkXError(f'The node {target} is not in the graph.')
    if sources:
        for s in sources:
            if not G.has_node(s):
                raise nx.NetworkXError(f'The node {s} is not in the graph.')
        dist: List[int] = calculate_longest_distances(G)
        min_depth: int = min(sources, key=lambda v: dist[v])

    anc = dfs(target, set(sources), dist, min_depth)  # type: ignore

    unvisited = sources - anc  # type: ignore
    if unvisited:
        for tar in sources:  # type: ignore
            tmp = dfs(tar, unvisited, dist, min_depth)
            unvisited -= tmp
            anc |= tmp
            if not unvisited:
                break

    return anc | {target} if include_self else anc


def writeLiberty(liberty: Group, indent: str = ' ' * 2) -> List[str]:
    """
    Create the liberty file format line by line.
    :return: A list of lines.
    """

    def format_value(v) -> str:
        return str(v)

    define_lines = []
    for d in liberty.defines:
        define_lines.append(f'{d};')

    sub_group_lines = [writeLiberty(g, indent=indent) for g in liberty.groups]

    attr_lines = []
    for attr in liberty.attributes:
        attr_name, attr_value = attr.name, attr.value
        if isinstance(attr_value, list):
            # Complex attribute
            formatted = [format_value(x) for x in attr_value]

            if any((isinstance(x, EscapedString) for x in attr_value)):
                attr_lines.append(f'{attr_name} (\\')
                for i, l in enumerate(formatted):
                    if i < len(formatted) - 1:
                        end = ", \\"
                    else:
                        end = "\\"
                    attr_lines.append(indent + l + end)
                attr_lines.append(");")
            else:
                values = f'({", ".join(formatted)})'
                attr_lines.append(f'{attr_name} {values};')
        else:
            # Simple attribute
            values = format_value(attr_value)
            attr_lines.append(f"{attr_name}: {values};")

    lines = [f'{liberty.group_name} ({", ".join([format_value(f) for f in liberty.args])}) {{']
    for l in chain(define_lines, attr_lines, *sub_group_lines):
        lines.append(indent + l)
    lines.append("}")

    return lines


def loadLibertyFile(fileName) -> tuple[Dict[str, StdCellType], Group, Group]:
    # Read and parse a liberty.
    liberty = parse_liberty(open(fileName, encoding='utf-8').read())
    liberty_used = Group('library', ['basic'], copy.deepcopy(liberty.attributes), [], copy.deepcopy(liberty.defines))

    # Loop through all cells.
    stdCellLib = {"PI": StdCellType("PI", 0)}
    stdCellLib["PI"].addPin("Y", "output")
    flag_0 = True
    flag_1 = True
    for cell_group in liberty.groups:
        if cell_group.group_name != 'cell':
            liberty_used.groups.append(copy.deepcopy(cell_group))
            continue
        name = cell_group.args[0].split('_')[0]
        if name not in stdCellIPEqu:
            continue
        used = copy.deepcopy(cell_group)
        used.args[0] = name
        liberty_used.groups.append(used)

        newStdCellType = StdCellType(name, cell_group.get_attribute(key="nnode", default=1))
        # Loop through all pins of the cell.
        for pin_group in cell_group.get_groups("pin"):
            pin_name = pin_group.args[0]
            func = pin_group.get_attribute(key="function", default=None)
            if func:
                if func.value == '1':
                    flag_1 = False
                elif func.value == '0':
                    flag_0 = False
                func = re.sub(' +', ' ', func.value.strip())  # combine multiple spaces into one
                if ' ' in func:
                    if any(x in func for x in ['*', '+']):
                        func = func.replace(' ', '')
                    else:
                        func = func.replace(' ', '&')
                func = func.replace('*', '&').replace('+', '|').replace('!', '~')
            newStdCellType.addPin(pin_name, pin_group["direction"], func)
        stdCellLib[name] = newStdCellType

    if flag_0:
        stdCellLib['const_0'] = StdCellType("const_0", 0)
        stdCellLib["const_0"].addPin("q", "output", "0")
    if flag_1:
        stdCellLib['const_1'] = StdCellType("const_1", 0)
        stdCellLib["const_1"].addPin("q", "output", "1")

    return stdCellLib, liberty_used, liberty


def loadBoolGateFromBLIF(blif, stdCellLib) -> None:
    for boolFunc in blif.booleanfunctions:
        truthTableStr = "bool-" + str(boolFunc.truthtable)
        if not truthTableStr in stdCellLib.keys():
            newStdCellType = StdCellType(truthTableStr)
            for i in range(0, len(boolFunc.v_params) - 1):
                newStdCellType.addPin("IN" + str(i), "input")
            newStdCellType.addPin("OUT0", "output", boolFunc.v_params[0])
            stdCellLib[truthTableStr] = newStdCellType


def genGraphFromLibertyAndBLIF(stdCellLib: Dict[str, StdCellType], blifFileName: str, K: int = 4) -> tuple[nx.DiGraph, List[DesignCell], List[tuple], Dict[Any, List[Set]], Dict[str, Set[int]]]:
    # get the file path and pass it to the parser
    filepath = os.path.abspath(blifFileName)
    parser = blifparser.BlifParser(filepath)

    # get the object that contains the parsed data from the parser
    blif = parser.blif
    loadBoolGateFromBLIF(blif, stdCellLib)

    # get the dictionary with the number of occurrencies of each keyword
    print(blif.nkeywords, "\n")

    cellName2Obj = {}
    cells = []
    idCnt = 0
    for tmpCircuit in blif.subcircuits:
        refType = tmpCircuit.modelname
        if refType in stdCellLib:
            name = str(tmpCircuit)
            curCell = DesignCell(idCnt, name, stdCellLib[refType])
            idCnt += 1
            for pin in tmpCircuit.params:
                pinInfo = pin.split("=")
                curCell.addCellPin(pinInfo[0], pinInfo[1])
            cellName2Obj[name] = curCell
            cells.append(curCell)
        else:
            print(refType, " is not in liberty file.")
            assert False
    for pi in blif.inputs.inputs:  # type: ignore
        curPI = DesignCell(idCnt, pi, stdCellLib["PI"])
        curPI.addCellPin("Y", pi)
        cells.append(curPI)
        idCnt += 1

    for logicGate in blif.booleanfunctions:
        refType = "bool-" + str(logicGate.truthtable)
        if refType in stdCellLib.keys():
            name = str(logicGate)
            curCell = DesignCell(idCnt, name, stdCellLib[refType])
            idCnt += 1
            if len(logicGate.v_params) > 1:
                for pinId, pin in enumerate(logicGate.v_params[:-1]):
                    curCell.addCellPin("IN" + str(pinId), pin)
            curCell.addCellPin("OUT", logicGate.v_params[-1])
            cellName2Obj[name] = curCell
            cells.append(curCell)
        else:
            print(refType, " is not in liberty file.")
            assert False

    stdCellType2Cells = {}
    netName2Obj = {}
    nets = []
    idCnt = 0
    for designCell in cells:
        stdCellType2Cells.setdefault(designCell.stdCellType.typeName, []).append(designCell)
        for refPin, inputNet in zip(designCell.inputPinRefNames, designCell.inputNetNames):
            if not (inputNet in netName2Obj):
                curNet = DesignNet(idCnt, inputNet)
                idCnt += 1
                netName2Obj[inputNet] = curNet
                nets.append(curNet)
            else:
                curNet = netName2Obj[inputNet]
            designCell.addInputNet(curNet)
            curNet.addPin(refPin, designCell, True)
        for refPin, outputNet in zip(designCell.outputPinRefNames, designCell.outputNetNames):
            if not (outputNet in netName2Obj):
                curNet = DesignNet(idCnt, outputNet)
                idCnt += 1
                netName2Obj[outputNet] = curNet
                nets.append(curNet)
            else:
                curNet = netName2Obj[outputNet]
            designCell.addOutputNet(curNet)
            curNet.addPin(refPin, designCell, False)

    stdCellType2Cnt = []
    for ctype, ccells in stdCellType2Cells.items():
        stdCellType2Cnt.append((ctype, len(ccells)))
    stdCellTypesForFeature = sorted(stdCellType2Cnt, key=lambda tup: -tup[1])
    print("top std cell types: ", stdCellTypesForFeature)

    print("creating networkx graph with ", len(cells), " nodes")
    BLIFGraph = nx.DiGraph()
    netlist = []
    for designCell in cells:
        BLIFGraph.add_node(
            designCell.id,
            type=designCell.stdCellType.typeName,
            nodeLabel=-1,
            name=designCell.name,
        )
        for outputNet in designCell.outputNets:
            for succCell, oPin in zip(outputNet.succCells, outputNet.succPins):
                netlist.append(
                    (
                        designCell.id,
                        succCell.id,
                        {"pins": designCell.stdCellType.typeName + ":" + outputNet.predPin + "-" + succCell.stdCellType.typeName + ":" + ",".join(succCell.stdCellType.inputPinEqu[oPin])},
                    )
                )

    BLIFGraph.add_edges_from(netlist)
    print("created networkx graph with ", len(cells), " nodes")

    # calculte all k-cuts
    # allKCones = None
    # allKCuts = kcuts_PIs_POs(BLIFGraph=BLIFGraph, k=K)
    allKCuts, allKCones = kcuts_kcones_PIs_POs(BLIFGraph=BLIFGraph, k=K)
    for cell in cells:
        for tmpType in bypassTypes:
            if cell.stdCellType.typeName.find(tmpType) >= 0:
                cell.stopType = True

    return BLIFGraph, cells, stdCellTypesForFeature, allKCuts, allKCones


def count_nnode(cellsContained: Set[int], cells: List[DesignCell]) -> int:
    nnode = 0
    for nid in cellsContained:
        nnode += cells[nid].stdCellType.nnode
    return nnode


def heuristicLabelSomeNodesAndGetInitialClusters(BLIFGraph: nx.DiGraph, cells: List[DesignCell], allKCuts: Dict[int, List[Set]], allKCones: Dict[str, Set[int]]) -> Dict[str, Dict[int, list]]:
    clusterTree = {}
    cid = 0
    for root, cuts in allKCuts.items():
        for cut in cuts:
            if len(cut) <= 1:
                continue
            root_leaves = cut | {root}
            # cutNodes = ancestors(BLIFGraph, target=root, sources=cut)
            cutNodes = allKCones[','.join(map(str, sorted(root_leaves)))]
            if len(cutNodes) <= len(root_leaves):
                continue
            cutInnerNodes = cutNodes - root_leaves
            nonleaves = cutInnerNodes | {root}
            if len(nonleaves) <= 1:
                continue
            # cut inner nodes
            stdCell2Cnt = {}
            for node in cutInnerNodes:
                ntype = BLIFGraph.nodes[node]["type"]
                stdCell2Cnt.setdefault(ntype, 0)
                stdCell2Cnt[ntype] += 1
            # coding for root and inner nodes
            coding = str(count_nnode(nonleaves, cells)) + "|" + str(len(cut)) + "|" + BLIFGraph.nodes[root]["type"]
            for nname in sorted(stdCell2Cnt):
                coding += "|" + nname + "=" + str(stdCell2Cnt[nname])
            # construct subgraph
            cutGraph = BLIFGraph.subgraph(cutNodes).copy()
            cutLeaves = cut - {root}
            for node in cutLeaves:
                cutGraph.nodes[node]["type"] = "INPUT"
            # coding for inner edges
            edges2Cnt = {}
            initial_edges = set(cutGraph.edges)
            for es, et in initial_edges:
                if cutGraph.nodes[es]["type"] == "INPUT":
                    if cutGraph.nodes[et]["type"] == "INPUT":
                        cutGraph.remove_edge(es, et)  # remove edges between inputs
                        continue
                    cutGraph[es][et]["pins"] = "INPUT:Y-" + cutGraph[es][et]["pins"].split("-")[1]
                edges2Cnt.setdefault(cutGraph[es][et]["pins"], 0)
                edges2Cnt[cutGraph[es][et]["pins"]] += 1
            # remove isolated nodes
            cutGraph.remove_nodes_from(list(nx.isolates(cutGraph)))
            if not cutGraph.nodes:
                continue
            for ename in sorted(edges2Cnt):
                coding += "|" + ename + "=" + str(edges2Cnt[ename])
            # coding for out degrees
            coding += "|"
            odegree2Cnt = {}
            for node, out_degree in cutGraph.out_degree():
                ntype = cutGraph.nodes[node]["type"]
                odegree2Cnt.setdefault(ntype, []).append(out_degree)
            for nname in sorted(odegree2Cnt):
                coding += "".join(map(str, sorted(odegree2Cnt[nname])))
            # new cluster
            newCluster = DesignPatternCluster(cid, coding, cells, nonleaves, rootId=root, kcut=cut, graph=cutGraph)
            cid += 1
            if coding not in clusterTree:
                clusterTree[coding] = {}
            if root not in clusterTree[coding]:
                clusterTree[coding][root] = []
            clusterTree[coding][root].append(newCluster)

    return clusterTree


def loadDataAndPreprocess(
    stdCellLib: Dict[str, StdCellType],
    blifFileName="../benchmark/blif/adder.blif",
    K=4,
    startTime: float = 0,
) -> tuple[nx.DiGraph, List[DesignCell], List[tuple], Dict[str, Dict[int, list]]]:
    BLIFGraph, cells, stdCellTypesForFeature, allKCuts, allKCones = genGraphFromLibertyAndBLIF(stdCellLib, blifFileName, K=K)
    print("genGraphFromLibertyAndBLIF done. time esclaped: ", time.time() - startTime)

    clusterTree = heuristicLabelSomeNodesAndGetInitialClusters(BLIFGraph, cells, allKCuts, allKCones)
    print("heuristicLabelSomeNodesAndGetInitialClusters done. time esclaped: ", time.time() - startTime)

    print("loadDataAndPreprocess done. time esclaped: ", time.time() - startTime)
    return BLIFGraph, cells, stdCellTypesForFeature, clusterTree


def getArea(cells: List[DesignCell], type2Area):
    resArea = 0
    for cell in cells:
        if cell.stdCellType.typeName in type2Area.keys():
            resArea += type2Area[cell.stdCellType.typeName]
    return resArea


def writeGenlib(liberty: Group, genlibPath: str) -> None:
    # Loop through all cells.
    flag_0 = False
    flag_1 = False
    with open(genlibPath, 'w', encoding='utf-8') as genlib:
        for cell_group in liberty.get_groups('cell'):
            line = 'GATE ' + cell_group.args[0]
            line += '\t' + str(cell_group.get_attribute(key='area', default=1))
            # Loop through all pins of the cell.
            nout = 0
            flag_constant = False
            for pin_group in cell_group.get_groups('pin'):
                pin_name = pin_group.args[0]
                func = pin_group.get_attribute(key='function', default=None)
                if func:
                    func = re.sub(' +', ' ', func.value.strip())  # combine multiple spaces into one
                    if ' ' in func:
                        if any(x in func for x in ['*', '+']):
                            line += '\t' + pin_name + '=' + re.sub(' ', '', func) + ';'
                        else:
                            line += '\t' + pin_name + '=' + func.replace(' ', '*') + ';'
                    else:
                        if func in ['0', '1']:
                            if func == '0':
                                flag_0 = True
                            else:
                                flag_1 = True
                            flag_constant = True
                            line += '\t' + pin_name + '=CONST' + func + ';'
                        else:
                            line += '\t' + pin_name + '=' + func + ';'
                    nout += 1
            if nout != 1:  # single output
                continue
            if flag_constant:
                line += '\n'
            else:
                line += '\t PIN * NONINV 1 999 1 0 1 0\n'
            genlib.write(line)
        if not flag_0:
            genlib.write('GATE const_0\t0\tq=CONST0;\n')
        if not flag_1:
            genlib.write('GATE const_1\t0\tq=CONST1;\n')


def loadExtendCells(fileDir: str) -> Dict[str, StdCellType]:
    extendCellLib = {}
    for item in os.listdir(fileDir):
        if not item.endswith(".sp"):
            continue
        ipins = set()
        funcs = {}
        eqs_nnode = item[:-3].split(';')
        nnode = int(eqs_nnode[1])
        eqs = eqs_nnode[0].split(',')
        for id, eq in enumerate(eqs):
            newOP = 'Y' if len(eqs) == 1 else 'Y' + chr(65 + id)
            try:
                func = simplify_logic(eq)
            except:
                var(re.sub(r'[&|!()]', ' ', eq), bool=True)
                func = simplify_logic(eval(eq))
            funcs[newOP] = func
            ipins = ipins.union(set(func.free_symbols))

        newCell = StdCellType(','.join(eqs), nnode)
        for ipin in ipins:
            newCell.addPin(ipin, 'input')
        for opin, ofunc in funcs.items():
            newCell.addPin(opin, 'output', ofunc)
        extendCellLib[newCell.typeName] = newCell
    return extendCellLib


if __name__ == '__main__':
    stdCellLib, liberty_used, liberty = loadLibertyFile('stdCellLib/gscl45nm/gscl45nm.lib')
    writeGenlib(liberty_used, 'gscl45nm.genlib')
    # loadDataAndPreprocess()
