.SUBCKT MULTIPLIER_G3_15_575 B A C Y VCC GND
MclPR7IA6_0#0 clPR7IA6_0#Y A VCC VCC PMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclPR7IA6_0#1 VCC C clPR7IA6_0#Y VCC PMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclPR7IA6_0#2 clPR7IA6_0#a_9_6# A GND GND NMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclPR7IA6_0#3 clPR7IA6_0#Y C clPR7IA6_0#a_9_6# GND NMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclPR7IA6_1#0 Y clPR7IA6_0#Y VCC VCC PMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclPR7IA6_1#1 VCC B Y VCC PMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclPR7IA6_1#2 clPR7IA6_1#a_9_6# clPR7IA6_0#Y GND GND NMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclPR7IA6_1#3 Y B clPR7IA6_1#a_9_6# GND NMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS
* pattern code: 3|3|MULTIPLIER_G0_2_190|INVX1=1|INPUT:Y-INVX1:A=1|INPUT:Y-MULTIPLIER_G0_2_190:B=1|INPUT:Y-MULTIPLIER_G0_2_190:C=1|INVX1:Y-MULTIPLIER_G0_2_190:A=1|11110
* 772 occurrences in design
* each contains 3 cells
* pin map: {'n741': 'A', 'n801': 'B', 'x65': 'C'} {'n802': 'Y'}
* function: ~B|(A&C)
* Example occurence:
*   .subckt INVX1 A=x65 Y=n194
*   .subckt MULTIPLIER_G0_2_190 A=n194 B=n801 C=n741 Y=n802
