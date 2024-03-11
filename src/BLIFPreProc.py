import blifparser.blifparser as blifparser
import networkx as nx
import numpy as np
import time
import os
from typing import Any, Dict, List, Set
from functools import reduce
from itertools import product, chain
from liberty.parser import parse_liberty, Group, EscapedString

from BLIFGraphUtil import *


bypassTypes = ("DFF", "bool")


def softmax(x):
    """Compute softmax values for each sets of scores in x."""
    e_x = np.exp(x - np.max(x))
    return e_x / e_x.sum()


def kcuts(BLIFGraph: nx.DiGraph, n, k, computed: Dict[Any, List[Set]] = None) -> List[Set]:
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


def ancestors(G:nx.DiGraph, target, sources=None, include_self=True) -> Set:
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
    def dfs(cur, sources=None, computed: Dict[Any, List]=None) -> Set:
        if computed is None:
            computed = {}

        if cur in computed:
            return computed[cur]
        
        curPred = set()
        for pred in G.predecessors(cur):
            if sources and pred in sources:
                curPred.add(pred)
            else:
                tmp = dfs(pred, sources, computed)
                if tmp:
                    curPred |= tmp
                if not sources or tmp:
                    curPred.add(pred)
        computed[cur] = curPred
        return curPred
    
    if not G.has_node(target):
        raise nx.NetworkXError(f"The node {target} is not in the graph.")
    anc = dfs(target, set(sources))

    unvisited = sources - anc
    if unvisited:
        for tar in sources:
            tmp = dfs(tar, unvisited)
            unvisited -= tmp
            anc |= tmp
            if not unvisited:
                break

    return anc | {target} if include_self else anc 


def writeLiberty(liberty: Group, indent: str = " " * 2) -> List[str]:
        """
        Create the liberty file format line by line.
        :return: A list of lines.
        """

        def format_value(v) -> str:
            return str(v)

        define_lines = list()
        for d in liberty.defines:
            define_lines.append('{};'.format(d))

        sub_group_lines = [writeLiberty(g, indent=indent) for g in liberty.groups]

        attr_lines = list()

        for attr in liberty.attributes:
            attr_name, attr_value = attr.name, attr.value
            if isinstance(attr_value, list):
                # Complex attribute
                formatted = [format_value(x) for x in attr_value]

                if any((isinstance(x, EscapedString) for x in attr_value)):
                    attr_lines.append('{} (\\'.format(attr_name))
                    for i, l in enumerate(formatted):
                        if i < len(formatted) - 1:
                            end = ', \\'
                        else:
                            end = '\\'
                        attr_lines.append(indent + l + end)
                    attr_lines.append(');')
                else:
                    values = "({})".format(", ".join(formatted))
                    attr_lines.append("{} {};".format(attr_name, values))
            else:
                # Simple attribute
                values = format_value(attr_value)
                attr_lines.append("{}: {};".format(attr_name, values))

        lines = list()
        lines.append("{} ({}) {{".format(liberty.group_name, ", ".join([format_value(f) for f in liberty.args])))

        for l in chain(define_lines, attr_lines, *sub_group_lines):
            lines.append(indent + l)

        lines.append("}")

        return lines

def loadLibertyFile(fileName) -> tuple[Dict[str, StdCellType], Group]:
    # Read and parse a liberty.
    liberty = parse_liberty(open(fileName).read())

    # Loop through all cells.
    stdCellLib = {'PI': StdCellType('PI', 0), 'const_0': StdCellType('const_0', 0), 'const_1': StdCellType('const_1', 0)}
    stdCellLib['PI'].addPin('Y', 'output')
    stdCellLib['const_0'].addPin('q', 'output', 'CONST0')
    stdCellLib['const_1'].addPin('q', 'output', 'CONST1')
    for cell_group in liberty.get_groups('cell'):
        name = cell_group.args[0]
        newStdCellType = StdCellType(name, cell_group.get_attribute(key='nnode', default=1))

        # Loop through all pins of the cell.
        for pin_group in cell_group.get_groups('pin'):
            pin_name = pin_group.args[0]
            func = pin_group.get_attribute(key='function', default=None)
            newStdCellType.addPin(pin_name, pin_group['direction'], func.value if func else func)

        stdCellLib[name] = newStdCellType

    return stdCellLib, liberty


def loadBoolGateFromBLIF(blif, stdCellLib) -> None:
    for boolFunc in blif.booleanfunctions:
        truthTableStr = "bool-" + str(boolFunc.truthtable)
        if (not truthTableStr in stdCellLib.keys()):
            newStdCellType = StdCellType(truthTableStr)
            for i in range(0, len(boolFunc.v_params) - 1):
                newStdCellType.addPin("IN" + str(i), 'input')
            newStdCellType.addPin("OUT0", 'output', boolFunc.v_params[0])
            stdCellLib[truthTableStr] = newStdCellType


