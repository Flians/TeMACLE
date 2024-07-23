import gdspy

from os.path import dirname, abspath
from Astran import loadAstranArea
from iCell import loadiCellArea

STDCellNames = ['AND2x2', 'BUFx2', 'INVx1', 'NAND2x1', 'NOR2x1', 'OR2x2', 'TIEHIx1', 'TIELOx1', 'XNOR2x1', 'XOR2x1']
STDCellNames = [
    "AND2X1",
    "AOI22X1",
    "CLKBUF1",
    "DFFNEGX1",
    "FAX1",
    "INVX2",
    "LATCH",
    "NAND3X1",
    "OAI21X1",
    "OR2X2",
    "XNOR2X1",
    "AND2X2",
    "BUFX2",
    "CLKBUF2",
    "DFFPOSX1",
    "HAX1",
    "INVX4",
    "MUX2X1",
    "NOR2X1",
    "OAI22X1",
    "TBUFX1",
    "XOR2X1",
    "AOI21X1",
    "BUFX4",
    "CLKBUF3",
    "DFFSR",
    "INVX1",
    "INVX8",
    "NAND2X1",
    "NOR3X1",
    "OR2X1",
    "TBUFX2",
]


def loadOrignalGSCL45nmGDS():
    gsclName2GDSSize = {}
    for name in STDCellNames:
        gdsii = gdspy.GdsLibrary(infile=f'{dirname(abspath(__file__))}/../AutoCellLibX/originalGSCL45StdCells/{name.upper()}.gds')
        gsclName2GDSSize[name] = gdsii.cells[name].area(True)[(6, 0)]

    return gsclName2GDSSize


def loadAstranGDS():
    typeName2GDSSize = {}
    GDSPath = f'{dirname(abspath(__file__))}/originalAstranStdCells/'
    for name in STDCellNames:
        cur_area = loadAstranArea(GDSPath, name)
        if cur_area is not False:
            typeName2GDSSize[name] = cur_area

    return typeName2GDSSize


def loadiCellGDS():
    typeName2GDSSize = {}
    GDSPath = f'{dirname(abspath(__file__))}/originaliCellStdCells/'
    for name in STDCellNames:
        cur_area = loadiCellArea(GDSPath, f'{name}_ASAP7_75t_L')
        if cur_area is not False:
            typeName2GDSSize[name] = cur_area

    return typeName2GDSSize


if __name__ == '__main__':
    gdsii = gdspy.GdsLibrary(infile=f'{dirname(abspath(__file__))}/outputs/multiplier/COMPLEX0.gds')
    pass
