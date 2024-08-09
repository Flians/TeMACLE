.SUBCKT SQUARE_G4_19_20 A B C Y VCC GND
MclACFZG9_0#0 VCC B clACFZG9_0#a_2_6# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclACFZG9_0#1 clACFZG9_0#a_18_54# clACFZG9_0#a_12_41# VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclACFZG9_0#2 clACFZG9_0#Y clACFZG9_0#a_2_6# clACFZG9_0#a_18_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclACFZG9_0#3 clACFZG9_0#a_35_54# B clACFZG9_0#Y VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclACFZG9_0#4 VCC C clACFZG9_0#a_35_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclACFZG9_0#5 clACFZG9_0#a_12_41# C VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclACFZG9_0#6 GND B clACFZG9_0#a_2_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclACFZG9_0#7 clACFZG9_0#a_18_6# clACFZG9_0#a_12_41# GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclACFZG9_0#8 clACFZG9_0#Y B clACFZG9_0#a_18_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclACFZG9_0#9 clACFZG9_0#a_35_6# clACFZG9_0#a_2_6# clACFZG9_0#Y GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclACFZG9_0#10 GND C clACFZG9_0#a_35_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclACFZG9_0#11 clACFZG9_0#a_12_41# C GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclACFZG9_1#0 VCC A clACFZG9_1#a_2_6# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclACFZG9_1#1 clACFZG9_1#a_18_54# clACFZG9_1#a_12_41# VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclACFZG9_1#2 Y clACFZG9_1#a_2_6# clACFZG9_1#a_18_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclACFZG9_1#3 clACFZG9_1#a_35_54# A Y VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclACFZG9_1#4 VCC clACFZG9_0#Y clACFZG9_1#a_35_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclACFZG9_1#5 clACFZG9_1#a_12_41# clACFZG9_0#Y VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclACFZG9_1#6 GND A clACFZG9_1#a_2_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclACFZG9_1#7 clACFZG9_1#a_18_6# clACFZG9_1#a_12_41# GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclACFZG9_1#8 Y A clACFZG9_1#a_18_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclACFZG9_1#9 clACFZG9_1#a_35_6# clACFZG9_1#a_2_6# Y GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclACFZG9_1#10 GND clACFZG9_0#Y clACFZG9_1#a_35_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclACFZG9_1#11 clACFZG9_1#a_12_41# clACFZG9_0#Y GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS 
* pattern code: 2|3|XNOR2X1|XNOR2X1=1|INPUT:Y-XNOR2X1:A,B=3|XNOR2X1:Y-XNOR2X1:A,B=1|11101
* 769 occurrences in design
* each contains 2 cells
* pin map: {'n146': 'A', 'n138': 'B', 'n139': 'C'} {'y5': 'Y'}
* function: (A&B&C)|(A&~B&~C)|(B&~A&~C)|(C&~A&~B)
* Example occurence:
*   .subckt XNOR2X1 A=n138 B=n139 Y=n141
*   .subckt XNOR2X1 A=n146 B=n141 Y=y5