def genGraphFromLibertyAndBLIF(stdCellLib: Dict[str, StdCellType], blifFileName: str, K: int = 4) -> tuple[nx.DiGraph, List[DesignCell], List[tuple], Dict[int, Set]]:
    # get the file path and pass it to the parser
    filepath = os.path.abspath(blifFileName)
    parser = blifparser.BlifParser(filepath)

    # get the object that contains the parsed data from the parser
    blif = parser.blif
    loadBoolGateFromBLIF(blif, stdCellLib)

    # get the dictionary with the number of occurrencies of each keyword
    print(blif.nkeywords, "\n")

    cellName2Obj = dict()
    cells = []
    idCnt = 0
    for tmpCircuit in blif.subcircuits:
        refType = tmpCircuit.modelname
        if refType in stdCellLib:
            name = str(tmpCircuit)
            curCell = DesignCell(idCnt, name, stdCellLib[refType])
            idCnt += 1
            for pin in tmpCircuit.params:
                pinInfo = pin.split('=')
                curCell.addCellPin(pinInfo[0], pinInfo[1])
            cellName2Obj[name] = curCell
            cells.append(curCell)
        else:
            print(refType, " is not in liberty file.")
            assert (False)
    for pi in blif.inputs.inputs:
        curPI = DesignCell(idCnt, pi, stdCellLib['PI'])
        curPI.addCellPin('Y', pi)
        cells.append(curPI)
        idCnt += 1

    for logicGate in blif.booleanfunctions:
        refType = "bool-" + str(logicGate.truthtable)
        if (refType in stdCellLib.keys()):
            name = str(logicGate)
            curCell = DesignCell(idCnt, name, stdCellLib[refType])
            idCnt += 1
            if (len(logicGate.v_params) > 1):
                for pinId, pin in enumerate(logicGate.v_params[:-1]):
                    curCell.addCellPin("IN" + str(pinId), pin)
            curCell.addCellPin("OUT", logicGate.v_params[-1])
            cellName2Obj[name] = curCell
            cells.append(curCell)
        else:
            print(refType, " is not in liberty file.")
            assert (False)

    stdCellType2Cells = dict()
    netName2Obj = dict()
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
        BLIFGraph.add_node(designCell.id, type=designCell.stdCellType.typeName, nodeLabel=-1, name=designCell.name)
        for outputNet in designCell.outputNets:
            for succCell, oPin in zip(outputNet.succCells, outputNet.succPins):
                netlist.append((designCell.id, succCell.id, {'pins': designCell.stdCellType.typeName + ':' + outputNet.predPin + '-' + succCell.stdCellType.typeName + ':' + ','.join(succCell.stdCellType.inputPinEqu[oPin])}))

    BLIFGraph.add_edges_from(netlist)
    print("created networkx graph with ", len(cells), " nodes")

    # calculte all k-cuts
    allKCuts = {}
    for cell in cells:
        for tmpType in bypassTypes:
            if (cell.stdCellType.typeName.find(tmpType) >= 0):
                cell.stopType = True
        if cell.outputNets:
            assert (len(cell.outputNets) == 1)
            if cell.outputNets[0].name in blif.outputs.outputs:
                kcuts(BLIFGraph=BLIFGraph, n=cell.id, k=K, computed=allKCuts)

    return BLIFGraph, cells, stdCellTypesForFeature, allKCuts

def count_nnode(cellsContained: List[int], cells: List[DesignCell]) -> int:
    nnode = 0
    for nid in cellsContained:
        nnode += cells[nid].stdCellType.nnode
    return nnode

