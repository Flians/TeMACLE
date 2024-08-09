.SUBCKT DIV_G2_381_432 A B C Y VCC GND
MclBP6DVU_0#0 VCC B clBP6DVU_0#a_2_6# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclBP6DVU_0#1 clBP6DVU_0#a_18_54# clBP6DVU_0#a_12_41# VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclBP6DVU_0#2 clBP6DVU_0#Y clBP6DVU_0#a_2_6# clBP6DVU_0#a_18_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclBP6DVU_0#3 clBP6DVU_0#a_35_54# B clBP6DVU_0#Y VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclBP6DVU_0#4 VCC C clBP6DVU_0#a_35_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclBP6DVU_0#5 clBP6DVU_0#a_12_41# C VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclBP6DVU_0#6 GND B clBP6DVU_0#a_2_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclBP6DVU_0#7 clBP6DVU_0#a_18_6# clBP6DVU_0#a_12_41# GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclBP6DVU_0#8 clBP6DVU_0#Y B clBP6DVU_0#a_18_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclBP6DVU_0#9 clBP6DVU_0#a_35_6# clBP6DVU_0#a_2_6# clBP6DVU_0#Y GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclBP6DVU_0#10 GND C clBP6DVU_0#a_35_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclBP6DVU_0#11 clBP6DVU_0#a_12_41# C GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclBP6DVU_1#0 VCC clBP6DVU_0#Y clBP6DVU_1#a_2_6# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclBP6DVU_1#1 clBP6DVU_1#a_18_54# clBP6DVU_1#a_12_41# VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclBP6DVU_1#2 Y clBP6DVU_1#a_2_6# clBP6DVU_1#a_18_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclBP6DVU_1#3 clBP6DVU_1#a_35_54# clBP6DVU_0#Y Y VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclBP6DVU_1#4 VCC A clBP6DVU_1#a_35_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclBP6DVU_1#5 clBP6DVU_1#a_12_41# A VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclBP6DVU_1#6 GND clBP6DVU_0#Y clBP6DVU_1#a_2_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclBP6DVU_1#7 clBP6DVU_1#a_18_6# clBP6DVU_1#a_12_41# GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclBP6DVU_1#8 Y clBP6DVU_0#Y clBP6DVU_1#a_18_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclBP6DVU_1#9 clBP6DVU_1#a_35_6# clBP6DVU_1#a_2_6# Y GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclBP6DVU_1#10 GND A clBP6DVU_1#a_35_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclBP6DVU_1#11 clBP6DVU_1#a_12_41# A GND GND nmos w=0.5u l=0.05u
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
