.SUBCKT BAR_G4_183_944_945 A B C D Y VCC GND
MclYX51NG_0#0 clYX51NG_0#Y D VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclYX51NG_0#1 clYX51NG_0#Y D GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclYX51NG_1#0 clYX51NG_1#Y clYX51NG_0#Y VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclYX51NG_1#1 VCC C clYX51NG_1#Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclYX51NG_1#2 clYX51NG_1#Y B VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclYX51NG_1#3 clYX51NG_1#a_9_6# clYX51NG_0#Y GND GND nmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclYX51NG_1#4 clYX51NG_1#a_14_6# C clYX51NG_1#a_9_6# GND nmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclYX51NG_1#5 clYX51NG_1#Y B clYX51NG_1#a_14_6# GND nmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclYX51NG_2#0 clYX51NG_2#a_2_6# A VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclYX51NG_2#1 VCC clYX51NG_1#Y clYX51NG_2#a_2_6# VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclYX51NG_2#2 Y clYX51NG_2#a_2_6# VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclYX51NG_2#3 clYX51NG_2#a_9_6# A clYX51NG_2#a_2_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclYX51NG_2#4 GND clYX51NG_1#Y clYX51NG_2#a_9_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclYX51NG_2#5 Y clYX51NG_2#a_2_6# GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS 
* pattern code: 3|4|AND2X2|INVX1=1|NAND3X1=1|INPUT:Y-AND2X2:A,B=1|INPUT:Y-INVX1:A=1|INPUT:Y-NAND3X1:A,B,C=2|INVX1:Y-NAND3X1:A,B,C=1|NAND3X1:Y-AND2X2:A,B=1|0111111
* 5 occurrences in design
* each contains 3 cells
* pin map: {'n1078': 'A', 'x132': 'B', 'n905': 'C', 'x133': 'D'} {'n1080': 'Y'}
* function: A&(D|~B|~C)
* Example occurence:
*   .subckt INVX1 A=x133 Y=n142
*   .subckt NAND3X1 A=n142 B=n905 C=x132 Y=n1079
*   .subckt AND2X2 A=n1078 B=n1079 Y=n1080
