import bisect
import networkx as nx
import matplotlib.pyplot as plt
from itertools import count
from typing import List

stdCellOPEqu = {
    "AND2X1": {'A': ['A', 'B'], 'B': ['A', 'B']},
    "AND2X2": {'A': ['A', 'B'], 'B': ['A', 'B']},
    "AOI21X1": {'A': ['A', 'B'], 'B': ['A', 'B'], 'C': ['C']},
    "AOI22X1": {'A': ['A', 'B'], 'B': ['A', 'B'], 'C': ['C', 'D'], 'D': ['C', 'D']},
    "BUFX2": {'A': ['A']},
    "BUFX4": {'A': ['A']},
    "CLKBUF1": {'A': ['A']},
    "CLKBUF2": {'A': ['A']},
    "CLKBUF3": {'A': ['A']},
    "DFFNEGX1": {'D': ['D'], 'CLK': ['CLK']},
    "DFFPOSX1": {'D': ['D'], 'CLK': ['CLK']},
    "DFFSR": {'D': ['D'], 'R': ['R'], 'S': ['S'], 'CLK': ['CLK']},
    "FAX1": {'A': ['A', 'B', 'C'], 'B': ['A', 'B', 'C'], 'C': ['A', 'B', 'C']},
    "HAX1": {'A': ['A', 'B'], 'B': ['A', 'B']},
    "INVX1": {'A': ['A']},
    "INVX2": {'A': ['A']},
    "INVX4": {'A': ['A']},
    "INVX8": {'A': ['A']},
    "LATCH": {'D': ['D'], 'CLK': ['CLK']},
    "MUX2X1": {'A': ['A'], 'B': ['B'], 'S': ['S']},
    "NAND2X1": {'A': ['A', 'B'], 'B': ['A', 'B']},
    "NAND3X1": {'A': ['A', 'B', 'C'], 'B': ['A', 'B', 'C'], 'C': ['A', 'B', 'C']},
    "NOR2X1": {'A': ['A', 'B'], 'B': ['A', 'B']},
    "NOR3X1": {'A': ['A', 'B', 'C'], 'B': ['A', 'B', 'C'], 'C': ['A', 'B', 'C']},
    "OAI21X1": {'A': ['A', 'B'], 'B': ['A', 'B'], 'C': ['C']},
    "OR2X1": {'A': ['A', 'B'], 'B': ['A', 'B']},
    "OR2X2": {'A': ['A', 'B'], 'B': ['A', 'B']},
    "TBUFX1": {'A': ['A'], 'EN': ['EN']},
    "TBUFX2": {'A': ['A'], 'EN': ['EN']},
    "XNOR2X1": {'A': ['A', 'B'], 'B': ['A', 'B']},
    "XOR2X1": {'A': ['A', 'B'], 'B': ['A', 'B']}
}


class StdCellType(object):
    def __init__(self, typeName):
        self.id = id
        self.typeName = typeName
        self.pins = []
        self.inputPins = []
        self.outputPins = []
        self.inputPinMap = dict()
        self.outputPinMap = dict()
        self.outputFuncMap = dict()
        self.inputPinEqu = dict()

    def addPin(self, pinName, direction, function=None):
        if (direction == "input"):
            self.inputPins.append(pinName)
            self.inputPinEqu[pinName] = stdCellOPEqu[self.typeName][pinName]
        if (direction == "output"):
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
        if (refPinName in self.stdCellType.inputPins):
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
        if (isSucc):
            self.succPins.append(pinName)
            self.succCells.append(cell)
        else:
            self.predPin = pinName
            self.predCell = cell
        self.pins.append(pinName)


class DesignPatternCluster(object):
    def __init__(self, clusterId, patternStr, cells, cellIdsContained, clusterTypeId=-1, rootId=None, kcut=None):
        self.patternExtensionTrace = patternStr
        self.clusterId = clusterId
        self.cellIdsContained = sorted(list(cellIdsContained))
        self.cellsContained = [cells[cellId] for cellId in self.cellIdsContained]
        self.disabled = False
        self.clusterTypeId = clusterTypeId
        self.rootId = rootId
        self.kcut = kcut

    def addCell(self, cell: DesignCell):
        bisect.insort(self.cellIdsContained, cell.id)
        bisect.insort(self.cellsContained, cell, key=lambda x: x.id)


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
        if (len(curSeq.patternClusters) > 0):
            newClusters = []
            for tmpCluster in curSeq.patternClusters:
                if (not tmpCluster.disabled):
                    newClusters.append(tmpCluster)
            if (len(newClusters) > 0):
                curSeq.patternClusters = newClusters
                newClusterSeqs.append(curSeq)
            else:
                del curSeq
        else:
            del curSeq
    return newClusterSeqs


def sortPatternClusterSeqs(seqs: list[DesignPatternClusterSeq]) -> list[DesignPatternClusterSeq]:
    return sorted(seqs, key=lambda item: (-len(item.patternClusters[0].cellIdsContained) * len(item.patternClusters), -len(item.patternClusters[0].cellIdsContained)))


def drawColorfulFigureForGraphWithAttributes(tmp_graph, colorArrtibute='type', save_to_file="", withLabel=True, fig=None, figsize=None, prog='dot'):

    if (save_to_file == ""):
        if (fig is None):
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

    label_pos = dict()
    for key in pos.keys():
        label_pos[key] = (pos[key][0], pos[key][1])

    labels = dict((n, (str(d[colorArrtibute]) + "\n(" + str(d["name"]) + ")").replace("\\", "").replace("$", ""))
                  for n, d in tmp_graph.nodes(data=True))

    if (withLabel):
        nx.draw_networkx_labels(tmp_graph, label_pos, labels=labels, font_size=12)

    nc = nx.draw_networkx_nodes(tmp_graph, pos, nodelist=nodes1, node_color=colors1, node_size=150, cmap=plt.cm.plasma)

    plt.gca().set_axis_off()
    plt.subplots_adjust(top=1, bottom=0, right=1, left=0, hspace=0, wspace=0)
    plt.margins(0, 0)
    plt.gca().xaxis.set_major_locator(plt.NullLocator())
    plt.gca().yaxis.set_major_locator(plt.NullLocator())

    if (save_to_file == ""):
        plt.show()
    else:
        plt.savefig(save_to_file, bbox_inches='tight', pad_inches=0)

    plt.clf()
    f.clear()
    plt.close()
    plt.close()

    return


def obtainClusterFunc(rootId: int, patternSubgraph: nx.DiGraph, cells: List[DesignCell]):
    patternFunc = ''

    return patternFunc
