.SUBCKT HYP_G4_98_582 A B C Y VCC GND
MclF942T5_0#0 VCC B clF942T5_0#a_2_6# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclF942T5_0#1 clF942T5_0#a_18_54# clF942T5_0#a_12_41# VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclF942T5_0#2 clF942T5_0#Y clF942T5_0#a_2_6# clF942T5_0#a_18_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclF942T5_0#3 clF942T5_0#a_35_54# B clF942T5_0#Y VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclF942T5_0#4 VCC C clF942T5_0#a_35_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclF942T5_0#5 clF942T5_0#a_12_41# C VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclF942T5_0#6 GND B clF942T5_0#a_2_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclF942T5_0#7 clF942T5_0#a_18_6# clF942T5_0#a_12_41# GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclF942T5_0#8 clF942T5_0#Y B clF942T5_0#a_18_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclF942T5_0#9 clF942T5_0#a_35_6# clF942T5_0#a_2_6# clF942T5_0#Y GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclF942T5_0#10 GND C clF942T5_0#a_35_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclF942T5_0#11 clF942T5_0#a_12_41# C GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclF942T5_1#0 VCC A clF942T5_1#a_2_6# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclF942T5_1#1 clF942T5_1#a_18_54# clF942T5_1#a_12_41# VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclF942T5_1#2 Y clF942T5_1#a_2_6# clF942T5_1#a_18_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclF942T5_1#3 clF942T5_1#a_35_54# A Y VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclF942T5_1#4 VCC clF942T5_0#Y clF942T5_1#a_35_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclF942T5_1#5 clF942T5_1#a_12_41# clF942T5_0#Y VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclF942T5_1#6 GND A clF942T5_1#a_2_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclF942T5_1#7 clF942T5_1#a_18_6# clF942T5_1#a_12_41# GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclF942T5_1#8 Y A clF942T5_1#a_18_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclF942T5_1#9 clF942T5_1#a_35_6# clF942T5_1#a_2_6# Y GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclF942T5_1#10 GND clF942T5_0#Y clF942T5_1#a_35_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclF942T5_1#11 clF942T5_1#a_12_41# clF942T5_0#Y GND GND nmos w=0.5u l=0.05u
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
