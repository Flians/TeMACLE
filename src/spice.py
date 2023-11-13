import string
import random

def id_generator(size=6, chars=string.ascii_uppercase + string.digits):
    return ''.join(random.choice(chars) for _ in range(size))


class SPSubcircuit(object):
    def __init__(self, texts):
        self.texts = [line.replace('\n', '') for line in texts]
        self.name = self.texts[0].split(' ')[1]
        self.interfaces = []
        self.internalSignals = []

        for interface in self.texts[0].split(' ')[2:]:
            self.interfaces.append(interface)

        for line in self.texts[1:-1]:
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
        for signal in self.interfaces + self.internalSignals:
            if (signal == 'VCC' or signal == 'GND'):
                continue
            for i in range(0, len(self.texts)):
                eles = self.texts[i].split(' ')
                for j in range(0, len(eles)):
                    if (eles[j] == signal):
                        eles[j] = prefix + signal
                self.texts[i] = ' '.join(eles)

        for i in range(0, len(self.interfaces)):
            if (self.interfaces[i] == 'VCC' or self.interfaces[i] == 'GND'):
                continue
            self.interfaces[i] = prefix + self.interfaces[i]

        for i in range(0, len(self.internalSignals)):
            if (self.internalSignals[i] == 'VCC' or self.internalSignals[i] == 'GND'):
                continue
            self.internalSignals[i] = prefix + self.internalSignals[i]

        for i in range(0, len(self.texts)):
            eles = self.texts[i].split(' ')
            if (len(eles) > 0):
                if (eles[0].find('M') == 0):
                    eles[0] = 'M' + prefix + eles[0][1:]
                self.texts[i] = ' '.join(eles)

    def replaceInputPin(self, oriPinName, newPinName):
        replaced = False
        for i in range(0, len(self.texts)):
            eles = self.texts[i].split(' ')
            for j in range(0, len(eles)):
                if (eles[j] == oriPinName):
                    eles[j] = newPinName
                    replaced = True
            self.texts[i] = ' '.join(eles)
        assert (replaced)
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
        if (lines[lineId].strip() and lines[lineId].strip()[0] != '*'
             and lines[lineId].find(".subckt ") >= 0):
            beginLineId = lineId
            while (lines[lineId].find(".ends ") < 0):
                lineId += 1
            endLineId = lineId
            newSubckt = SPSubcircuit(lines[beginLineId:endLineId + 1])
            spiceSubcircuits[newSubckt.name] = newSubckt

        lineId += 1

    return spiceSubcircuits

def exportSpiceNetlist(cluserSeq, subckts, patternTraceId, ipinMap:dict, opins:list, outputDir):
    cellsInCluster = cluserSeq.patternClusters[0].cellsContained
    spiceList = []
    cell2orderId = dict()
    rootNode = None
    ranStr = id_generator()

    # rename signals and transistors
    for orderId, cell in enumerate(cellsInCluster):
        spiceList.append(SPSubcircuit(subckts[cell.stdCellType.typeName].texts))
        spiceList[-1].renamePrefix("cl" + ranStr + "_" + str(orderId) + "#")
        cell2orderId[cell] = orderId
        if cell.id == cluserSeq.patternClusters[0].rootId:
            rootNode = (cell, orderId)

    # connect each input pins of each subcircuit
    for orderId, curCell in enumerate(cellsInCluster):
        for inputNet, inputPinName in zip(curCell.inputNets, curCell.inputPinRefNames):
            predCell = inputNet.predCell
            predPinName = inputNet.predPin
            # rename interfaces
            newPin = ipinMap.get(f'({predPinName}_{predCell.id})', None)
            if newPin:
                spiceList[orderId].replaceInputPin("cl" + ranStr + "_" + str(orderId) + "#" + inputPinName, newPin)
            if (predCell in cell2orderId.keys()):
                spiceList[orderId].replaceInputPin("cl" + ranStr + "_" + str(orderId) + "#" + inputPinName, "cl" + ranStr + "_" + str(cell2orderId[predCell]) + "#" + predPinName)
    for opin in opins:
        spiceList[rootNode[1]].replaceInputPin("cl" + ranStr + "_" + str(orderId) + "#" + opin, opin)

    mergeCellName = str(patternTraceId)
    interfaceList = list(ipinMap.values()) + opins + ['VCC', 'GND']
    # mergeCellName must be upper letters for the default Astran
    firstLine = ".subckt " + mergeCellName + ' ' + ' '.join(interfaceList)
    internalLines = [firstLine]
    for ele in spiceList:
        internalLines = internalLines + ele.texts[1:-1]
    lastLine = ".ends " + mergeCellName

    internalLines.append(lastLine)
    internalLines.append("* pattern code: " + cluserSeq.patternExtensionTrace)
    internalLines.append("* " + str(len(cluserSeq.patternClusters)) + " occurrences in design ")
    internalLines.append("* each contains " + str(len(cellsInCluster)) + " cells")
    internalLines.append("* Example occurence:")
    for cell in cellsInCluster:
        internalLines.append("*   " + cell.name)

    outputSP = open(outputDir + "/" + mergeCellName + '.sp', 'w')
    print('\n'.join(internalLines), file=outputSP)
    outputSP.close()
