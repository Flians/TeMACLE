.SUBCKT HYP_G4_98_582 A B C Y VCC GND
MclNF429V_0#0 VCC C clNF429V_0#a_2_6# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclNF429V_0#1 clNF429V_0#a_18_54# clNF429V_0#a_12_41# VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclNF429V_0#2 clNF429V_0#Y clNF429V_0#a_2_6# clNF429V_0#a_18_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclNF429V_0#3 clNF429V_0#a_35_54# C clNF429V_0#Y VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclNF429V_0#4 VCC B clNF429V_0#a_35_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclNF429V_0#5 clNF429V_0#a_12_41# B VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclNF429V_0#6 GND C clNF429V_0#a_2_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclNF429V_0#7 clNF429V_0#a_18_6# clNF429V_0#a_12_41# GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclNF429V_0#8 clNF429V_0#Y C clNF429V_0#a_18_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclNF429V_0#9 clNF429V_0#a_35_6# clNF429V_0#a_2_6# clNF429V_0#Y GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclNF429V_0#10 GND B clNF429V_0#a_35_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclNF429V_0#11 clNF429V_0#a_12_41# B GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclNF429V_1#0 VCC clNF429V_0#Y clNF429V_1#a_2_6# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclNF429V_1#1 clNF429V_1#a_18_54# clNF429V_1#a_12_41# VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclNF429V_1#2 Y clNF429V_1#a_2_6# clNF429V_1#a_18_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclNF429V_1#3 clNF429V_1#a_35_54# clNF429V_0#Y Y VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclNF429V_1#4 VCC A clNF429V_1#a_35_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclNF429V_1#5 clNF429V_1#a_12_41# A VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclNF429V_1#6 GND clNF429V_0#Y clNF429V_1#a_2_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclNF429V_1#7 clNF429V_1#a_18_6# clNF429V_1#a_12_41# GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclNF429V_1#8 Y clNF429V_0#Y clNF429V_1#a_18_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclNF429V_1#9 clNF429V_1#a_35_6# clNF429V_1#a_2_6# Y GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclNF429V_1#10 GND A clNF429V_1#a_35_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclNF429V_1#11 clNF429V_1#a_12_41# A GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS
* pattern code: 2|3|XNOR2X1|XNOR2X1=1|INPUT:Y-XNOR2X1:A,B=3|XNOR2X1:Y-XNOR2X1:A,B=1|11101
* 5654 occurrences in design
* each contains 2 cells
* pin map: {'n26173': 'A', 'n25026': 'B', 'n25027': 'C'} {'n26174': 'Y'}
* function: (A&B&C)|(A&~B&~C)|(B&~A&~C)|(C&~A&~B)
* Example occurence:
*   .subckt XNOR2X1 A=n25026 B=n25027 Y=n25637
*   .subckt XNOR2X1 A=n26173 B=n25637 Y=n26174
