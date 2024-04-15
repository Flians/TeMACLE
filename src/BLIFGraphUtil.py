import bisect
import networkx as nx
import matplotlib.pyplot as plt
from itertools import count
from typing import List, Dict
from sympy import Basic, symbols, simplify_logic, bool_map, var

stdCellIPEqu = {
    'AND2X1': {'A': ['A', 'B'], 'B': ['A', 'B']},
    'AND2X2': {'A': ['A', 'B'], 'B': ['A', 'B']},
    'AOI21X1': {'A': ['A', 'B'], 'B': ['A', 'B'], 'C': ['C']},
    'AOI22X1': {'A': ['A', 'B'], 'B': ['A', 'B'], 'C': ['C', 'D'], 'D': ['C', 'D']},
    'BUFX2': {'A': ['A']},
    'BUFX4': {'A': ['A']},
    'CLKBUF1': {'A': ['A']},
    'CLKBUF2': {'A': ['A']},
    'CLKBUF3': {'A': ['A']},
    'DFFNEGX1': {'D': ['D'], 'CLK': ['CLK']},
    'DFFPOSX1': {'D': ['D'], 'CLK': ['CLK']},
    'DFFSR': {'D': ['D'], 'R': ['R'], 'S': ['S'], 'CLK': ['CLK']},
    'FAX1': {'A': ['A', 'B', 'C'], 'B': ['A', 'B', 'C'], 'C': ['A', 'B', 'C']},
    'HAX1': {'A': ['A', 'B'], 'B': ['A', 'B']},
    'INVX1': {'A': ['A']},
    'INVX2': {'A': ['A']},
    'INVX4': {'A': ['A']},
    'INVX8': {'A': ['A']},
    'LATCH': {'D': ['D'], 'CLK': ['CLK']},
    'MUX2X1': {'A': ['A'], 'B': ['B'], 'S': ['S']},
    'NAND2X1': {'A': ['A', 'B'], 'B': ['A', 'B']},
    'NAND3X1': {'A': ['A', 'B', 'C'], 'B': ['A', 'B', 'C'], 'C': ['A', 'B', 'C']},
    'NOR2X1': {'A': ['A', 'B'], 'B': ['A', 'B']},
    'NOR3X1': {'A': ['A', 'B', 'C'], 'B': ['A', 'B', 'C'], 'C': ['A', 'B', 'C']},
    'OAI21X1': {'A': ['A', 'B'], 'B': ['A', 'B'], 'C': ['C']},
    'OAI22X1': {'A': ['A', 'B'], 'B': ['A', 'B'], 'C': ['C', 'D'], 'D': ['C', 'D']},
    'OR2X1': {'A': ['A', 'B'], 'B': ['A', 'B']},
    'OR2X2': {'A': ['A', 'B'], 'B': ['A', 'B']},
    'TBUFX1': {'A': ['A'], 'EN': ['EN']},
    'TBUFX2': {'A': ['A'], 'EN': ['EN']},
    'XNOR2X1': {'A': ['A', 'B'], 'B': ['A', 'B']},
    'XOR2X1': {'A': ['A', 'B'], 'B': ['A', 'B']},
    "bool-[['1', '1']]": {'IN0': ['IN0']},
}

stdCellIPEqu = {
    'AND2x2': {'A': ['A', 'B'], 'B': ['A', 'B']},
    'BUFx2': {'A': ['A']},
    'INVx1': {'A': ['A']},
    'NAND2x1': {'A': ['A', 'B'], 'B': ['A', 'B']},
    'NOR2x1': {'A': ['A', 'B'], 'B': ['A', 'B']},
    'OR2x2': {'A': ['A', 'B'], 'B': ['A', 'B']},
    'XNOR2x1': {'A': ['A', 'B'], 'B': ['A', 'B']},
    'XOR2x1': {'A': ['A', 'B'], 'B': ['A', 'B']},
    'TIEHIx1': {'H': ['H']},
    'TIELOx1': {'L': ['L']},
}


class StdCellType(object):
    def __init__(self, typeName, nnode: int = 1):
        self.id = id
        self.typeName = typeName
        self.pins = []
        self.inputPins = []
        self.outputPins = []
        self.inputPinMap = {}
        self.outputPinMap = {}
        self.outputFuncMap = {}
        self.inputPinEqu = {}
        self.nnode = nnode

    def addPin(self, pinName, direction, function: str = None):  # type: ignore
        if direction == 'input':
            self.inputPins.append(pinName)
            if 'bool-' in self.typeName:
                pass
            if self.typeName in stdCellIPEqu:
                self.inputPinEqu[pinName] = stdCellIPEqu[self.typeName][pinName]
        if direction == 'output':
            self.outputPins.append(pinName)
            self.outputFuncMap[pinName] = function
        self.pins.append(pinName)


