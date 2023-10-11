import os
import blifparser.blifparser as blifparser
from globalVariables import *
from BLIFGraphUtil import *
import networkx as nx
import numpy as np
import tensorflow as tf
import networkx as nx
import time
from liberty.parser import parse_liberty


class S2VGraph(object):
    def __init__(self, g, label, node_tags=None, node_features=None):
        '''
            g: a networkx graph
            label: an integer graph label
            node_tags: a list of integer node tags
            node_features: a torch float tensor, one-hot representation of the tag that is used as input to neural nets
            edge_mat: a torch long tensor, contain edge list, will be used to create torch sparse tensor
            neighbors: list of neighbors (without self-loop)
        '''
        self.label = label
        self.g = g
        self.node_tags = node_tags
        self.neighbors = []
        self.node_features = 0
        self.edge_mat = 0

        self.max_neighbor = 0


def softmax(x):
    """Compute softmax values for each sets of scores in x."""
    e_x = np.exp(x - np.max(x))
    return e_x / e_x.sum()


def loadLibertyFile(fileName):
    # Read and parse a library.
    library = parse_liberty(open(fileName).read())

    stdCellLib = dict()

    # Loop through all cells.
    for cell_group in library.get_groups('cell'):
        name = str(cell_group.args[0]).replace(
            "\"", "").replace(" ", "").replace("\'", "")
        # print(name)
        newStdCellType = StdCellType(name)

        # Loop through all pins of the cell.
        for pin_group in cell_group.get_groups('pin'):
            pin_name = str(pin_group.args[0]).replace(
                "\"", "").replace("\'", "")
            # print(pin_name, "->", str(pin_group['direction']).replace("\"","").replace("\'",""))
            newStdCellType.addPin(pin_name, str(
                pin_group['direction']).replace("\"", "").replace(" ", "").replace("\'", ""))

        stdCellLib[name] = newStdCellType

    return stdCellLib


def loadBoolGateFromBLIF(blif, stdCellLib):
    for boolFunc in blif.booleanfunctions:
        truthTableStr = "bool-"+str(boolFunc.truthtable)
        if (not truthTableStr in stdCellLib.keys()):
            newStdCellType = StdCellType(truthTableStr)
            for i in range(0, len(boolFunc.v_params)-1):
                newStdCellType.addPin("IN"+str(i), 'input')
            newStdCellType.addPin("OUT0", 'output')
            stdCellLib[truthTableStr] = newStdCellType


