.SUBCKT BAR_G0_0_1341_2057 A B C D Y VCC GND
MclHKVZG5_0#0 clHKVZG5_0#Y A VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclHKVZG5_0#1 clHKVZG5_0#Y A GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclHKVZG5_1#0 clHKVZG5_1#a_9_54# B VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclHKVZG5_1#1 clHKVZG5_1#Y C clHKVZG5_1#a_9_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclHKVZG5_1#2 VCC D clHKVZG5_1#Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclHKVZG5_1#3 GND B clHKVZG5_1#a_2_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclHKVZG5_1#4 clHKVZG5_1#a_2_6# C GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclHKVZG5_1#5 clHKVZG5_1#Y D clHKVZG5_1#a_2_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclHKVZG5_2#0 Y clHKVZG5_0#Y VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclHKVZG5_2#1 VCC clHKVZG5_1#Y Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclHKVZG5_2#2 clHKVZG5_2#a_9_6# clHKVZG5_0#Y GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclHKVZG5_2#3 Y clHKVZG5_1#Y clHKVZG5_2#a_9_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS 
* pattern code: 3|4|NAND2X1|INVX1=1|OAI21X1=1|INPUT:Y-INVX1:A=1|INPUT:Y-OAI21X1:A,B=2|INPUT:Y-OAI21X1:C=1|INVX1:Y-NAND2X1:A,B=1|OAI21X1:Y-NAND2X1:A,B=1|1111101
* 107 occurrences in design
* each contains 3 cells
* pin map: {'x133': 'A', 'x131': 'B', 'n1482': 'C', 'n1485': 'D'} {'n2191': 'Y'}
* function: A|(B&D)|(C&D)
* Example occurence:
*   .subckt INVX1 A=x133 Y=n267
*   .subckt OAI21X1 A=x131 B=n1482 C=n1485 Y=n1486
*   .subckt NAND2X1 A=n267 B=n1486 Y=n2191