class DesignCell(object):
    def __init__(self, id, name, stdCellType):
        self.id = id
        self.name = name
        self.stdCellType = stdCellType
        self.inputPinRefNames = []
        self.inputNetNames = []
        self.inputNets = []
        self.outputPinRefNames = []
        self.outputNetNames = []
        self.outputNets = []
        self.clusterId = -1
        self.cluster = None
        self.featureV = None
        self.featureOrder = None
        self.stopType = False
        self.function = None

    def addCellPin(self, refPinName, netName):
        if refPinName in self.stdCellType.inputPins:
            self.inputPinRefNames.append(refPinName)
            self.inputNetNames.append(netName)
        else:
            self.outputPinRefNames.append(refPinName)
            self.outputNetNames.append(netName)

    def addInputNet(self, curNet):
        self.inputNets.append(curNet)

    def addOutputNet(self, curNet):
        self.outputNets.append(curNet)

    def setClusterId(self, clusterId):
        self.clusterId = clusterId

    def setCluster(self, cluster):
        self.cluster = cluster

    def setFeature(self, featureV):
        self.featureV = featureV
        self.featureOrder = (-featureV).argsort()


class DesignNet(object):
    def __init__(self, id, name):
        self.id = id
        self.name = name
        self.succPins = []
        self.predPin = None
        self.succCells = []
        self.predCell = None
        self.pins = []

    def addPin(self, pinName, cell, isSucc):
        if isSucc:
            self.succPins.append(pinName)
            self.succCells.append(cell)
        else:
            self.predPin = pinName
            self.predCell = cell
        self.pins.append(pinName)


class DesignPatternCluster(object):
    def __init__(self, clusterId, patternStr, cells, cellIdsContained, clusterTypeId=-1, rootId=None, kcut=None, graph: nx.DiGraph = None):  # type: ignore
        self.patternExtensionTrace = patternStr
        self.clusterId = clusterId
        self.cellIdsContained = sorted(list(cellIdsContained))
        self.cellsContained = [cells[cellId] for cellId in self.cellIdsContained]
        self.disabled = False
        self.clusterTypeId = clusterTypeId
        self.rootId = rootId
        self.kcut = kcut
        self.graph = graph

    def addCell(self, cell: DesignCell):
        bisect.insort(self.cellIdsContained, cell.id)
        bisect.insort(self.cellsContained, cell, key=lambda x: x.id)

    def nnode(self) -> int:
        nnode = 0
        for node in self.cellsContained:
            nnode += node.stdCellType.nnode
        return nnode


class DesignPatternClusterSeq(object):
    def __init__(self, patternStr, patternClusters: list[DesignPatternCluster] = []):
        self.patternExtensionTrace = patternStr
        self.patternClusters: list[DesignPatternCluster] = sorted(list(patternClusters), key=lambda item: item.cellIdsContained)

    def __lt__(self, other):
        return self.patternExtensionTrace < other.patternExtensionTrace

    def addCluster(self, patternCluster: DesignPatternCluster):
        self.patternClusters.append(patternCluster)
        bisect.insort(self.patternClusters, patternCluster, key=lambda x: x.cellIdsContained)


def removeEmptySeqsAndDisableClusters(seqs):
    newClusterSeqs = []
    for curSeq in seqs:
        if len(curSeq.patternClusters) > 0:
            newClusters = []
            for tmpCluster in curSeq.patternClusters:
                if not tmpCluster.disabled:
                    newClusters.append(tmpCluster)
            if len(newClusters) > 0:
                curSeq.patternClusters = newClusters
                newClusterSeqs.append(curSeq)
            else:
                del curSeq
        else:
            del curSeq
    return newClusterSeqs


def sortPatternClusterSeqs(seqs: list[DesignPatternClusterSeq]) -> list[DesignPatternClusterSeq]:
    return sorted(seqs, key=lambda item: (-len(item.patternClusters[0].cellIdsContained) * len(item.patternClusters), -len(item.patternClusters[0].cellIdsContained)))


