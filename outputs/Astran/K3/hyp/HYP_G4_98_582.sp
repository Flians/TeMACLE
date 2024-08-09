.SUBCKT HYP_G4_98_582 A B C Y VCC GND
MclF7OQGH_0#0 VCC B clF7OQGH_0#a_2_6# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclF7OQGH_0#1 clF7OQGH_0#a_18_54# clF7OQGH_0#a_12_41# VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclF7OQGH_0#2 clF7OQGH_0#Y clF7OQGH_0#a_2_6# clF7OQGH_0#a_18_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclF7OQGH_0#3 clF7OQGH_0#a_35_54# B clF7OQGH_0#Y VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclF7OQGH_0#4 VCC C clF7OQGH_0#a_35_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclF7OQGH_0#5 clF7OQGH_0#a_12_41# C VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclF7OQGH_0#6 GND B clF7OQGH_0#a_2_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclF7OQGH_0#7 clF7OQGH_0#a_18_6# clF7OQGH_0#a_12_41# GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclF7OQGH_0#8 clF7OQGH_0#Y B clF7OQGH_0#a_18_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclF7OQGH_0#9 clF7OQGH_0#a_35_6# clF7OQGH_0#a_2_6# clF7OQGH_0#Y GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclF7OQGH_0#10 GND C clF7OQGH_0#a_35_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclF7OQGH_0#11 clF7OQGH_0#a_12_41# C GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclF7OQGH_1#0 VCC A clF7OQGH_1#a_2_6# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclF7OQGH_1#1 clF7OQGH_1#a_18_54# clF7OQGH_1#a_12_41# VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclF7OQGH_1#2 Y clF7OQGH_1#a_2_6# clF7OQGH_1#a_18_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclF7OQGH_1#3 clF7OQGH_1#a_35_54# A Y VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclF7OQGH_1#4 VCC clF7OQGH_0#Y clF7OQGH_1#a_35_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclF7OQGH_1#5 clF7OQGH_1#a_12_41# clF7OQGH_0#Y VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclF7OQGH_1#6 GND A clF7OQGH_1#a_2_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclF7OQGH_1#7 clF7OQGH_1#a_18_6# clF7OQGH_1#a_12_41# GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclF7OQGH_1#8 Y A clF7OQGH_1#a_18_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclF7OQGH_1#9 clF7OQGH_1#a_35_6# clF7OQGH_1#a_2_6# Y GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclF7OQGH_1#10 GND clF7OQGH_0#Y clF7OQGH_1#a_35_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclF7OQGH_1#11 clF7OQGH_1#a_12_41# clF7OQGH_0#Y GND GND nmos w=0.5u l=0.05u
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
