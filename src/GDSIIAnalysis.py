import gdspy

from os.path import dirname, abspath
from Astran import loadAstranArea
from iCell import loadiCellArea


def loadOrignalGSCL45nmGDS(STDCellNames:list[str]):
    gsclName2GDSSize = {}
    for name in STDCellNames:
        gdsii = gdspy.GdsLibrary(infile=f'{dirname(abspath(__file__))}/../AutoCellLibX/originalGSCL45StdCells/{name.upper()}.gds')
        gsclName2GDSSize[name] = gdsii.cells[name].area(True)[(6, 0)]

    return gsclName2GDSSize


def loadAstranGDS(STDCellNames:list[str]):
    typeName2GDSSize = {}
    GDSPath = f'{dirname(abspath(__file__))}/originalAstranStdCells/'
    for name in STDCellNames:
        cur_area = loadAstranArea(GDSPath, name)
        if cur_area >= 0:
            typeName2GDSSize[name] = cur_area

    return typeName2GDSSize


def loadiCellGDS(STDCellNames:list[str]):
    typeName2GDSSize = {}
    GDSPath = f'{dirname(abspath(__file__))}/originaliCellStdCells/'
    for name in STDCellNames:
        cur_area = loadiCellArea(GDSPath, f'{name}_ASAP7_75t_L')
        if cur_area >= 0:
            typeName2GDSSize[name] = cur_area

    return typeName2GDSSize


if __name__ == '__main__':
    gdsii = gdspy.GdsLibrary(infile=f'{dirname(abspath(__file__))}/outputs/multiplier/COMPLEX0.gds')
    pass