def drawColorfulFigureForGraphWithAttributes(tmp_graph, colorArrtibute='type', save_to_file='', withLabel=True, fig=None, figsize=None, prog='dot'):

    if save_to_file == '':
        if fig is None:
            f = plt.figure(figsize=figsize)
        else:
            f = plt.figure(num=fig.number, figsize=figsize)
    else:
        f = plt.figure(figsize=figsize)

    pos = nx.drawing.nx_agraph.graphviz_layout(tmp_graph, prog=prog)

    groups1 = set(nx.get_node_attributes(tmp_graph, colorArrtibute).values())
    mapping1 = dict(zip(sorted(groups1), count()))
    nodes1 = tmp_graph.nodes()
    colors1 = [mapping1[tmp_graph.nodes()[n][colorArrtibute]] for n in nodes1]

    ec = nx.draw_networkx_edges(tmp_graph, pos, alpha=1, width=5)

    label_pos = {}
    for key, val in pos.items():
        label_pos[key] = (val[0], val[1])

    labels = dict((n, (str(d[colorArrtibute]) + '\n(' + str(d['name']) + ')').replace('\\', '').replace('$', '')) for n, d in tmp_graph.nodes(data=True))

    if withLabel:
        nx.draw_networkx_labels(tmp_graph, label_pos, labels=labels, font_size=12)

    nc = nx.draw_networkx_nodes(tmp_graph, pos, nodelist=nodes1, node_color=colors1, node_size=150, cmap=plt.cm.plasma)  # type: ignore

    plt.gca().set_axis_off()
    plt.subplots_adjust(top=1, bottom=0, right=1, left=0, hspace=0, wspace=0)
    plt.margins(0, 0)
    plt.gca().xaxis.set_major_locator(plt.NullLocator())  # type: ignore
    plt.gca().yaxis.set_major_locator(plt.NullLocator())  # type: ignore

    if save_to_file == '':
        plt.show()
    else:
        plt.savefig(save_to_file, bbox_inches='tight', pad_inches=0)

    plt.clf()
    f.clear()
    plt.close()
    plt.close()

    return


def obtainClusterFunc(patternSubgraph: nx.DiGraph, cells: List[DesignCell]) -> tuple[Dict[str, Basic], Dict[str, str], List[str], Dict[str, List[str]]]:
    patternFunc = {}
    opins = []
    ipins = []
    net2pin = {}
    for nid in nx.topological_sort(patternSubgraph.reverse()):
        curr_node = cells[nid]
        if patternSubgraph.nodes[nid]['type'] == 'INPUT':
            ipins.extend(curr_node.outputNetNames)
        else:
            if not patternFunc:
                opins = curr_node.outputNetNames.copy()
            v_ipin = var(curr_node.inputPinRefNames, bool=True)
            v_inet = symbols(curr_node.inputNetNames, bool=True)
            curFunc = curr_node.stdCellType.outputFuncMap.copy()
            for opin, onet in zip(curr_node.outputPinRefNames, curr_node.outputNetNames):
                cur_f = simplify_logic(eval(curFunc[opin]))
                for ipin, inet in zip(v_ipin, v_inet):  # type: ignore
                    cur_f = cur_f.subs(ipin, inet)
                    net2pin[str(inet)] = f'{ipin}_{nid}'
                if onet in opins:
                    patternFunc[onet] = cur_f
                else:
                    for on, of in patternFunc.items():
                        patternFunc[on] = of.subs(symbols(onet, bool=True), cur_f)
    # rename variables
    new_ipins = {}
    for id, ipin in enumerate(ipins):
        pid = chr(65 + id)
        for opin in opins:
            patternFunc[opin] = patternFunc[opin].subs(symbols(ipin, bool=True), symbols(pid, bool=True))
        new_ipins[net2pin[ipin]] = pid
        ipins[id] = pid
    patternFunc_ = {}
    for id, opin in enumerate(opins):
        newOP = 'Y' if len(opins) == 1 else 'Y' + chr(65 + id)
        patternFunc_[newOP] = simplify_logic(patternFunc[opin])
        opins[id] = newOP
    patternFunc = patternFunc_
    # record equivalent input pins
    IPEqu = {}
    allPins = set(ipins)
    while allPins:
        cur = allPins.pop()
        curPins = {cur}
        for other in allPins:
            flag = True
            for opin, func in patternFunc.items():
                tmp = func.subs(symbols(other, bool=True), symbols('A@A', bool=True))
                tmp = tmp.subs(symbols(cur, bool=True), symbols(other, bool=True))
                tmp = tmp.subs(symbols('A@A', bool=True), symbols(cur, bool=True))
                if not func.equals(tmp):
                    flag = False
                    break
            if flag:
                curPins.add(other)
        IPEqu[cur] = sorted(list(curPins))
        for i in curPins - {cur}:
            IPEqu[i] = list(IPEqu[cur])
        allPins -= curPins
    return patternFunc, new_ipins, opins, IPEqu
