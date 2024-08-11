.SUBCKT SIN_G3_34_49_294_295 A B C D Y VCC GND
MclWK6FGN_0#0 clWK6FGN_0#Y D VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclWK6FGN_0#1 clWK6FGN_0#Y D GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclWK6FGN_1#0 clWK6FGN_1#Y clWK6FGN_0#Y VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclWK6FGN_1#1 VCC C clWK6FGN_1#Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclWK6FGN_1#2 clWK6FGN_1#a_9_6# clWK6FGN_0#Y GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclWK6FGN_1#3 clWK6FGN_1#Y C clWK6FGN_1#a_9_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclWK6FGN_2#0 clWK6FGN_2#Y clWK6FGN_1#Y VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclWK6FGN_2#1 clWK6FGN_2#Y clWK6FGN_1#Y GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclWK6FGN_3#0 VCC B clWK6FGN_3#a_2_64# VCC pmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclWK6FGN_3#1 clWK6FGN_3#a_2_64# B VCC VCC pmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclWK6FGN_3#2 clWK6FGN_3#a_25_64# A clWK6FGN_3#a_2_64# VCC pmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclWK6FGN_3#3 clWK6FGN_3#a_2_64# A clWK6FGN_3#a_25_64# VCC pmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclWK6FGN_3#4 Y clWK6FGN_2#Y clWK6FGN_3#a_25_64# VCC pmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclWK6FGN_3#5 clWK6FGN_3#a_25_64# clWK6FGN_2#Y Y VCC pmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclWK6FGN_3#6 Y B GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclWK6FGN_3#7 GND A Y GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclWK6FGN_3#8 Y clWK6FGN_2#Y GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS 
* pattern code: 4|4|NOR3X1|INVX1=2|NAND2X1=1|INPUT:Y-INVX1:A=1|INPUT:Y-NAND2X1:A,B=1|INPUT:Y-NOR3X1:A,B,C=2|INVX1:Y-NAND2X1:A,B=1|INVX1:Y-NOR3X1:A,B,C=1|NAND2X1:Y-INVX1:A=1|11111110
* 367 occurrences in design
* each contains 4 cells
* pin map: {'n783': 'A', 'n408': 'B', 'n251': 'C', 'n114': 'D'} {'n784': 'Y'}
* function: ~A&~B&(D|~C)
* Example occurence:
*   .subckt INVX1 A=n114 Y=n115
*   .subckt NAND2X1 A=n115 B=n251 Y=n273
*   .subckt INVX1 A=n273 Y=n274
*   .subckt NOR3X1 A=n408 B=n783 C=n274 Y=n784
