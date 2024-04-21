name_map = {
    'ADDER_G0_1_4': 'Y=(A&B)|C;2',
    'ADDER_G0_4_7': 'Y=(A|B)&C;2',
    'ADDER_G0_13_17': 'Y=A|B|C;2',
    'ADDER_G0_14_15': '(A&B&C)|(A&~B&~C)|(~A&B&~C)|(~A&~B&C);2',
    'ARBITER_G1_0_299': 'Y=~(~A|B);2',
    'ARBITER_G1_1_6738': 'Y=~A|B;2',
    'ARBITER_G2_132_133': 'Y=A&B&C;2',
    'BAR_G0_0_25': 'Y=~A&B;2',
}
import os

fileDir = 'stdCellLib/asap7/extend'

'''
types = ['.iCelllog', '.png', '.run', '.sp']
for oname, nname in name_map.items():
    for item in types:
        if os.path.exists(os.path.join(fileDir, f'{oname}{item}')):
            os.rename(os.path.join(fileDir, f'{oname}{item}'), os.path.join(fileDir, f'{nname}{item}'))

for item in os.listdir(fileDir):
    if item in name_map:
        os.rename(os.path.join(fileDir, item), os.path.join(fileDir, item[2:]))
'''

from sympy import Basic, symbols, simplify_logic, bool_map, var
from sympy.logic.boolalg import Xnor, Xor, Or, And, Nor

A, B, C = symbols('A,B,C')
bool_map(A & (~B | ~C), And(A, ~And(B, C)))
bool_map(~B & (C | ~A), ~B & (A | ~C))


# import gdstk
# The GDSII file is called a library, which contains multiple cells.
# lib = gdstk.read_gds('tools/gds_viewer/gds/ADDER_G0_14_15.gds')
# for cell in lib.cells:
#    cell.write_svg(f"{cell.name}.svg")

'''
import os
import shutil

src_path = 'src/outputs/iCell/K3/'
des_path = 'benchmark/blif'
for cir in ['adder', 'arbiter', 'bar', 'cavlc', 'ctrl', 'dec', 'div', 'hyp', 'i2c', 'int2float', 'log2', 'max', 'mem_ctrl', 'multiplier', 'priority', 'router', 'sin', 'sqrt', 'square', 'voter']:
    shutil.copyfile(os.path.join(src_path, cir, f'{cir}.blif'), os.path.join(des_path, f'{cir}.blif'))
'''

import sys

SCRIPT_DIR = os.path.dirname(os.path.abspath(__file__))
sys.path.append(os.path.join(SCRIPT_DIR, 'build/tools'))
import SynPy  # type: ignore

current_path = SCRIPT_DIR

