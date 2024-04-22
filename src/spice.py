import string
import random
import re


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
            if flag:
                cur_spice.append(line)
            if re.search("^.ENDS", line, re.IGNORECASE):
                flag = False
                newSubckt = SPSubcircuit(cur_spice)
                spiceSubcircuits[newSubckt.name] = newSubckt
                cur_spice.clear()

    return spiceSubcircuits


def exportSpiceNetlist(cluserSeq, subckts, patternTraceId, ipinMap: dict, opinMap: dict, func: str, outputPath: str, cindex: int = 0):
    cellsInCluster = cluserSeq.patternClusters[cindex].cellsContained
    spiceList = []
    cell2orderId = {}
    ranStr = id_generator()
    opins = []

    # rename signals and transistors
    for orderId, cell in enumerate(cellsInCluster):
        spiceList.append(SPSubcircuit(subckts[cell.stdCellType.typeName].texts))
        spiceList[-1].renamePrefix("cl" + ranStr + "_" + str(orderId) + "#")
        cell2orderId[cell] = orderId

    # connect each input pins of each subcircuit
    for orderId, curCell in enumerate(cellsInCluster):
        for inputNet, inputPinName in zip(curCell.inputNets, curCell.inputPinRefNames):
            predCell = inputNet.predCell
            predPinName = inputNet.predPin
            # rename interfaces
            newPin = ipinMap.get(inputNet.name, None)
            if newPin:
                spiceList[orderId].replaceInputPin("cl" + ranStr + "_" + str(orderId) + "#" + inputPinName, newPin)
            if predCell in cell2orderId:
                spiceList[orderId].replaceInputPin("cl" + ranStr + "_" + str(orderId) + "#" + inputPinName, "cl" + ranStr + "_" + str(cell2orderId[predCell]) + "#" + predPinName)
        for outputNet, outputPinName in zip(curCell.outputNets, curCell.outputPinRefNames):
            # rename interfaces
            newPin = opinMap.get(outputNet.name, None)
            if newPin:
                spiceList[orderId].replaceInputPin("cl" + ranStr + "_" + str(orderId) + "#" + outputPinName, newPin)
                opins.append(newPin)

    mergeCellName = str(patternTraceId).upper()
    if not ({'VDD', 'VSS'} - set(spiceList[0].interfaces)):
        interfaceList = list(ipinMap.values()) + ['VDD', 'VSS'] + opins
    else:
        interfaceList = list(ipinMap.values()) + opins + ['VCC', 'GND']
    # mergeCellName must be upper letters for the default Astran
    firstLine = f'.SUBCKT {mergeCellName} {" ".join(interfaceList)}'
    internalLines = [firstLine]
    for ele in spiceList:
        internalLines = internalLines + ele.texts[1:-1]
    lastLine = ".ENDS "  # + mergeCellName

    internalLines.append(lastLine)
    internalLines.append(f"* pattern code: {cluserSeq.patternExtensionTrace}")
    internalLines.append(f"* {len(cluserSeq.patternClusters)} occurrences in design")
    internalLines.append(f"* each contains {len(cellsInCluster)} cells")
    internalLines.append(f"* pin map: {ipinMap} {opinMap}")
    internalLines.append(f"* function: {func}")
    internalLines.append("* Example occurence:")
    for cell in cellsInCluster:
        internalLines.append(f"*   {cell.name}")

    with open(outputPath, 'w', encoding='utf-8') as outputSP:
        print('\n'.join(internalLines), file=outputSP)


def exportSpiceNetlistByCopy(clusterSeq, extendCellSpice, patternTraceId, nnode, pin_map: dict, ipinMap: dict, opinMap: dict, func: str, outputPath: str, cindex: int = 0):
    extendCellSpice.name = patternTraceId
    ranStr = id_generator()
    new_pin_map = {}
    for old_var, new_var in pin_map.items():
        if old_var.name != new_var.name:
            extendCellSpice.replaceInputPin(old_var.name, f'{ranStr}_{old_var.name}')
            new_pin_map[f'{ranStr}_{old_var.name}'] = new_var.name
    for old_name, new_name in new_pin_map.items():
        extendCellSpice.replaceInputPin(old_name, new_name)
    with open(outputPath, 'w', encoding='utf-8') as outputSP:  # change the name of .SUBCKT
        firstLine = f'.SUBCKT {patternTraceId} {" ".join(extendCellSpice.interfaces)}'
        internalLines = [firstLine] + extendCellSpice.texts[1:]
        internalLines.append(f"* pattern code: {clusterSeq.patternExtensionTrace}")
        internalLines.append(f"* {len(clusterSeq.patternClusters)} occurrences in design")
        internalLines.append(f"* each contains {nnode} cells")
        internalLines.append(f"* pin map: {ipinMap} {opinMap}")
        internalLines.append(f"* function: {func}")
        internalLines.append("* Example occurence:")
        for cell in clusterSeq.patternClusters[cindex].cellsContained:
            internalLines.append(f"*   {cell.name}")
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
