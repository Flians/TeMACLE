.SUBCKT DEC_G0_1_101_102 A B C D Y VCC GND
MclYCD0ST_0#0 clYCD0ST_0#Y D VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclYCD0ST_0#1 clYCD0ST_0#Y D GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclYCD0ST_1#0 clYCD0ST_1#a_9_54# C VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclYCD0ST_1#1 clYCD0ST_1#Y clYCD0ST_0#Y clYCD0ST_1#a_9_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclYCD0ST_1#2 clYCD0ST_1#Y C GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclYCD0ST_1#3 GND clYCD0ST_0#Y clYCD0ST_1#Y GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclYCD0ST_2#0 Y A VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclYCD0ST_2#1 VCC B Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclYCD0ST_2#2 Y clYCD0ST_1#Y VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclYCD0ST_2#3 clYCD0ST_2#a_9_6# A GND GND nmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclYCD0ST_2#4 clYCD0ST_2#a_14_6# B clYCD0ST_2#a_9_6# GND nmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclYCD0ST_2#5 Y clYCD0ST_1#Y clYCD0ST_2#a_14_6# GND nmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS 
* pattern code: 3|4|NAND3X1|INVX1=1|NOR2X1=1|INPUT:Y-INVX1:A=1|INPUT:Y-NAND3X1:A,B,C=2|INPUT:Y-NOR2X1:A,B=1|INVX1:Y-NOR2X1:A,B=1|NOR2X1:Y-NAND3X1:A,B,C=1|1111101
* 15 occurrences in design
* each contains 3 cells
* pin map: {'n14': 'A', 'n15': 'B', 'n16': 'C', 'x7': 'D'} {'n112': 'Y'}
* function: C|~A|~B|~D
* Example occurence:
*   .subckt INVX1 A=x7 Y=n17
*   .subckt NOR2X1 A=n16 B=n17 Y=n111
*   .subckt NAND3X1 A=n14 B=n15 C=n111 Y=n112