def genGraphFromLibertyAndBLIF(libFileName, blifFileName):

    stdCellLib = loadLibertyFile(libFileName)

    # get the file path and pass it to the parser
    filepath = os.path.abspath(blifFileName)
    parser = blifparser.BlifParser(filepath)

    # get the object that contains the parsed data
    # from the parser
    blif = parser.blif
    loadBoolGateFromBLIF(blif, stdCellLib)

    # get the dictionary with the number of occurrencies of each keyword
    print(blif.nkeywords, "\n")

    cellName2Obj = dict()
    cells = []
    netName2Obj = dict()
    nets = []
    idCnt = 0
    for tmpCircuit in blif.subcircuits:
        refType = tmpCircuit.modelname
        if (refType in stdCellLib.keys()):
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
            assert(False)

    for logicGate in blif.booleanfunctions:
        refType = "bool-"+str(logicGate.truthtable)
        if (refType in stdCellLib.keys()):
            name = str(logicGate)
            curCell = DesignCell(idCnt, name, stdCellLib[refType])
            idCnt += 1
            if (len(logicGate.v_params) > 1):
                for pinId, pin in enumerate(logicGate.v_params[:-1]):
                    curCell.addCellPin("IN"+str(pinId), pin)
            curCell.addCellPin("OUT", logicGate.v_params[-1])
            cellName2Obj[name] = curCell
            cells.append(curCell)
        else:
            print(refType, " is not in liberty file.")
            assert(False)

    idCnt = 0
    stdCellType2Cells = dict()
    for designCell in cells:
        if (not designCell.stdCellType.typeName in stdCellType2Cells.keys()):
            stdCellType2Cells[designCell.stdCellType.typeName] = []
        stdCellType2Cells[designCell.stdCellType.typeName].append(designCell)
        for refPin, inputNet in zip(designCell.inputPinRefNames, designCell.inputNetNames):
            if (not inputNet in netName2Obj.keys()):
                curNet = DesignNet(idCnt, inputNet)
                netName2Obj[inputNet] = curNet
                nets.append(curNet)
                idCnt += 1
            else:
                curNet = netName2Obj[inputNet]
            designCell.addInputNet(curNet)
            curNet.addPin(refPin, designCell, True)
        for refPin, outputNet in zip(designCell.outputPinRefNames, designCell.outputNetNames):
            if (not outputNet in netName2Obj.keys()):
                curNet = DesignNet(idCnt, outputNet)
                netName2Obj[outputNet] = curNet
                nets.append(curNet)
                idCnt += 1
            else:
                curNet = netName2Obj[outputNet]
            designCell.addOutputNet(curNet)
            curNet.addPin(refPin, designCell, False)

    stdCellType2Cnt = []
    for key in stdCellType2Cells.keys():
        stdCellType2Cnt.append((key, len(stdCellType2Cells[key])))
    sorted_by_second = sorted(stdCellType2Cnt, key=lambda tup: -tup[1])
    print("top std cell types: ", sorted_by_second[1:30])

    stdCellTypesForFeature = []
    for tmpType in sorted_by_second:
        stdCellTypesForFeature.append(tmpType[0])
    print("top std cell type names: ", stdCellTypesForFeature)

    print("creating networkx graph with ", len(cells), " nodes")
    BLIFGraph = nx.DiGraph()
    nodeType = dict()
    netlist = []
    for designCell in cells:
        if (designCell.stdCellType.typeName in stdCellTypesForFeature):
            nodeType[designCell.id] = designCell.stdCellType.typeName
        else:
            nodeType[designCell.id] = "minorType"
        BLIFGraph.add_node(
            designCell.id, type=nodeType[designCell.id], nodeLabel=-1, name=designCell.name)

        for inputNet in designCell.inputNets:
            if (not inputNet.predCell is None):
                netlist.append((inputNet.predCell.id, designCell.id))

        for outputNet in designCell.outputNets:
            if (len(outputNet.succCells) < 10000):
                for succCell in outputNet.succCells:
                    netlist.append((designCell.id, succCell.id))

    BLIFGraph.add_edges_from(netlist)
    print("created networkx graph with ", len(cells), " nodes")

    for cell in cells:
        for tmpType in bypassTypes:
            if (cell.stdCellType.typeName.find(tmpType) >= 0):
                cell.stopType = True

    return BLIFGraph, cells, netlist, stdCellTypesForFeature


def extractAndEncodeSubgraph_Tree(cells, rootNode, depthLimit=2, clusterId=None):
    depths = [0]
    tree = [rootNode]
    encodes = [cells[rootNode].stdCellType.typeName]
    Que = [rootNode]
    head = 0
    while (head < len(tree)):
        curNode = cells[Que[head]]
        curDepth = depths[head]
        if (curDepth >= depthLimit):
            break
        for inputNet in curNode.inputNets:
            if (not inputNet.predCell is None):
                shouldBypass = False
                for typeKey in bypassTypes:
                    if (inputNet.predCell.stdCellType.typeName.find(typeKey) >= 0):
                        shouldBypass = True
                        break
                if ((not shouldBypass)):
                    depths.append(curDepth+1)
                    Que.append(inputNet.predCell.id)
                    if (not inputNet.predCell.id in tree):
                        tree.append(inputNet.predCell.id)
                    encodes.append(inputNet.predCell.stdCellType.typeName)
        head += 1

    if (not clusterId is None):
        for cellId in tree:
            if (cells[cellId].clusterId >= 0):
                return None, None
        for cellId in tree:
            cells[cellId].setClusterId(clusterId)

    return tree, encodes


