.SUBCKT VOTER_G3_4_5 B A C Y VCC GND
MclL9WZGH_0#0 clL9WZGH_0#Y C VCC VCC PMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclL9WZGH_0#1 clL9WZGH_0#Y C GND GND NMOS W=0.25u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclL9WZGH_1#clVZUYV4_0#0 clL9WZGH_1#clVZUYV4_0#Y A VCC VCC PMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclL9WZGH_1#clVZUYV4_0#1 clL9WZGH_1#clVZUYV4_0#Y A GND GND NMOS W=0.25u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclL9WZGH_1#clVZUYV4_1#0 VCC clL9WZGH_1#clVZUYV4_0#Y clL9WZGH_1#clVZUYV4_1#a_2_54# VCC PMOS W=1u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclL9WZGH_1#clVZUYV4_1#1 clL9WZGH_1#clVZUYV4_1#a_2_54# clL9WZGH_0#Y VCC VCC PMOS W=1u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclL9WZGH_1#clVZUYV4_1#2 Y B clL9WZGH_1#clVZUYV4_1#a_2_54# VCC PMOS W=1u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclL9WZGH_1#clVZUYV4_1#3 clL9WZGH_1#clVZUYV4_1#a_12_6# clL9WZGH_1#clVZUYV4_0#Y GND GND NMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclL9WZGH_1#clVZUYV4_1#4 Y clL9WZGH_0#Y clL9WZGH_1#clVZUYV4_1#a_12_6# GND NMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclL9WZGH_1#clVZUYV4_1#5 GND B Y GND NMOS W=0.25u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS
* pattern code: 3|3|VOTER_G2_3_5|INVX1=1|INPUT:Y-INVX1:A=1|INPUT:Y-VOTER_G2_3_5:B=1|INPUT:Y-VOTER_G2_3_5:C=1|INVX1:Y-VOTER_G2_3_5:A=1|11110
* 349 occurrences in design
* each contains 3 cells
* pin map: {'x721': 'A', 'n6403': 'B', 'x722': 'C'} {'n6404': 'Y'}
* function: ~B&(A|C)
* Example occurence:
*   .subckt INVX1 A=x722 Y=n1243
*   .subckt VOTER_G2_3_5 A=n1243 B=n6403 C=x721 Y=n6404
