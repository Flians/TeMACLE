.SUBCKT LOG2_G2_11_1349_1350 A B C D Y VCC GND
MclQK38WT_0#0 clQK38WT_0#Y C VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclQK38WT_0#1 VCC D clQK38WT_0#Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclQK38WT_0#2 clQK38WT_0#a_9_6# C GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclQK38WT_0#3 clQK38WT_0#Y D clQK38WT_0#a_9_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclQK38WT_1#0 clQK38WT_1#Y clQK38WT_0#Y VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclQK38WT_1#1 clQK38WT_1#Y clQK38WT_0#Y GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclQK38WT_2#0 VCC A clQK38WT_2#a_2_64# VCC pmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclQK38WT_2#1 clQK38WT_2#a_2_64# A VCC VCC pmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclQK38WT_2#2 clQK38WT_2#a_25_64# clQK38WT_1#Y clQK38WT_2#a_2_64# VCC pmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclQK38WT_2#3 clQK38WT_2#a_2_64# clQK38WT_1#Y clQK38WT_2#a_25_64# VCC pmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclQK38WT_2#4 Y B clQK38WT_2#a_25_64# VCC pmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclQK38WT_2#5 clQK38WT_2#a_25_64# B Y VCC pmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclQK38WT_2#6 Y A GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclQK38WT_2#7 GND clQK38WT_1#Y Y GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclQK38WT_2#8 Y B GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS 
* pattern code: 3|4|NOR3X1|INVX1=1|NAND2X1=1|INPUT:Y-NAND2X1:A,B=2|INPUT:Y-NOR3X1:A,B,C=2|INVX1:Y-NOR3X1:A,B,C=1|NAND2X1:Y-INVX1:A=1|1111110
* 2029 occurrences in design
* each contains 3 cells
* pin map: {'n247': 'A', 'n545': 'B', 'n106': 'C', 'n136': 'D'} {'n1325': 'Y'}
* function: ~A&~B&(~C|~D)
* Example occurence:
*   .subckt NAND2X1 A=n106 B=n136 Y=n418
*   .subckt INVX1 A=n418 Y=n419
*   .subckt NOR3X1 A=n247 B=n419 C=n545 Y=n1325