def heuristicLabelSomeNodesAndGetInitialClusters(BLIFGraph, cells, netlist):

    treeDepth = 1

    pattern2RootCells = dict()
    for cell in cells:
        shouldBypass = False
        for typeKey in bypassTypes:
            if (cell.stdCellType.typeName.find(typeKey) >= 0):
                shouldBypass = True
                break
        if (shouldBypass):
            continue
        tree, code = extractAndEncodeSubgraph_Tree(cells, cell.id, treeDepth)
        if (len(tree) < 2):
            continue
        codeStr = str(code).replace(
            "\'", "").replace("\\", "").replace("\"", "").replace(" ", "")
        if (codeStr.find("bool-") >= 0):
            continue
        if (not codeStr in pattern2RootCells.keys()):
            pattern2RootCells[codeStr] = []
        pattern2RootCells[codeStr].append(cell.id)

    pattern2Cnt = []
    for key in pattern2RootCells.keys():
        pattern2Cnt.append((key, len(pattern2RootCells[key])))
    sorted_by_second = sorted(pattern2Cnt, key=lambda tup: -tup[1])
    print("top pattern types: ", sorted_by_second[:30])

    patternToBeLabeled = []
    labelId = 0
    labeledCnt = 0
    clusterCellsCnt = 0

    initialClusterSeqs = []
    for tmpType in sorted_by_second[:30]:
        patternToBeLabeled.append(tmpType[0])
        newSeq = DesignPatternClusterSeq(tmpType[0])
        for cellId in pattern2RootCells[tmpType[0]]:
            BLIFGraph.nodes()[cellId]['nodeLabel'] = labelId
            tree, code = extractAndEncodeSubgraph_Tree(   # color the nodes in a pattern
                cells, cellId, treeDepth, labeledCnt)
            if (tree is None):
                continue
            code = str(code).replace(
                "\'", "").replace("\\", "").replace("\"", "").replace(" ", "")
            newCluster = DesignPatternCluster(
                labeledCnt, code, cells, tree, labelId)
            for cellId in tree:
                cells[cellId].setCluster(newCluster)

            newSeq.addCluster(newCluster)
            labeledCnt += 1
            clusterCellsCnt += len(tree)
        if (len(newSeq.patternClusters) > 0):
            initialClusterSeqs.append(newSeq)
            labelId += 1
        else:
            del newSeq

    resSeqs = sortPatternClusterSeqs(initialClusterSeqs)

    print("labeled ", labeledCnt, " nodes (", labeledCnt /
          BLIFGraph.number_of_nodes()*100, "%)")
    print("clustered ", clusterCellsCnt, " nodes (", clusterCellsCnt /
          BLIFGraph.number_of_nodes()*100, "%)")

    return resSeqs, labeledCnt


def heuristicLabelSomeNodesAndGetInitialClusters_BasedOn(BLIFGraph, cells, netlist, targetPatternTrace):

    treeDepth = 1

    pattern2RootCells = dict()
    for cell in cells:
        shouldBypass = False
        for typeKey in bypassTypes:
            if (cell.stdCellType.typeName.find(typeKey) >= 0):
                shouldBypass = True
                break
        if (shouldBypass):
            continue
        tree, code = extractAndEncodeSubgraph_Tree(cells, cell.id, treeDepth)
        if (len(tree) < 2):
            continue
        codeStr = str(code).replace(
            "\'", "").replace("\\", "").replace("\"", "").replace(" ", "")
        if (codeStr.find("bool-") >= 0):
            continue
        if (targetPatternTrace.find(codeStr) != 0):
            continue
        if (not codeStr in pattern2RootCells.keys()):
            pattern2RootCells[codeStr] = []
        pattern2RootCells[codeStr].append(cell.id)

    pattern2Cnt = []
    for key in pattern2RootCells.keys():
        pattern2Cnt.append((key, len(pattern2RootCells[key])))
    sorted_by_second = sorted(pattern2Cnt, key=lambda tup: -tup[1])
    print("top pattern types: ", sorted_by_second[:30])

    patternToBeLabeled = []
    labelId = 0
    labeledCnt = 0
    clusterCellsCnt = 0

    initialClusterSeqs = []
    for tmpType in sorted_by_second[:30]:
        patternToBeLabeled.append(tmpType[0])
        newSeq = DesignPatternClusterSeq(tmpType[0])
        for cellId in pattern2RootCells[tmpType[0]]:
            BLIFGraph.nodes()[cellId]['nodeLabel'] = labelId
            tree, code = extractAndEncodeSubgraph_Tree(   # color the nodes in a pattern
                cells, cellId, treeDepth, labeledCnt)
            if (tree is None):
                continue
            code = str(code).replace(
                "\'", "").replace("\\", "").replace("\"", "").replace(" ", "")
            newCluster = DesignPatternCluster(
                labeledCnt, code, cells, tree, labelId)
            for cellId in tree:
                cells[cellId].setCluster(newCluster)

            newSeq.addCluster(newCluster)
            labeledCnt += 1
            clusterCellsCnt += len(tree)
        if (len(newSeq.patternClusters) > 0):
            initialClusterSeqs.append(newSeq)
        else:
            del newSeq

        labelId += 1

    resSeqs = sortPatternClusterSeqs(initialClusterSeqs)

    print("labeled ", labeledCnt, " nodes (", labeledCnt /
          BLIFGraph.number_of_nodes()*100, "%)")
    print("clustered ", clusterCellsCnt, " nodes (", clusterCellsCnt /
          BLIFGraph.number_of_nodes()*100, "%)")

    return resSeqs, labeledCnt