'''
from liberty.parser import parse_liberty
from src.BLIFPreProc import writeLiberty, writeGenlib

root_path = '/home/flynn/Downloads/asap7sc7p5t_28-main/LIB/NLDM/'

full_liberty = parse_liberty(open(os.path.join(root_path, 'asap7sc7p5t_SIMPLE_LVT_TT_nldm_211120.lib'), encoding='utf-8').read())

for lib in ['asap7sc7p5t_AO_LVT_TT_nldm_211120.lib', 'asap7sc7p5t_OA_LVT_TT_nldm_211120.lib', 'asap7sc7p5t_SEQ_LVT_TT_nldm_220123.lib', 'asap7sc7p5t_INVBUF_LVT_TT_nldm_220122.lib']:
    liberty = parse_liberty(open(os.path.join(root_path, lib), encoding='utf-8').read())
    for cell_group in liberty.get_groups('cell'):
        full_liberty.groups.append(cell_group)
with open('stdCellLib/asap7/asap7sc7p5t_FULL_LVT_TT_nldm_28.lib', 'w', encoding='utf-8') as lib_writer:
    lib_writer.write('\n'.join(writeLiberty(full_liberty)))
writeGenlib(full_liberty, 'stdCellLib/asap7/asap7sc7p5t_FULL_LVT_TT_nldm_28.genlib')


benchmarks = ['adder', 'arbiter', 'bar', 'cavlc', 'ctrl', 'dec', 'div', 'hyp', 'i2c', 'int2float', 'log2', 'max', 'mem_ctrl', 'multiplier', 'priority', 'router', 'sin', 'sqrt', 'square', 'voter']
for benchmarkName in benchmarks:
    print('=================================================================================\n', benchmarkName, '\n=================================================================================\n')
    outputPath = f'{current_path}/outputs/iCell/full/{benchmarkName}/'
    os.makedirs(outputPath, exist_ok=True)
    initRes = SynPy.synthesis(f'{current_path}/benchmark/aig/{benchmarkName}.aig', 'stdCellLib/asap7/asap7_75t_L.genlib', 'stdCellLib/asap7/asap7_75t_L.lib', f'{outputPath}/{benchmarkName}_init.blif')
    if initRes[0] == -1:
        print('>>> initial mapping failed!')
        continue
    else:
        print('>>> initial mapping succeed!')

    fullRes = SynPy.synthesis(f'{current_path}/benchmark/aig/{benchmarkName}.aig', 'stdCellLib/asap7/asap7sc7p5t_FULL_LVT_TT_nldm_28.genlib', 'stdCellLib/asap7/asap7sc7p5t_FULL_LVT_TT_nldm_28.lib', f'{outputPath}/{benchmarkName}_full.blif')
    if fullRes[0] == -1:
        print('>>> full mapping failed!')
        continue
    else:
        print('>>> full mapping succeed!')
    saveArea = initRes[0] - fullRes[0]
    print(f'{benchmarkName} saveArea=({initRes[0]}-{fullRes[0]}) / {fullRes[0]} = ', saveArea / initRes[0] * 100, '%')
'''


for adder in ['full_adder_16', 'full_adder_32', 'full_adder_64', 'full_adder_256']:
    outputPath = f'{current_path}/outputs/iCell/adder/{adder}/'
    os.makedirs(outputPath, exist_ok=True)
    if os.system(f'yosys -p "read_verilog {current_path}/benchmark/adder/{adder}.v; hierarchy -top {adder}; flatten; synth -top {adder}; abc -g AND; write_aiger {outputPath}/{adder}.aig;"'):
        print('>>> aig writing failed!')
        continue
    else:
        print('>>> aig writing succeed!')
    initRes = SynPy.synthesis(f'{outputPath}/{adder}.aig', 'stdCellLib/asap7/asap7_75t_L.genlib', 'stdCellLib/asap7/asap7_75t_L.lib', f'{outputPath}/{adder}_init.blif')
    if initRes[0] == -1:
        print('>>> initial mapping failed!')
        continue
    else:
        print('>>> initial mapping succeed with area =', initRes[0])

    fullRes = SynPy.synthesis(f'{outputPath}/{adder}.aig', 'stdCellLib/asap7/asap7sc7p5t_FULL_LVT_TT_nldm_28.genlib', 'stdCellLib/asap7/asap7sc7p5t_FULL_LVT_TT_nldm_28.lib', f'{outputPath}/{adder}_full.blif')
    if fullRes[0] == -1:
        print('>>> full mapping failed!')
        continue
    else:
        print('>>> full mapping succeed with area =', fullRes[0])

    temacleRes = SynPy.synthesis(f'{outputPath}/{adder}.aig', 'benchmark/adder/adder.genlib', 'benchmark/adder/adder.lib', f'{outputPath}/{adder}_temacle.blif')
    if temacleRes[0] == -1:
        print('>>> Temacle mapping failed!')
        continue
    else:
        print('>>> Temacle mapping succeed with area =', temacleRes[0])

    print(f'{adder} initial mapping area = {initRes[0]}')
    print(f'{adder} full mapping area = {fullRes[0]}')
    print(f'{adder} Temacle mapping area = {temacleRes[0]}')
