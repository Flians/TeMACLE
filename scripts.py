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
bool_map((~A & ~B) | (~C & ~B), ~B & (~A | ~C))

# import gdstk
# The GDSII file is called a library, which contains multiple cells.
# lib = gdstk.read_gds('tools/gds_viewer/gds/ADDER_G0_14_15.gds')
# for cell in lib.cells:
#    cell.write_svg(f"{cell.name}.svg")
'''
import os
import shutil

src_path = 'outputs/iCell/full/'
des_path = 'benchmark/blif'
for cir in ['adder', 'arbiter', 'bar', 'cavlc', 'ctrl', 'dec', 'div', 'hyp', 'i2c', 'int2float', 'log2', 'max', 'mem_ctrl', 'multiplier', 'priority', 'router', 'sin', 'sqrt', 'square', 'voter']:
    # shutil.copyfile(os.path.join(src_path, cir, f'{cir}_init.blif'), os.path.join(des_path, f'{cir}.blif'))
    os.makedirs(f'outputs/iCell/K3/{cir}', exist_ok=True)
    open(f'outputs/iCell/K3/{cir}/best_{cir}.genlib', 'a').close()
    open(f'outputs/iCell/K3/{cir}/best_{cir}.lib', 'a').close()
'''

import sys

SCRIPT_DIR = os.path.dirname(os.path.abspath(__file__))
sys.path.append(os.path.join(SCRIPT_DIR, 'build/tools'))
import SynPy  # type: ignore

current_path = SCRIPT_DIR

