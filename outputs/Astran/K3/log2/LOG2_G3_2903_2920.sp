.SUBCKT LOG2_G3_2903_2920 A B C Y VCC GND
MclFWW3NO_0#0 VCC C clFWW3NO_0#a_2_6# VCC PMOS W=1u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclFWW3NO_0#1 clFWW3NO_0#a_18_54# clFWW3NO_0#a_12_41# VCC VCC PMOS W=1u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclFWW3NO_0#2 clFWW3NO_0#Y clFWW3NO_0#a_2_6# clFWW3NO_0#a_18_54# VCC PMOS W=1u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclFWW3NO_0#3 clFWW3NO_0#a_35_54# C clFWW3NO_0#Y VCC PMOS W=1u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclFWW3NO_0#4 VCC B clFWW3NO_0#a_35_54# VCC PMOS W=1u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclFWW3NO_0#5 clFWW3NO_0#a_12_41# B VCC VCC PMOS W=1u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclFWW3NO_0#6 GND C clFWW3NO_0#a_2_6# GND NMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclFWW3NO_0#7 clFWW3NO_0#a_18_6# clFWW3NO_0#a_12_41# GND GND NMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclFWW3NO_0#8 clFWW3NO_0#Y C clFWW3NO_0#a_18_6# GND NMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclFWW3NO_0#9 clFWW3NO_0#a_35_6# clFWW3NO_0#a_2_6# clFWW3NO_0#Y GND NMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclFWW3NO_0#10 GND B clFWW3NO_0#a_35_6# GND NMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclFWW3NO_0#11 clFWW3NO_0#a_12_41# B GND GND NMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclFWW3NO_1#0 VCC clFWW3NO_0#Y clFWW3NO_1#a_2_6# VCC PMOS W=1u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclFWW3NO_1#1 clFWW3NO_1#a_18_54# clFWW3NO_1#a_12_41# VCC VCC PMOS W=1u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclFWW3NO_1#2 Y clFWW3NO_1#a_2_6# clFWW3NO_1#a_18_54# VCC PMOS W=1u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclFWW3NO_1#3 clFWW3NO_1#a_35_54# clFWW3NO_0#Y Y VCC PMOS W=1u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclFWW3NO_1#4 VCC A clFWW3NO_1#a_35_54# VCC PMOS W=1u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclFWW3NO_1#5 clFWW3NO_1#a_12_41# A VCC VCC PMOS W=1u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclFWW3NO_1#6 GND clFWW3NO_0#Y clFWW3NO_1#a_2_6# GND NMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclFWW3NO_1#7 clFWW3NO_1#a_18_6# clFWW3NO_1#a_12_41# GND GND NMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclFWW3NO_1#8 Y clFWW3NO_0#Y clFWW3NO_1#a_18_6# GND NMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclFWW3NO_1#9 clFWW3NO_1#a_35_6# clFWW3NO_1#a_2_6# Y GND NMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclFWW3NO_1#10 GND A clFWW3NO_1#a_35_6# GND NMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclFWW3NO_1#11 clFWW3NO_1#a_12_41# A GND GND NMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS
* pattern code: 2|3|XNOR2X1|XNOR2X1=1|INPUT:Y-XNOR2X1:A,B=3|XNOR2X1:Y-XNOR2X1:A,B=1|11101
* 1421 occurrences in design
* each contains 2 cells
* pin map: {'n928': 'A', 'n1024': 'B', 'n3158': 'C'} {'n3166': 'Y'}
* function: (A&B&C)|(A&~B&~C)|(B&~A&~C)|(C&~A&~B)
* Example occurence:
*   .subckt XNOR2X1 A=n1024 B=n3158 Y=n3165
*   .subckt XNOR2X1 A=n3165 B=n928 Y=n3166
