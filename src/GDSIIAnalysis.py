import gdspy

from os.path import dirname, abspath
from Astran import loadAstranArea
from iCell import loadiCellArea

STDCellNames = ['AND2x2', 'BUFx2', 'INVx1', 'NAND2x1', 'NOR2x1', 'OR2x2', 'TIEHIx1', 'TIELOx1', 'XNOR2x1', 'XOR2x1']


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
