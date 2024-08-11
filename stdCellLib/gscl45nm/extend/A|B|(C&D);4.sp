.SUBCKT ARBITER_G4_0_1_3_4 A B C D Y VCC GND
MclSWPKD4_0#0 clSWPKD4_0#Y A VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclSWPKD4_0#1 clSWPKD4_0#Y A GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclSWPKD4_1#0 clSWPKD4_1#Y B VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclSWPKD4_1#1 clSWPKD4_1#Y B GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclSWPKD4_2#0 clSWPKD4_2#Y C VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclSWPKD4_2#1 VCC D clSWPKD4_2#Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclSWPKD4_2#2 clSWPKD4_2#a_9_6# C GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclSWPKD4_2#3 clSWPKD4_2#Y D clSWPKD4_2#a_9_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclSWPKD4_3#0 Y clSWPKD4_0#Y VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclSWPKD4_3#1 VCC clSWPKD4_1#Y Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclSWPKD4_3#2 Y clSWPKD4_2#Y VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclSWPKD4_3#3 clSWPKD4_3#a_9_6# clSWPKD4_0#Y GND GND nmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclSWPKD4_3#4 clSWPKD4_3#a_14_6# clSWPKD4_1#Y clSWPKD4_3#a_9_6# GND nmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclSWPKD4_3#5 Y clSWPKD4_2#Y clSWPKD4_3#a_14_6# GND nmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS 
* pattern code: 4|4|NAND3X1|INVX1=2|NAND2X1=1|INPUT:Y-INVX1:A=2|INPUT:Y-NAND2X1:A,B=2|INVX1:Y-NAND3X1:A,B,C=2|NAND2X1:Y-NAND3X1:A,B,C=1|11111110
* 189 occurrences in design
* each contains 4 cells
* pin map: {'x253': 'A', 'x254': 'B', 'n383': 'C', 'x252': 'D'} {'n518': 'Y'}
* function: A|B|(C&D)
* Example occurence:
*   .subckt INVX1 A=x253 Y=n511
*   .subckt INVX1 A=x254 Y=n512
*   .subckt NAND2X1 A=n383 B=x252 Y=n517
*   .subckt NAND3X1 A=n511 B=n512 C=n517 Y=n518
