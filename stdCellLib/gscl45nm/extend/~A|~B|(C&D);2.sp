.SUBCKT ARBITER_G4_3_4 A B C D Y VCC GND
MclPFWQBQ_0#0 clPFWQBQ_0#Y C VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclPFWQBQ_0#1 VCC D clPFWQBQ_0#Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclPFWQBQ_0#2 clPFWQBQ_0#a_9_6# C GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclPFWQBQ_0#3 clPFWQBQ_0#Y D clPFWQBQ_0#a_9_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclPFWQBQ_1#0 Y A VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclPFWQBQ_1#1 VCC B Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclPFWQBQ_1#2 Y clPFWQBQ_0#Y VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclPFWQBQ_1#3 clPFWQBQ_1#a_9_6# A GND GND nmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclPFWQBQ_1#4 clPFWQBQ_1#a_14_6# B clPFWQBQ_1#a_9_6# GND nmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclPFWQBQ_1#5 Y clPFWQBQ_0#Y clPFWQBQ_1#a_14_6# GND nmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS 
* pattern code: 2|4|NAND3X1|NAND2X1=1|INPUT:Y-NAND2X1:A,B=2|INPUT:Y-NAND3X1:A,B,C=2|NAND2X1:Y-NAND3X1:A,B,C=1|111110
* 189 occurrences in design
* each contains 2 cells
* pin map: {'n511': 'A', 'n512': 'B', 'n383': 'C', 'x252': 'D'} {'n518': 'Y'}
* function: ~A|~B|(C&D)
* Example occurence:
*   .subckt NAND2X1 A=n383 B=x252 Y=n517
*   .subckt NAND3X1 A=n511 B=n512 C=n517 Y=n518