def convertBLIFGraphIntoDataset(BLIFGraph, stdCellTypesForFeature, maxNumType=36):

    print('converting BLIF Graph Into Dataset data')
    g_list = []
    feat_dict = {}

    g = BLIFGraph
    node_tags = []

    node_features = None

    labelsListForNode = []

    maxLabel = 0

    typeSet = set()
    for i in g.nodes():
        typeSet.add(g.nodes()[i]['type'])

    typeSet = list(typeSet)
    typeSet.sort()
    for typeId, stdCellType in enumerate(stdCellTypesForFeature):
        feat_dict[stdCellType] = typeId

    for tmpType in typeSet:
        if (not tmpType in feat_dict.keys()):
            feat_dict[tmpType] = len(feat_dict)

    print("feat_dict: ", feat_dict)
    print("typeSet: ", typeSet)
    # assert(len(typeSet) < maxNumType)

    for i in g.nodes():
        if (g.nodes()[i]['nodeLabel'] >= 0):
            labelsListForNode.append(g.nodes()[i]['nodeLabel'])
            maxLabel = max(maxLabel, g.nodes()[i]['nodeLabel'])

        node_tags.append(feat_dict[g.nodes()[i]['type']])

    g_list = [S2VGraph(g, None, node_tags)]

    # add labels (based on pattern) and edge_mat
    for g in g_list:

        g.label = labelsListForNode
        edges = [list((pair[0], pair[1], 1)) for pair in g.g.edges()]
        g.edge_mat = tf.transpose(tf.constant(edges))

    # add node feature based on node type
    for g in g_list:

        node_features = np.zeros((len(g.node_tags), maxNumType))
        node_features[range(len(g.node_tags)), [
            tag for tag in g.node_tags]] = 1

        g.node_features = tf.constant(node_features)

    print("# data: %d" % len(node_features))

    return g_list, maxLabel+1


def loadDataAndPreprocess(libFileName="sky130_fd_sc_hd__tt_025C_1v80.lib", blifFileName="rocket.blif", startTime=0, bypassInitialCluster=False):
    BLIFGraph, cells, netlist, stdCellTypesForFeature = genGraphFromLibertyAndBLIF(
        libFileName, blifFileName)
    endTime = time.time()
    print("genGraphFromLibertyAndBLIF done. time esclaped: ", endTime-startTime)

    initialClusterSeqs = None
    clusterNum = None
    if (not bypassInitialCluster):
        initialClusterSeqs, clusterNum = heuristicLabelSomeNodesAndGetInitialClusters(
            BLIFGraph, cells, netlist)
        endTime = time.time()
        print("heuristicLabelSomeNodesAndGetInitialClusters done. time esclaped: ",
              endTime-startTime)

    dataset, maxLabelIndex = convertBLIFGraphIntoDataset(
        BLIFGraph, stdCellTypesForFeature, 36)
    endTime = time.time()
    print("loadDataAndPreprocess done. time esclaped: ", endTime-startTime)

    return BLIFGraph, cells, netlist, stdCellTypesForFeature, dataset, maxLabelIndex, initialClusterSeqs, clusterNum


def getArea(cells, type2Area):
    resArea = 0
    for cell in cells:
        if (cell.stdCellType.typeName in type2Area.keys()):
            resArea += type2Area[cell.stdCellType.typeName]
    return resArea


def main():
    loadDataAndPreprocess()


if __name__ == '__main__':
    main()
