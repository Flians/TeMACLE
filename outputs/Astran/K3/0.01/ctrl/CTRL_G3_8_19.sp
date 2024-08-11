.SUBCKT CTRL_G3_8_19 A B C Y VCC GND
MclHP93FN_0#0 clHP93FN_0#Y C VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclHP93FN_0#1 clHP93FN_0#Y C GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclHP93FN_1#clOQD6G0_0#0 clHP93FN_1#clOQD6G0_0#Y B VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclHP93FN_1#clOQD6G0_0#1 clHP93FN_1#clOQD6G0_0#Y B GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclHP93FN_1#clOQD6G0_1#0 clHP93FN_1#clOQD6G0_1#Y A VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclHP93FN_1#clOQD6G0_1#1 clHP93FN_1#clOQD6G0_1#Y A GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclHP93FN_1#clOQD6G0_2#0 VCC clHP93FN_1#clOQD6G0_0#Y clHP93FN_1#clOQD6G0_2#a_2_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclHP93FN_1#clOQD6G0_2#1 clHP93FN_1#clOQD6G0_2#a_2_54# clHP93FN_0#Y VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclHP93FN_1#clOQD6G0_2#2 Y clHP93FN_1#clOQD6G0_1#Y clHP93FN_1#clOQD6G0_2#a_2_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclHP93FN_1#clOQD6G0_2#3 clHP93FN_1#clOQD6G0_2#a_12_6# clHP93FN_1#clOQD6G0_0#Y GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclHP93FN_1#clOQD6G0_2#4 Y clHP93FN_0#Y clHP93FN_1#clOQD6G0_2#a_12_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclHP93FN_1#clOQD6G0_2#5 GND clHP93FN_1#clOQD6G0_1#Y Y GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS
* pattern code: 4|3|CTRL_G2_1_15_65|INVX1=1|INPUT:Y-CTRL_G2_1_15_65:B=1|INPUT:Y-CTRL_G2_1_15_65:C=1|INPUT:Y-INVX1:A=1|INVX1:Y-CTRL_G2_1_15_65:A=1|01111
* 2 occurrences in design
* each contains 4 cells
* pin map: {'n25': 'A', 'n29': 'B', 'x2': 'C'} {'y1': 'Y'}
* function: A&(B|C)
* Example occurence:
*   .subckt INVX1 A=x2 Y=n11
*   .subckt CTRL_G2_1_15_65 A=n11 B=n29 C=n25 Y=y1
