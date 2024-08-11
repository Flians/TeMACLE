.SUBCKT DEC_G0_1_2_3 A B C D Y VCC GND
MclV1N51R_0#0 clV1N51R_0#Y D VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclV1N51R_0#1 clV1N51R_0#Y D GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclV1N51R_1#0 VCC clV1N51R_0#Y clV1N51R_1#a_2_64# VCC pmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclV1N51R_1#1 clV1N51R_1#a_2_64# clV1N51R_0#Y VCC VCC pmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclV1N51R_1#2 clV1N51R_1#a_25_64# C clV1N51R_1#a_2_64# VCC pmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclV1N51R_1#3 clV1N51R_1#a_2_64# C clV1N51R_1#a_25_64# VCC pmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclV1N51R_1#4 clV1N51R_1#Y B clV1N51R_1#a_25_64# VCC pmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclV1N51R_1#5 clV1N51R_1#a_25_64# B clV1N51R_1#Y VCC pmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclV1N51R_1#6 clV1N51R_1#Y clV1N51R_0#Y GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclV1N51R_1#7 GND C clV1N51R_1#Y GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclV1N51R_1#8 clV1N51R_1#Y B GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclV1N51R_2#0 Y A VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclV1N51R_2#1 VCC clV1N51R_1#Y Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclV1N51R_2#2 clV1N51R_2#a_9_6# A GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclV1N51R_2#3 Y clV1N51R_1#Y clV1N51R_2#a_9_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS 
* pattern code: 3|4|NAND2X1|INVX1=1|NOR3X1=1|INPUT:Y-INVX1:A=1|INPUT:Y-NAND2X1:A,B=1|INPUT:Y-NOR3X1:A,B,C=2|INVX1:Y-NOR3X1:A,B,C=1|NOR3X1:Y-NAND2X1:A,B=1|1111101
* 23 occurrences in design
* each contains 3 cells
* pin map: {'n14': 'A', 'x5': 'B', 'x6': 'C', 'x7': 'D'} {'n19': 'Y'}
* function: B|C|~A|~D
* Example occurence:
*   .subckt INVX1 A=x7 Y=n17
*   .subckt NOR3X1 A=n17 B=x6 C=x5 Y=n18
*   .subckt NAND2X1 A=n14 B=n18 Y=n19
