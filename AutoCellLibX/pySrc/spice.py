
import sys
import os
from matplotlib.pyplot import text


class SPSubcircuit(object):
    def __init__(self, texts):
        self.name = texts[0].split(" ")[1]
        self.interfaces = []
        self.internalSignals = []
        self.texts = [line.replace('\n', '') for line in texts]

        for interface in texts[0].split(" ")[2:]:
            self.interfaces.append(interface)

        for line in texts[1:-1]:
            if (line.find('M') == 0):
                eles = line.split(' ')[1:5]
                for ele in eles:
                    if ((not ele in self.interfaces) and (not ele in self.internalSignals)):
                        self.internalSignals.append(ele)

    def addInterface(self, ifName):
        self.interfaces.append(ifName)

    def addInternalSignal(self, innerName):
        self.internalSignals.append(innerName)

    def renamePrefix(self, prefix):
        for signal in self.interfaces+self.internalSignals:
            if (signal == 'VCC' or signal == 'GND'):
                continue
            for i in range(0, len(self.texts)):
                eles = self.texts[i].split(" ")
                for j in range(0, len(eles)):
                    if (eles[j] == signal):
                        eles[j] = prefix+signal
                self.texts[i] = ' '.join(eles)

        for i in range(0, len(self.interfaces)):
            if (self.interfaces[i] == 'VCC' or self.interfaces[i] == 'GND'):
                continue
            self.interfaces[i] = prefix+self.interfaces[i]

        for i in range(0, len(self.internalSignals)):
            if (self.internalSignals[i] == 'VCC' or self.internalSignals[i] == 'GND'):
                continue
            self.internalSignals[i] = prefix+self.internalSignals[i]

        for i in range(0, len(self.texts)):
            eles = self.texts[i].split(" ")
            if (len(eles) > 0):
                if (eles[0].find('M') == 0):
                    eles[0] = 'M'+prefix+eles[0][1:]
                self.texts[i] = ' '.join(eles)

    def replaceInputPin(self, oriPinName, newPinName):
        replaced = False
        for i in range(0, len(self.texts)):
            eles = self.texts[i].split(" ")
            for j in range(0, len(eles)):
                if (eles[j] == oriPinName):
                    eles[j] = newPinName
                    replaced = True
            self.texts[i] = ' '.join(eles)
        assert(replaced)
        for i in range(0, len(self.interfaces)):
            if (self.interfaces[i] == 'VCC' or self.interfaces[i] == 'GND'):
                continue
            if (self.interfaces[i] == oriPinName):
                self.interfaces[i] = newPinName

    def print(self):
        for line in self.texts:
            print(line)


def loadSpiceSubcircuits(filePath):
    spFile = open(filePath, 'r')
    lines = spFile.readlines()

    spiceSubcircuits = dict()

    lineId = 0
    while (lineId < len(lines)):
        if (lines[lineId].find(".subckt ") >= 0):
            beginLineId = lineId
            while (lines[lineId].find(".ends ") < 0):
                lineId += 1
            endLineId = lineId
            newSubckt = SPSubcircuit(lines[beginLineId:endLineId+1])
            spiceSubcircuits[newSubckt.name] = newSubckt

        lineId += 1

    return spiceSubcircuits


def exportSpiceNetlist(cluserSeq, subckts, mergeCellTypeId,  outputDir):

    cellsInCluster = cluserSeq.patternClusters[0].cellsContained
    spiceList = []
    cell2orderId = dict()

    # rename signals and transistors
    for orderId, cell in enumerate(cellsInCluster):
        spiceList.append(SPSubcircuit(
            subckts[cell.stdCellType.typeName].texts))
        spiceList[-1].renamePrefix("cl"+str(orderId)+"#")
        cell2orderId[cell] = orderId

    # connect each input pins of each subcircuit
    for orderId, curCell in enumerate(cellsInCluster):
        for inputNet, inputPinName in zip(curCell.inputNets, curCell.inputPinRefNames):
            predCell = inputNet.predCell
            predPinName = inputNet.predPin
            if (predCell in cell2orderId.keys()):
                spiceList[orderId].replaceInputPin(
                    "cl"+str(orderId)+"#"+inputPinName, "cl"+str(cell2orderId[predCell])+"#"+predPinName)

    # merge spice netlists
    interfaceSet = set()
    internalSignals = []
    for spiceObj in spiceList:
        interfaceSet = interfaceSet | set(spiceObj.interfaces)
        internalSignals = internalSignals + spiceObj.internalSignals

    # remove internal signals from interfaces
    for orderId, curCell in enumerate(cellsInCluster):
        for outputNet, outputPinName in zip(curCell.outputNets, curCell.outputPinRefNames):
            allSuccCellsInternal = True
            for succCell in outputNet.succCells:
                if (not succCell in cell2orderId.keys()):
                    allSuccCellsInternal = False
            if (allSuccCellsInternal):
                assert("cl"+str(orderId)+"#"+outputPinName in interfaceSet)
                interfaceSet.remove("cl"+str(orderId)+"#"+outputPinName)

    mergeCellName = "COMPLEX"+str(mergeCellTypeId)
    interfaceList = list(interfaceSet)
    firstLine = ".subckt "+mergeCellName+" " + " ".join(interfaceList)
    internalLines = [firstLine]
    for ele in spiceList:
        internalLines = internalLines + ele.texts[1:-1]
    lastLine = ".ends "+mergeCellName

    internalLines.append(lastLine)
    internalLines.append("* pattern code: "+cluserSeq.patternExtensionTrace)
    internalLines.append(
        "* "+str(len(cluserSeq.patternClusters))+" occurrences in design ")
    internalLines.append(
        "* each contains "+str(len(cellsInCluster))+" cells")
    internalLines.append(
        "* Example occurence:")
    for cell in cellsInCluster:
        internalLines.append("*   "+cell.name)

    outputSP = open(outputDir+"/"+mergeCellName+'.sp', 'w')
    print('\n'.join(internalLines), file=outputSP)
    outputSP.close()
