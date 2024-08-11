.SUBCKT DEC_G0_1_100_101_102 A B C D Y VCC GND
MclZGNBG5_0#0 clZGNBG5_0#Y C VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclZGNBG5_0#1 clZGNBG5_0#Y C GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclZGNBG5_1#0 clZGNBG5_1#Y D VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclZGNBG5_1#1 clZGNBG5_1#Y D GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclZGNBG5_2#0 clZGNBG5_2#a_9_54# clZGNBG5_1#Y VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclZGNBG5_2#1 clZGNBG5_2#Y clZGNBG5_0#Y clZGNBG5_2#a_9_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclZGNBG5_2#2 clZGNBG5_2#Y clZGNBG5_1#Y GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclZGNBG5_2#3 GND clZGNBG5_0#Y clZGNBG5_2#Y GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclZGNBG5_3#0 Y A VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclZGNBG5_3#1 VCC B Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclZGNBG5_3#2 Y clZGNBG5_2#Y VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclZGNBG5_3#3 clZGNBG5_3#a_9_6# A GND GND nmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclZGNBG5_3#4 clZGNBG5_3#a_14_6# B clZGNBG5_3#a_9_6# GND nmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclZGNBG5_3#5 Y clZGNBG5_2#Y clZGNBG5_3#a_14_6# GND nmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS 
* pattern code: 4|4|NAND3X1|INVX1=2|NOR2X1=1|INPUT:Y-INVX1:A=2|INPUT:Y-NAND3X1:A,B,C=2|INVX1:Y-NOR2X1:A,B=2|NOR2X1:Y-NAND3X1:A,B,C=1|11111101
* 8 occurrences in design
* each contains 4 cells
* pin map: {'n14': 'A', 'n15': 'B', 'x7': 'C', 'x6': 'D'} {'n112': 'Y'}
* function: ~A|~B|~C|~D
* Example occurence:
*   .subckt INVX1 A=x7 Y=n17
*   .subckt INVX1 A=x6 Y=n16
*   .subckt NOR2X1 A=n16 B=n17 Y=n111
*   .subckt NAND3X1 A=n14 B=n15 C=n111 Y=n112