def heuristicLabelSomeNodesAndGetInitialClusters(BLIFGraph: nx.DiGraph, cells: List[DesignCell], allKCuts: Dict[int, Set]) -> Dict[str, Dict[int, list]]:
    clusterTree = {}
    cid = 0
    for root, cuts in allKCuts.items():
        for cut in cuts:
            if len(cut) <= 1:
                continue
            root_leaves = cut | {root}
            cutNodes = ancestors(BLIFGraph, target=root, sources=cut)
            if len(cutNodes) <= len(root_leaves):
                continue
            cutInnerNodes = cutNodes - root_leaves
            nonleaves = cutInnerNodes | {root}
            if len(nonleaves) <= 1:
                continue
            # cut inner nodes
            stdCell2Cnt = {}
            for node in cutInnerNodes:
                ntype = BLIFGraph.nodes[node]['type']
                stdCell2Cnt.setdefault(ntype, 0)
                stdCell2Cnt[ntype] += 1
            # coding for root and inner nodes
            coding = str(count_nnode(nonleaves, cells)) + '|' + str(len(cut)) + '|' + BLIFGraph.nodes[root]['type']
            for nname in sorted(stdCell2Cnt):
                coding += '|' + nname + '=' + str(stdCell2Cnt[nname])
            # construct subgraph
            cutGraph = BLIFGraph.subgraph(cutNodes).copy()
            cutLeaves = cut - {root}
            for node in cutLeaves:
                cutGraph.nodes[node]['type'] = 'INPUT'
            # coding for inner edges
            edges2Cnt = {}
            initial_edges = set(cutGraph.edges)
            for es, et in initial_edges:
                if cutGraph.nodes[es]['type'] == 'INPUT':
                    if cutGraph.nodes[et]['type'] == 'INPUT':
                        cutGraph.remove_edge(es,et) # remove edges between inputs
                        continue
                    cutGraph[es][et]['pins'] = 'INPUT:Y-' + cutGraph[es][et]['pins'].split('-')[1]
                edges2Cnt.setdefault(cutGraph[es][et]['pins'], 0)
                edges2Cnt[cutGraph[es][et]['pins']] += 1
            # remove isolated nodes
            cutGraph.remove_nodes_from(list(nx.isolates(cutGraph)))
            if not cutGraph.nodes:
                continue
            for ename in sorted(edges2Cnt):
                coding += '|' + ename + '=' + str(edges2Cnt[ename])
            # coding for out degrees
            coding += '|'
            odegree2Cnt = {}
            for node, out_degree in cutGraph.out_degree():
                ntype = cutGraph.nodes[node]['type']
                odegree2Cnt.setdefault(ntype, []).append(out_degree)
            for nname in sorted(odegree2Cnt):
                coding += ''.join(map(str, sorted(odegree2Cnt[nname])))
            # new cluster
            newCluster = DesignPatternCluster(cid, coding, cells, nonleaves, rootId=root, kcut=cut, graph=cutGraph)
            cid += 1
            if coding not in clusterTree:
                clusterTree[coding] = {}
            if root not in clusterTree[coding]:
                clusterTree[coding][root] = []
            clusterTree[coding][root].append(newCluster)

    return clusterTree


def loadDataAndPreprocess(stdCellLib: Dict[str, StdCellType], blifFileName="../benchmark/blif/adder.blif", K=4, startTime=0) -> tuple[nx.DiGraph, List[DesignCell], List[tuple], Dict[str, Dict[int, list]]]:
    BLIFGraph, cells, stdCellTypesForFeature, allKCuts = genGraphFromLibertyAndBLIF(stdCellLib, blifFileName, K=K)
    print("genGraphFromLibertyAndBLIF done. time esclaped: ", time.time() - startTime)

    clusterTree = heuristicLabelSomeNodesAndGetInitialClusters(BLIFGraph, cells, allKCuts)
    print("heuristicLabelSomeNodesAndGetInitialClusters done. time esclaped: ", time.time() - startTime)

    print("loadDataAndPreprocess done. time esclaped: ", time.time() - startTime)
    return BLIFGraph, cells, stdCellTypesForFeature, clusterTree


def getArea(cells: List[DesignCell], type2Area):
    resArea = 0
    for cell in cells:
        if (cell.stdCellType.typeName in type2Area.keys()):
            resArea += type2Area[cell.stdCellType.typeName]
    return resArea

def writeGenlib(liberty: Group, genlibPath:str) -> None:
    # Loop through all cells.
    with open(genlibPath, 'w') as genlib:
        for cell_group in liberty.get_groups('cell'):
            line = 'GATE ' + cell_group.args[0]
            line += '\t' + str(cell_group.get_attribute(key='area', default=1))
            # Loop through all pins of the cell.
            nout = 0
            for pin_group in cell_group.get_groups('pin'):
                pin_name = pin_group.args[0]
                func = pin_group.get_attribute(key='function', default=None)
                if func:
                    line += '\t' + pin_name + '=' + func.value.replace(' ', '*') + ';'
                    nout += 1
            if nout != 1: # single output
                continue
            line += '\t PIN * NONINV 1 1 1 0 1 0\n'
            genlib.write(line)
        genlib.write('GATE const_0\t0\tq=CONST0;\nGATE const_1\t0\tq=CONST1;\n')

def main():
    loadDataAndPreprocess()


if __name__ == '__main__':
    stdCellLib, liberty = loadLibertyFile('stdCellLib/gscl45nm/gscl45nm.lib')
    writeGenlib(liberty, 'gscl45nm.genlib')
