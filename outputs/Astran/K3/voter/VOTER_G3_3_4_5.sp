.SUBCKT VOTER_G3_3_4_5 A B C Y VCC GND
MclND2XTM_0#0 clND2XTM_0#Y C VCC VCC PMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclND2XTM_0#1 VCC B clND2XTM_0#Y VCC PMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclND2XTM_0#2 clND2XTM_0#a_9_6# C GND GND NMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclND2XTM_0#3 clND2XTM_0#Y B clND2XTM_0#a_9_6# GND NMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclND2XTM_1#0 VCC C clND2XTM_1#a_2_6# VCC PMOS W=1u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclND2XTM_1#1 clND2XTM_1#a_18_54# clND2XTM_1#a_12_41# VCC VCC PMOS W=1u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclND2XTM_1#2 clND2XTM_1#Y clND2XTM_1#a_2_6# clND2XTM_1#a_18_54# VCC PMOS W=1u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclND2XTM_1#3 clND2XTM_1#a_35_54# C clND2XTM_1#Y VCC PMOS W=1u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclND2XTM_1#4 VCC B clND2XTM_1#a_35_54# VCC PMOS W=1u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclND2XTM_1#5 clND2XTM_1#a_12_41# B VCC VCC PMOS W=1u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclND2XTM_1#6 GND C clND2XTM_1#a_2_6# GND NMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclND2XTM_1#7 clND2XTM_1#a_18_6# clND2XTM_1#a_12_41# GND GND NMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclND2XTM_1#8 clND2XTM_1#Y C clND2XTM_1#a_18_6# GND NMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclND2XTM_1#9 clND2XTM_1#a_35_6# clND2XTM_1#a_2_6# clND2XTM_1#Y GND NMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclND2XTM_1#10 GND B clND2XTM_1#a_35_6# GND NMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclND2XTM_1#11 clND2XTM_1#a_12_41# B GND GND NMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclND2XTM_2#clQKCCK2_0#0 clND2XTM_2#clQKCCK2_0#Y A VCC VCC PMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclND2XTM_2#clQKCCK2_0#1 clND2XTM_2#clQKCCK2_0#Y A GND GND NMOS W=0.25u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclND2XTM_2#clQKCCK2_1#0 clND2XTM_2#clQKCCK2_1#a_9_54# clND2XTM_1#Y VCC VCC PMOS W=1u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclND2XTM_2#clQKCCK2_1#1 Y clND2XTM_2#clQKCCK2_0#Y clND2XTM_2#clQKCCK2_1#a_9_54# VCC PMOS W=1u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclND2XTM_2#clQKCCK2_1#2 VCC clND2XTM_0#Y Y VCC PMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclND2XTM_2#clQKCCK2_1#3 GND clND2XTM_1#Y clND2XTM_2#clQKCCK2_1#a_2_6# GND NMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclND2XTM_2#clQKCCK2_1#4 clND2XTM_2#clQKCCK2_1#a_2_6# clND2XTM_2#clQKCCK2_0#Y GND GND NMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclND2XTM_2#clQKCCK2_1#5 Y clND2XTM_0#Y clND2XTM_2#clQKCCK2_1#a_2_6# GND NMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS
* pattern code: 4|3|VOTER_G2_3_5|AOI21X1=1|INVX1=1|AOI21X1:Y-VOTER_G2_3_5:B=1|INPUT:Y-AOI21X1:A,B=2|INPUT:Y-AOI21X1:C=1|INPUT:Y-INVX1:A=1|INPUT:Y-VOTER_G2_3_5:C=1|INVX1:Y-VOTER_G2_3_5:A=1|112210
* 337 occurrences in design
* each contains 4 cells
* pin map: {'x721': 'A', 'x723': 'B', 'x722': 'C'} {'n6404': 'Y'}
* function: (A&B)|(A&C)|(B&C)
* Example occurence:
*   .subckt AOI21X1 A=x721 B=x722 C=x723 Y=n6403
*   .subckt INVX1 A=x722 Y=n1243
*   .subckt VOTER_G2_3_5 A=n1243 B=n6403 C=x721 Y=n6404
