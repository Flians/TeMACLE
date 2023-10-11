from sklearn.cluster import cluster_optics_xi
from BLIFGraphUtil import *
import networkx as nx
import time


def growASeqOfClusters(BLIFGraph, clusterSeq, clusterNum, patternNum, paintPattern=False, featureLen=20):

    clusters = []
    cellsInClusters = set()
    # remove disabled clusters
    for cluster in clusterSeq.patternClusters:
        # disabled cluster should have been removed.
        assert(not cluster.disabled)
        if (not cluster.disabled):
            clusters.append(cluster)
            for cellId in cluster.cellIdsContained:
                # used to detect merging of clusters in this seq (i.e., merge the same patterns)
                cellsInClusters.add(cellId)

    # count the neighbors of the clusters:
    visitedNeighbors = set()  # cellsInClusters
    cluster2Neighbors = []
    feature2Neighbors = dict()
    feature2cnt = dict()
    neighbor2cluster = dict()

    # iterate all the neighbors of the clusters in the current pattern and classify them
    for cluster in clusters:
        cellOrderId = 0
        thisClusterNeighbors = dict()
        for cell in cluster.cellsContained:

            # iterate input predecessors
            inOrderId = 0
            for inputNet in cell.inputNets:
                curNeighbor = inputNet.predCell
                if (curNeighbor is None):
                    continue
                # bypass cells in current cluster or visited
                if (curNeighbor.clusterId == cluster.clusterId or curNeighbor in visitedNeighbors or curNeighbor.stopType):
                    continue
                if (curNeighbor.clusterId != -1):
                    if (curNeighbor.cluster.clusterTypeId == cluster.clusterTypeId):
                        continue
                neighbor2cluster[curNeighbor] = cluster

                if (not curNeighbor in thisClusterNeighbors):
                    thisClusterNeighbors[curNeighbor] = curNeighbor.stdCellType.typeName + "_" + \
                        "c"+str(cellOrderId)+"i" + str(inOrderId)
                else:
                    thisClusterNeighbors[curNeighbor] += "c" + \
                        str(cellOrderId)+"i" + str(inOrderId)

                inOrderId += 1

            # iterate output successors
            outOrderId = 0
            for outputNet in cell.outputNets:
                for curNeighbor in outputNet.succCells:
                    # bypass cells in current cluster or visited
                    if (curNeighbor.clusterId == cluster.clusterId or curNeighbor in visitedNeighbors or curNeighbor.stopType):
                        continue
                    neighbor2cluster[curNeighbor] = cluster

                    if (not curNeighbor in thisClusterNeighbors):
                        thisClusterNeighbors[curNeighbor] = curNeighbor.stdCellType.typeName + "_" + \
                            "c" + \
                            str(cellOrderId)+"o"+str(outOrderId)
                    else:
                        thisClusterNeighbors[curNeighbor] += "c" + \
                            str(cellOrderId)+"o"+str(outOrderId)

                outOrderId += 1
            cellOrderId += 1

        for neighbor in thisClusterNeighbors.keys():
            neighborF = thisClusterNeighbors[neighbor]
            visitedNeighbors.add(neighbor)
            if (not neighborF in feature2Neighbors.keys()):
                feature2Neighbors[neighborF] = []
                feature2cnt[neighborF] = 0
            feature2Neighbors[neighborF].append(neighbor)
            feature2cnt[neighborF] += 1

    sortedNeighborFeatures = []
    for key in feature2cnt.keys():
        sortedNeighborFeatures.append((key, feature2cnt[key]))
    sortedNeighborCode = sorted(
        sortedNeighborFeatures, key=lambda tup: -tup[1])
    if (len(sortedNeighborCode) > 10):
        sortedNeighborCode = sortedNeighborCode[:10]
    print("sortedNeighborFeatures: ")
    for neighborCode, codeCnt in sortedNeighborCode:
        print(feature2Neighbors[neighborCode][0].stdCellType.typeName,
              " code: (", neighborCode, ") cnt:", codeCnt)

    # only merge one type neighbor temporarily as an example

    resSeqs = []
    mergedCluster = set()
    for neighborCode, codeCnt in sortedNeighborCode[:1]:
        neighbors = feature2Neighbors[neighborCode]

        neighborsInThisSeqCnt = 0
        for neighbor in neighbors:
            if (neighbor in cellsInClusters):
                neighborsInThisSeqCnt += 1

        newClusters = []
        for neighbor in neighbors:
            targetCluster = neighbor2cluster[neighbor]

            if (targetCluster.disabled):
                continue

            if (targetCluster in mergedCluster):
                continue

            if (not neighbor.cluster is None):
                # disable the cluster which contains this neighbor
                neighbor.cluster.disabled = True
            neighbor.clusterId = targetCluster.clusterId
            neighbor.cluster = targetCluster
            mergedCluster.add(targetCluster)
            targetCluster.patternExtensionTrace += "+" + neighborCode
            targetCluster.clusterTypeId = patternNum
            targetCluster.addCell(neighbor)
            newClusters.append(targetCluster)

        print("extended ", len(newClusters), " clusters and new pattern is : ",
              newClusters[0].patternExtensionTrace, " and the size of each clustet is ", len(newClusters[0].cellsContained))

        newSeq = DesignPatternClusterSeq(newClusters[0].patternExtensionTrace)
        for cluster in newClusters:
            newSeq.addCluster(cluster)

        patternNum += 1

        resSeqs.append(newSeq)

    # record those clusters which did not extend
    clusterSeq.patternClusters = []
    for cluster in clusters:
        if (cluster in mergedCluster):
            continue
        clusterSeq.patternClusters.append(cluster)

    resSeqs.append(clusterSeq)

    return resSeqs, patternNum


