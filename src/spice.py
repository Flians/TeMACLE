import string
import random
import re
import PySpice
import PySpice.Spice
import PySpice.Spice.Parser


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
                if cur_spice:
                    newSubckt = SPSubcircuit(cur_spice)
                    spiceSubcircuits[newSubckt.name.split('_')[0]] = newSubckt
                cur_spice.clear()
            if flag:
                cur_spice.append(line)
            if re.search("^.ENDS ", line, re.IGNORECASE):
                flag = False

    return spiceSubcircuits


def exportSpiceNetlist(cluserSeq, subckts, patternTraceId, ipinMap: dict, opins: list, outputDir, cindex: int = 0):
    cellsInCluster = cluserSeq.patternClusters[cindex].cellsContained
    spiceList = []
    cell2orderId = {}
    rootNode = None
    ranStr = id_generator()

    # rename signals and transistors
    for orderId, cell in enumerate(cellsInCluster):
        spiceList.append(SPSubcircuit(subckts[cell.stdCellType.typeName].texts))
        spiceList[-1].renamePrefix("cl" + ranStr + "_" + str(orderId) + "#")
        cell2orderId[cell] = orderId
        if cell.id == cluserSeq.patternClusters[cindex].rootId:
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
            if predCell in cell2orderId:
                spiceList[orderId].replaceInputPin("cl" + ranStr + "_" + str(orderId) + "#" + inputPinName, "cl" + ranStr + "_" + str(cell2orderId[predCell]) + "#" + predPinName)
    for opin in opins:
        spiceList[rootNode[1]].replaceInputPin("cl" + ranStr + "_" + str(orderId) + "#" + opin, opin)  # type: ignore

    mergeCellName = str(patternTraceId)
    if not ({'VDD', 'VSS'} - set(spiceList[0].interfaces)):
        interfaceList = list(ipinMap.values()) + ['VDD', 'VSS'] + opins
    else:
        interfaceList = list(ipinMap.values()) + opins + ['VCC', 'GND']
    # mergeCellName must be upper letters for the default Astran
    firstLine = ".SUBCKT " + mergeCellName + ' ' + ' '.join(interfaceList)
    internalLines = [firstLine]
    for ele in spiceList:
        internalLines = internalLines + ele.texts[1:-1]
    lastLine = ".ENDS "  # + mergeCellName

    internalLines.append(lastLine)
    internalLines.append("* pattern code: " + cluserSeq.patternExtensionTrace)
    internalLines.append("* " + str(len(cluserSeq.patternClusters)) + " occurrences in design ")
    internalLines.append("* each contains " + str(len(cellsInCluster)) + " cells")
    internalLines.append("* Example occurence:")
    for cell in cellsInCluster:
        internalLines.append("*   " + cell.name)

    with open(outputDir + "/" + mergeCellName + '.sp', 'w', encoding='utf-8') as outputSP:
        print('\n'.join(internalLines), file=outputSP)


if __name__ == '__main__':
    from PySpice.Spice.Netlist import Circuit, SubCircuit
    from PySpice.Spice.Parser import SpiceParser

    parser = SpiceParser('stdCellLib/asap7/asap7_75t_L.sp')
    AND2x2 = parser.subcircuits[2]
    OR2x2 = parser.subcircuits[182]
    circuit = SubCircuit('ADDER_G0_1_4')
    circuit.subcircuit(AND2x2)
    circuit.subcircuit(OR2x2)
    circuit.X('1', AND2x2.name, 'A', 'B', 'VDD', 'VSS', 'n1')
    circuit.X('2', OR2x2.name, 'C', 'n1', 'VDD', 'VSS', 'Y')
    print(circuit)
    pass
