.SUBCKT HYP_G1_5_7 A B C Y VCC GND
MclOM0E2L_0#0 clOM0E2L_0#Y B VCC VCC PMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclOM0E2L_0#1 VCC C clOM0E2L_0#Y VCC PMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclOM0E2L_0#2 clOM0E2L_0#a_9_6# B GND GND NMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclOM0E2L_0#3 clOM0E2L_0#Y C clOM0E2L_0#a_9_6# GND NMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclOM0E2L_1#0 VCC clOM0E2L_0#Y clOM0E2L_1#a_2_6# VCC PMOS W=1u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclOM0E2L_1#1 clOM0E2L_1#a_18_54# clOM0E2L_1#a_13_43# VCC VCC PMOS W=1u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclOM0E2L_1#2 Y clOM0E2L_0#Y clOM0E2L_1#a_18_54# VCC PMOS W=1u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclOM0E2L_1#3 clOM0E2L_1#a_35_54# clOM0E2L_1#a_2_6# Y VCC PMOS W=1u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclOM0E2L_1#4 VCC A clOM0E2L_1#a_35_54# VCC PMOS W=1u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclOM0E2L_1#5 clOM0E2L_1#a_13_43# A VCC VCC PMOS W=1u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclOM0E2L_1#6 GND clOM0E2L_0#Y clOM0E2L_1#a_2_6# GND NMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclOM0E2L_1#7 clOM0E2L_1#a_18_6# clOM0E2L_1#a_13_43# GND GND NMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclOM0E2L_1#8 Y clOM0E2L_1#a_2_6# clOM0E2L_1#a_18_6# GND NMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclOM0E2L_1#9 clOM0E2L_1#a_35_6# clOM0E2L_0#Y Y GND NMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclOM0E2L_1#10 GND A clOM0E2L_1#a_35_6# GND NMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclOM0E2L_1#11 clOM0E2L_1#a_13_43# A GND GND NMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS
* pattern code: 2|3|XOR2X1|NAND2X1=1|INPUT:Y-NAND2X1:A,B=2|INPUT:Y-XOR2X1:A,B=1|NAND2X1:Y-XOR2X1:A,B=1|11110
* 11505 occurrences in design
* each contains 2 cells
* pin map: {'n520': 'A', 'x252': 'B', 'x254': 'C'} {'n522': 'Y'}
* function: (A&B&C)|(~A&~B)|(~A&~C)
* Example occurence:
*   .subckt NAND2X1 A=x252 B=x254 Y=n514
*   .subckt XOR2X1 A=n514 B=n520 Y=n522
