.SUBCKT DEC_G0_3_6_7 A B C D Y VCC GND
MclNIILYR_0#0 clNIILYR_0#Y A VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclNIILYR_0#1 VCC B clNIILYR_0#Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclNIILYR_0#2 clNIILYR_0#a_9_6# A GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclNIILYR_0#3 clNIILYR_0#Y B clNIILYR_0#a_9_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclNIILYR_1#0 clNIILYR_1#Y C VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclNIILYR_1#1 VCC D clNIILYR_1#Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclNIILYR_1#2 clNIILYR_1#a_9_6# C GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclNIILYR_1#3 clNIILYR_1#Y D clNIILYR_1#a_9_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclNIILYR_2#0 clNIILYR_2#a_9_54# clNIILYR_0#Y VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclNIILYR_2#1 Y clNIILYR_1#Y clNIILYR_2#a_9_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclNIILYR_2#2 Y clNIILYR_0#Y GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclNIILYR_2#3 GND clNIILYR_1#Y Y GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS 
* pattern code: 3|4|NOR2X1|NAND2X1=2|INPUT:Y-NAND2X1:A,B=4|NAND2X1:Y-NOR2X1:A,B=2|1111110
* 100 occurrences in design
* each contains 3 cells
* pin map: {'n14': 'A', 'n18': 'B', 'n10': 'C', 'n21': 'D'} {'y0': 'Y'}
* function: A&B&C&D
* Example occurence:
*   .subckt NAND2X1 A=n14 B=n18 Y=n19
*   .subckt NAND2X1 A=n10 B=n21 Y=n22
*   .subckt NOR2X1 A=n19 B=n22 Y=y0
