import gdspy

from os import listdir
from os.path import isfile, join, dirname, abspath

STDCellNames = ["AND2X1", "AOI22X1", "CLKBUF1", "DFFNEGX1",
                    "FAX1", "INVX2", "LATCH", "NAND3X1", "OAI21X1", "OR2X2",
                    "XNOR2X1", "AND2X2", "BUFX2", "CLKBUF2", "DFFPOSX1", "HAX1",
                    "INVX4", "MUX2X1", "NOR2X1", "OAI22X1", "TBUFX1", "XOR2X1",
                    "AOI21X1", "BUFX4", "CLKBUF3", "DFFSR", "INVX1", "INVX8",
                    "NAND2X1", "NOR3X1", "OR2X1", "TBUFX2"]


def loadOrignalGSCL45nmGDS():
    gsclName2GDSSize = dict()
    for name in STDCellNames:
        gdsii = gdspy.GdsLibrary(
            infile=f'{dirname(abspath(__file__))}/../AutoCellLibX/originalGSCL45StdCells/{name}.gds')
        gsclName2GDSSize[name] = gdsii.cells[name].area(True)[(6, 0)]

    return gsclName2GDSSize


def loadAstranGDS():
    typeName2GDSSize = dict()
    GDSPath = f'{dirname(abspath(__file__))}/originalAstranStdCells/'
    gdsFiles = [f for f in listdir(GDSPath) if isfile(join(GDSPath, f)) and f.find(".gds") >= 0]
    for gdsFile in gdsFiles:
        logFileName = GDSPath + gdsFile.replace(".gds", ".Astranlog")
        logFile = open(logFileName, 'r')
        lines = logFile.readlines()
        logFile.close()

        for line in lines:
            if (line.find("-> Cell Size (W x H): ") >= 0):
                typeName2GDSSize[gdsFile.replace(".gds", "")] = float(line.replace("-> Cell Size (W x H): ", "").split("x")[0]) * 0.8 * 3.2

    return typeName2GDSSize

if __name__ == '__main__':
    gdsii = gdspy.GdsLibrary(
            infile=f'{dirname(abspath(__file__))}/outputs/multiplier/COMPLEX0.gds')
    pass
