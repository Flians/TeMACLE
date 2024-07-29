import re



class SPSubcircuit(object):
    def __init__(self, texts):
        self.texts = [line.replace('\n', '') for line in texts]
        self.name = self.texts[0].split(' ')[1]
        self.interfaces = []
        self.internalSignals = []

        for interface in self.texts[0].split(' ')[2:]:
            self.interfaces.append(interface)

        for line in self.texts[1:-1]:
            if line.find('M') == 0:
                eles = line.split(' ')[1:5]
                for ele in eles:
                    if (not ele in self.interfaces) and (not ele in self.internalSignals):
                        self.internalSignals.append(ele)

    def addInterface(self, ifName):
        self.interfaces.append(ifName)

    def addInternalSignal(self, innerName):
        self.internalSignals.append(innerName)

    def renamePrefix(self, prefix):
        for signal in self.interfaces + self.internalSignals:
            if signal in ['VCC', 'GND', 'VDD', 'VSS']:
                continue
            for i in range(0, len(self.texts)):
                eles = self.texts[i].split(' ')
                for j in range(0, len(eles)):
                    if eles[j] == signal:
                        eles[j] = prefix + signal
                self.texts[i] = ' '.join(eles)

        for i in range(0, len(self.interfaces)):
            if self.interfaces[i] in ['VCC', 'GND', 'VDD', 'VSS']:
                continue
            self.interfaces[i] = prefix + self.interfaces[i]

        for i in range(0, len(self.internalSignals)):
            if self.internalSignals[i] in ['VCC', 'GND', 'VDD', 'VSS']:
                continue
            self.internalSignals[i] = prefix + self.internalSignals[i]

        for i in range(0, len(self.texts)):
            eles = self.texts[i].split(' ')
            if len(eles) > 0:
                if eles[0].find('M') == 0:
                    eles[0] = 'M' + prefix + eles[0][1:]
                self.texts[i] = ' '.join(eles)

    def replaceInputPin(self, oriPinName, newPinName):
        replaced = False
        for i in range(0, len(self.texts)):
            eles = self.texts[i].split(' ')
            for j in range(0, len(eles)):
                if eles[j] == oriPinName:
                    eles[j] = newPinName
                    replaced = True
            self.texts[i] = ' '.join(eles)
        assert replaced
        for i in range(0, len(self.interfaces)):
            if self.interfaces[i] in ['VCC', 'GND', 'VDD', 'VSS']:
                continue
            if self.interfaces[i] == oriPinName:
                self.interfaces[i] = newPinName

    def print(self):
        for line in self.texts:
            print(line)


def loadSpiceSubcircuits(filePath):
    with open(filePath, 'r', encoding='utf-8') as spFile:
        lines = spFile.readlines()
        spiceSubcircuits = {}
        cur_spice = []
        flag = False
        for line in lines:
            line = line.strip()
            if not line or line[0] == '*':
                continue
            if re.search("^.SUBCKT ", line, re.IGNORECASE):
                flag = True
            if flag:
                cur_spice.append(line)
            if re.search("^.ENDS", line, re.IGNORECASE):
                flag = False
                newSubckt = SPSubcircuit(cur_spice)
                spiceSubcircuits[newSubckt.name] = newSubckt
                cur_spice.clear()

    return spiceSubcircuits


def exportSpiceNetlist(cluserSeq, subckts, mergeCellTypeId, outputDir):

    cellsInCluster = cluserSeq.patternClusters[0].cellsContained
    spiceList = []
    cell2orderId = dict()

    # rename signals and transistors
    for orderId, cell in enumerate(cellsInCluster):
        spiceList.append(SPSubcircuit(subckts[cell.stdCellType.typeName].texts))
        spiceList[-1].renamePrefix("cl" + str(orderId) + "#")
        cell2orderId[cell] = orderId

    # connect each input pins of each subcircuit
    for orderId, curCell in enumerate(cellsInCluster):
        for inputNet, inputPinName in zip(curCell.inputNets, curCell.inputPinRefNames):
            predCell = inputNet.predCell
            predPinName = inputNet.predPin
            if predCell in cell2orderId.keys():
                spiceList[orderId].replaceInputPin("cl" + str(orderId) + "#" + inputPinName, "cl" + str(cell2orderId[predCell]) + "#" + predPinName)

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
                if not succCell in cell2orderId.keys():
                    allSuccCellsInternal = False
            if allSuccCellsInternal:
                assert "cl" + str(orderId) + "#" + outputPinName in interfaceSet
                interfaceSet.remove("cl" + str(orderId) + "#" + outputPinName)

    mergeCellName = "COMPLEX" + str(mergeCellTypeId)
    interfaceList = list(interfaceSet)
    firstLine = ".subckt " + mergeCellName + " " + " ".join(interfaceList)
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
