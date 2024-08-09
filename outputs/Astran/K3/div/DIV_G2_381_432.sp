.SUBCKT DIV_G2_381_432 A B C Y VCC GND
MclVY816P_0#0 VCC B clVY816P_0#a_2_6# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclVY816P_0#1 clVY816P_0#a_18_54# clVY816P_0#a_12_41# VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclVY816P_0#2 clVY816P_0#Y clVY816P_0#a_2_6# clVY816P_0#a_18_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclVY816P_0#3 clVY816P_0#a_35_54# B clVY816P_0#Y VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclVY816P_0#4 VCC C clVY816P_0#a_35_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclVY816P_0#5 clVY816P_0#a_12_41# C VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclVY816P_0#6 GND B clVY816P_0#a_2_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclVY816P_0#7 clVY816P_0#a_18_6# clVY816P_0#a_12_41# GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclVY816P_0#8 clVY816P_0#Y B clVY816P_0#a_18_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclVY816P_0#9 clVY816P_0#a_35_6# clVY816P_0#a_2_6# clVY816P_0#Y GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclVY816P_0#10 GND C clVY816P_0#a_35_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclVY816P_0#11 clVY816P_0#a_12_41# C GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclVY816P_1#0 VCC clVY816P_0#Y clVY816P_1#a_2_6# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclVY816P_1#1 clVY816P_1#a_18_54# clVY816P_1#a_12_41# VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclVY816P_1#2 Y clVY816P_1#a_2_6# clVY816P_1#a_18_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclVY816P_1#3 clVY816P_1#a_35_54# clVY816P_0#Y Y VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclVY816P_1#4 VCC A clVY816P_1#a_35_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclVY816P_1#5 clVY816P_1#a_12_41# A VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclVY816P_1#6 GND clVY816P_0#Y clVY816P_1#a_2_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclVY816P_1#7 clVY816P_1#a_18_6# clVY816P_1#a_12_41# GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclVY816P_1#8 Y clVY816P_0#Y clVY816P_1#a_18_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclVY816P_1#9 clVY816P_1#a_35_6# clVY816P_1#a_2_6# Y GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclVY816P_1#10 GND A clVY816P_1#a_35_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclVY816P_1#11 clVY816P_1#a_12_41# A GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS 
* pattern code: 2|3|XNOR2X1|XNOR2X1=1|INPUT:Y-XNOR2X1:A,B=3|XNOR2X1:Y-XNOR2X1:A,B=1|11101
* 1977 occurrences in design
* each contains 2 cells
* pin map: {'n585': 'A', 'n569': 'B', 'x66': 'C'} {'n614': 'Y'}
* function: (A&B&C)|(A&~B&~C)|(B&~A&~C)|(C&~A&~B)
* Example occurence:
*   .subckt XNOR2X1 A=n569 B=x66 Y=n571
*   .subckt XNOR2X1 A=n571 B=n585 Y=n614