def growASeqOfClusters_BasedOn(BLIFGraph, clusterSeq, clusterNum, patternNum, paintPattern=False, featureLen=20, targetPatternTrace=""):

    assert(targetPatternTrace != "")
    clusters = []
    cellsInClusters = set()
    # remove disabled clusters
    for cluster in clusterSeq.patternClusters:
        # disabled cluster should have been removed.
        assert(not cluster.disabled)
        if (not cluster.disabled):
            clusters.append(cluster)
            for cellId in cluster.cellIdsContained:
                # used to detect merging of clusters in this seq (i.e., merge the same patterns)
                cellsInClusters.add(cellId)

    # count the neighbors of the clusters:
    visitedNeighbors = set()  # cellsInClusters
    cluster2Neighbors = []
    feature2Neighbors = dict()
    feature2cnt = dict()
    neighbor2cluster = dict()

    # iterate all the neighbors of the clusters in the current pattern and classify them
    for cluster in clusters:
        cellOrderId = 0
        thisClusterNeighbors = dict()
        for cell in cluster.cellsContained:

            # iterate input predecessors
            inOrderId = 0
            for inputNet in cell.inputNets:
                curNeighbor = inputNet.predCell
                if (curNeighbor is None):
                    continue
                # bypass cells in current cluster or visited
                if (curNeighbor.clusterId == cluster.clusterId or curNeighbor in visitedNeighbors or curNeighbor.stopType):
                    continue
                if (curNeighbor.clusterId != -1):
                    if (curNeighbor.cluster.clusterTypeId == cluster.clusterTypeId):
                        continue
                neighbor2cluster[curNeighbor] = cluster

                if (not curNeighbor in thisClusterNeighbors):
                    thisClusterNeighbors[curNeighbor] = curNeighbor.stdCellType.typeName + "_" + \
                        "c"+str(cellOrderId)+"i" + str(inOrderId)
                else:
                    thisClusterNeighbors[curNeighbor] += "c" + \
                        str(cellOrderId)+"i" + str(inOrderId)

                inOrderId += 1

            # iterate output successors
            outOrderId = 0
            for outputNet in cell.outputNets:
                for curNeighbor in outputNet.succCells:
                    # bypass cells in current cluster or visited
                    if (curNeighbor.clusterId == cluster.clusterId or curNeighbor in visitedNeighbors or curNeighbor.stopType):
                        continue
                    neighbor2cluster[curNeighbor] = cluster

                    if (not curNeighbor in thisClusterNeighbors):
                        thisClusterNeighbors[curNeighbor] = curNeighbor.stdCellType.typeName + "_" + \
                            "c" + \
                            str(cellOrderId)+"o"+str(outOrderId)
                    else:
                        thisClusterNeighbors[curNeighbor] += "c" + \
                            str(cellOrderId)+"o"+str(outOrderId)

                outOrderId += 1
            cellOrderId += 1

        for neighbor in thisClusterNeighbors.keys():
            neighborF = thisClusterNeighbors[neighbor]
            visitedNeighbors.add(neighbor)
            if (targetPatternTrace.find(clusterSeq.patternExtensionTrace + "+" + neighborF) != 0):
                continue
            if (not neighborF in feature2Neighbors.keys()):
                feature2Neighbors[neighborF] = []
                feature2cnt[neighborF] = 0
            feature2Neighbors[neighborF].append(neighbor)
            feature2cnt[neighborF] += 1

    sortedNeighborFeatures = []
    for key in feature2cnt.keys():
        sortedNeighborFeatures.append((key, feature2cnt[key]))
    sortedNeighborCode = sorted(
        sortedNeighborFeatures, key=lambda tup: -tup[1])
    if (len(sortedNeighborCode) > 10):
        sortedNeighborCode = sortedNeighborCode[:10]
    print("sortedNeighborFeatures: ")
    for neighborCode, codeCnt in sortedNeighborCode:
        print(feature2Neighbors[neighborCode][0].stdCellType.typeName,
              " code: (", neighborCode, ") cnt:", codeCnt)

    # only merge one type neighbor temporarily as an example

    resSeqs = []
    mergedCluster = set()
    for neighborCode, codeCnt in sortedNeighborCode[:1]:
        neighbors = feature2Neighbors[neighborCode]

        neighborsInThisSeqCnt = 0
        for neighbor in neighbors:
            if (neighbor in cellsInClusters):
                neighborsInThisSeqCnt += 1

        newClusters = []
        for neighbor in neighbors:
            targetCluster = neighbor2cluster[neighbor]

            if (targetCluster.disabled):
                continue

            if (targetCluster in mergedCluster):
                continue

            if (not neighbor.cluster is None):
                # disable the cluster which contains this neighbor
                neighbor.cluster.disabled = True
            neighbor.clusterId = targetCluster.clusterId
            neighbor.cluster = targetCluster
            mergedCluster.add(targetCluster)
            targetCluster.patternExtensionTrace += "+" + neighborCode
            targetCluster.clusterTypeId = patternNum
            targetCluster.addCell(neighbor)
            newClusters.append(targetCluster)

        print("extended ", len(newClusters), " clusters and new pattern is : ",
              newClusters[0].patternExtensionTrace, " and the size of each clustet is ", len(newClusters[0].cellsContained))

        newSeq = DesignPatternClusterSeq(newClusters[0].patternExtensionTrace)
        for cluster in newClusters:
            newSeq.addCluster(cluster)

        patternNum += 1

        resSeqs.append(newSeq)

    # record those clusters which did not extend
    clusterSeq.patternClusters = []
    for cluster in clusters:
        if (cluster in mergedCluster):
            continue
        clusterSeq.patternClusters.append(cluster)

    resSeqs.append(clusterSeq)

    return resSeqs, patternNum