'''
from liberty.parser import parse_liberty
from src.BLIFPreProc import writeLiberty, writeGenlib

# root_path = 'stdCellLib/asap7'
root_path = 'stdCellLib/gscl45nm'

# full_liberty = parse_liberty(open(os.path.join(root_path, 'asap7sc7p5t_SIMPLE_LVT_TT_nldm_211120.lib'), encoding='utf-8').read())
full_liberty = parse_liberty(open(os.path.join(root_path, 'gscl45nm.lib'), encoding='utf-8').read())
#for lib in ['asap7sc7p5t_AO_LVT_TT_nldm_211120.lib', 'asap7sc7p5t_OA_LVT_TT_nldm_211120.lib', 'asap7sc7p5t_SEQ_LVT_TT_nldm_220123.lib', 'asap7sc7p5t_INVBUF_LVT_TT_nldm_220122.lib']:
#    liberty = parse_liberty(open(os.path.join(root_path, lib), encoding='utf-8').read())
#    for cell_group in liberty.get_groups('cell'):
#        full_liberty.groups.append(cell_group)
K = 6
K_groups = []
for cell_group in full_liberty.get_groups('cell'):
    ipin = 0
    flag = True
    for pin in cell_group.get_groups('pin'):
        if pin.get_attribute(key="clock", default=None) == 'true':
            flag = False
            break
        if pin.get_attribute(key="direction", default=None) == 'input':
            ipin += 1
    if ipin <= K and flag:
        K_groups.append(cell_group)
full_liberty.groups = K_groups
#with open('stdCellLib/asap7/asap7_75t_L.lib', 'w', encoding='utf-8') as lib_writer:
#    lib_writer.write('\n'.join(writeLiberty(full_liberty)))
#writeGenlib(full_liberty, 'stdCellLib/asap7/asap7_75t_L.genlib')
writeGenlib(full_liberty, os.path.join(root_path, 'gscl45nm.genlib'))


ratioThr = 0.05
patternNodesThr = 5
#SCSynthesis = 'iCell'
SCSynthesis = 'Astran'
benchmarks = ['adder', 'arbiter', 'bar', 'cavlc', 'ctrl', 'dec', 'div', 'hyp', 'i2c', 'int2float', 'log2', 'max', 'mem_ctrl', 'multiplier', 'priority', 'router', 'sin', 'sqrt', 'square', 'voter']
#libs = {'adder': 'ADDER_G2_69_70_420', 'arbiter':'ARBITER_G2_43_213', 'bar':'BAR_G4_430_431', 'cavlc':'CAVLC_G4_16_28', 'ctrl':'CTRL_G3_42_81', 'dec':'DEC_G1_0_15', 'div':'DIV_G4_4_13358_13359_13360', 'hyp':'HYP_G4_0_501', 'i2c':'I2C_G4_22_25', 'int2float':'INT2FLOAT_G4_1_4_166', 'log2':'LOG2_G4_22_8690', 'max':'MAX_G4_25_28', 'mem_ctrl':'MEM_CTRL_G4_156_940', 'multiplier':'MULTIPLIER_G4_2_7331', 'priority':'PRIORITY_G3_0_684', 'router':'ROUTER_G4_31_98', 'sin':'SIN_G4_251_1778', 'sqrt':'SQRT_G4_5_25', 'square':'SQUARE_G4_2_90_92', 'voter':'VOTER_G4_3_785'}
#libs = {'adder': 'ADDER_G2_69_70_420', 'arbiter':'ARBITER_G4_6_7', 'bar':'BAR_G0_12_13_14', 'cavlc':'CAVLC_G4_0_152', 'ctrl':'CTRL_G3_9_10', 'dec':'DEC_G0_1_101', 'div':'DIV_G4_0_27247', 'hyp':'HYP_G4_98_582', 'i2c':'I2C_G4_15_153_154', 'int2float':'INT2FLOAT_G3_3_4_158', 'log2':'LOG2_G4_2_89', 'max':'MAX_G4_0_1', 'mem_ctrl':'MEM_CTRL_G4_249_250', 'multiplier':'MULTIPLIER_G4_12_7685', 'priority':'PRIORITY_G3_97_106', 'router':'ROUTER_G4_35_96', 'sin':'SIN_G4_30_450', 'sqrt':'SQRT_G4_99_102', 'square':'SQUARE_G4_19_20', 'voter':'VOTER_G4_8_9'}
#libs = {'adder': 'ADDER_G3_69_70_420', 'arbiter':'ARBITER_G4_4_1021', 'bar':'BAR_G0_12_13_14', 'cavlc':'CAVLC_G4_0_152', 'ctrl':'CTRL_G4_65_66', 'dec':'DEC_G0_1_101', 'div':'DIV_G4_0_27247', 'hyp':'HYP_G4_98_582', 'i2c':'I2C_G4_15_153_154', 'int2float':'INT2FLOAT_G3_3_4_158', 'log2':'LOG2_G4_2_89', 'max':'MAX_G4_0_1', 'mem_ctrl':'MEM_CTRL_G4_249_250', 'multiplier':'MULTIPLIER_G4_12_7685', 'priority':'PRIORITY_G3_97_106', 'router':'ROUTER_G4_35_96', 'sin':'SIN_G4_30_450', 'sqrt':'SQRT_G4_99_102', 'square':'SQUARE_G4_19_20', 'voter':'VOTER_G4_8_9'}
libs = {'adder': 'ADDER_G3_2_399_400_600', 'arbiter':'ARBITER_G4_7_6429', 'bar':'BAR_G4_361_362', 'cavlc':'CAVLC_G4_0_152', 'ctrl':'CTRL_G3_9_10', 'dec':'DEC_G0_1_101', 'div':'DIV_G4_0_29120_29371', 'hyp':'HYP_G4_98_582', 'i2c':'I2C_G4_15_149_150', 'int2float':'INT2FLOAT_G4_0_5_54', 'log2':'LOG2_G4_5_3389', 'max':'MAX_G4_13_15', 'mem_ctrl':'MEM_CTRL_G4_249_250', 'multiplier':'MULTIPLIER_G4_12_7685', 'priority':'PRIORITY_G3_4_450', 'router':'ROUTER_G4_28_86', 'sin':'SIN_G4_106_1233', 'sqrt':'SQRT_G4_202_340', 'square':'SQUARE_G4_19_20', 'voter':'VOTER_G4_8_9'}
for benchmarkName in benchmarks:
    print('=================================================================================\n', benchmarkName, '\n=================================================================================\n')
    outputPath = f'{current_path}/outputs/{SCSynthesis}/full/{benchmarkName}/'
    os.makedirs(outputPath, exist_ok=True)

    if SCSynthesis == 'iCell':
        initRes = SynPy.synthesis(f'{current_path}/benchmark/aig/{benchmarkName}.aig', 'stdCellLib/asap7/asap7_75t_L.genlib', f'outputs/{SCSynthesis}/K3/{ratioThr}_{patternNodesThr}/{benchmarkName}/{benchmarkName}.lib', f'{outputPath}/{benchmarkName}_init.blif')
        os.system(f'yosys -p "read_liberty -lib stdCellLib/asap7/asap7_75t_L.lib; read_blif {outputPath}/{benchmarkName}_init.blif; stat -liberty outputs/{SCSynthesis}/K3/{ratioThr}_{patternNodesThr}/{benchmarkName}/{benchmarkName}.lib; ltp;"')
    else:
        initRes = SynPy.synthesis(f'{current_path}/benchmark/aig/{benchmarkName}.aig', 'stdCellLib/gscl45nm/gscl45nm.genlib', 'stdCellLib/gscl45nm/gscl45nm.lib', f'{outputPath}/{benchmarkName}_init.blif')
        os.system(f'yosys -p "read_liberty -lib stdCellLib/gscl45nm/gscl45nm.lib; read_blif {outputPath}/{benchmarkName}_init.blif; stat -liberty stdCellLib/gscl45nm/gscl45nm.lib; ltp;"')
    if initRes[0] == -1:
        print('>>> initial mapping failed!')
        continue
    else:
        print('>>> initial mapping succeed with area=', initRes[0])
    """
    fullRes = SynPy.synthesis(
        f'{current_path}/benchmark/aig/{benchmarkName}.aig', 'stdCellLib/asap7/asap7sc7p5t_FULL_LVT_TT_nldm_28_K3.genlib', 'stdCellLib/asap7/asap7sc7p5t_FULL_LVT_TT_nldm_28_K3.lib', f'{outputPath}/{benchmarkName}_full.blif'
    )
    if fullRes[0] == -1:
        print('>>> full mapping failed!')
        continue
    else:
        print('>>> full mapping succeed with area=', fullRes[0])
    """
    temacleRes = SynPy.synthesis(f'{current_path}/benchmark/aig/{benchmarkName}.aig', f'outputs/{SCSynthesis}/K3/{ratioThr}_{patternNodesThr}/{benchmarkName}/{libs[benchmarkName]}.genlib', f'outputs/{SCSynthesis}/K3/{ratioThr}_{patternNodesThr}/{benchmarkName}/{libs[benchmarkName]}.lib', f'{outputPath}/{benchmarkName}_temacle.blif')
    os.system(f'yosys -p "read_liberty -lib outputs/{SCSynthesis}/K3/{ratioThr}_{patternNodesThr}/{benchmarkName}/{libs[benchmarkName]}.lib; read_blif {outputPath}/{benchmarkName}_temacle.blif; stat -liberty outputs/{SCSynthesis}/K3/{ratioThr}_{patternNodesThr}/{benchmarkName}/{libs[benchmarkName]}.lib; ltp;"')
    if temacleRes[0] == -1:
        print('>>> Temacle mapping failed!')
        continue
    else:
        print('>>> Temacle mapping succeed with area =', temacleRes[0])

    #saveArea_full = initRes[0] - fullRes[0]
    saveArea_temacle = initRes[0] - temacleRes[0]
    #print(f'{benchmarkName} full saveArea=({initRes[0]}-{fullRes[0]}) / {initRes[0]} = ', saveArea_full / initRes[0] * 100, '%')
    print(f'{benchmarkName} Temacle saveArea=({initRes[0]}-{temacleRes[0]}) / {initRes[0]} = ', saveArea_temacle / initRes[0] * 100, '%')


'''
ratioThr = 0.05
patternNodesThr = 5
#SCSynthesis = 'iCell'
#best_lib = 'ADDER_G2_69_70_420'
SCSynthesis = 'Astran'
best_lib = 'ADDER_G3_2_399_400_600'
for adder in ['full_adder_16', 'full_adder_32', 'full_adder_64', 'full_adder_128', 'full_adder_256']:
    outputPath = f'{current_path}/outputs/{SCSynthesis}/adder/{adder}/'
    os.makedirs(outputPath, exist_ok=True)
    if os.system(f'yosys -p "read_verilog {current_path}/benchmark/adder/{adder}.v; hierarchy -top {adder}; flatten; synth -top {adder}; aigmap; write_aiger {outputPath}/{adder}.aig;"'):
        print('>>> aig writing failed!')
        continue
    else:
        print('>>> aig writing succeed!')

    if SCSynthesis == 'iCell':
        initRes = SynPy.synthesis(f'{outputPath}/{adder}.aig', 'stdCellLib/asap7/asap7_75t_L.genlib', f'outputs/{SCSynthesis}/K3/{ratioThr}_{patternNodesThr}/adder/adder.lib', f'{outputPath}/{adder}_init.blif')
        os.system(f'yosys -p "read_liberty -lib stdCellLib/asap7/asap7_75t_L.lib; read_blif {outputPath}/{adder}_init.blif; stat -liberty outputs/{SCSynthesis}/K3/{ratioThr}_{patternNodesThr}/adder/adder.lib; ltp;"')
    else:
        initRes = SynPy.synthesis(f'{outputPath}/{adder}.aig', 'stdCellLib/gscl45nm/gscl45nm.genlib', f'outputs/{SCSynthesis}/K3/{ratioThr}_{patternNodesThr}/adder/adder.lib', f'{outputPath}/{adder}_init.blif')
        os.system(f'yosys -p "read_liberty -lib stdCellLib/gscl45nm/gscl45nm.lib; read_blif {outputPath}/{adder}_init.blif; stat -liberty outputs/{SCSynthesis}/K3/{ratioThr}_{patternNodesThr}/adder/adder.lib; ltp;"')
    if initRes[0] == -1:
        print('>>> initial mapping failed!')
        continue
    else:
        print('>>> initial mapping succeed with area =', initRes[0])

    temacleRes = SynPy.synthesis(f'{outputPath}/{adder}.aig', f'outputs/{SCSynthesis}/K3/{ratioThr}_{patternNodesThr}/adder/{best_lib}.genlib', f'outputs/{SCSynthesis}/K3/{ratioThr}_{patternNodesThr}/adder/{best_lib}.lib', f'{outputPath}/{adder}_temacle.blif')
    os.system(f'yosys -p "read_liberty -lib outputs/{SCSynthesis}/K3/{ratioThr}_{patternNodesThr}/adder/{best_lib}.lib; read_blif {outputPath}/{adder}_temacle.blif; stat -liberty outputs/{SCSynthesis}/K3/{ratioThr}_{patternNodesThr}/adder/{best_lib}.lib; ltp;"')
    if temacleRes[0] == -1:
        print('>>> Temacle mapping failed!')
        continue
    else:
        print('>>> Temacle mapping succeed with area =', temacleRes[0])

    print(f'{adder} initial mapping area = {initRes[0]}')
    print(f'{adder} Temacle mapping area = {temacleRes[0]}')
    print(f'{adder} Temacle saveArea = ({initRes[0]} - {temacleRes[0]}) / {initRes[0]} =', (initRes[0]-temacleRes[0]) / initRes[0] * 100, '%')

