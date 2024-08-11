.SUBCKT ARBITER_G4_3_4_1021 A B C D Y VCC GND
MclKTOYLN_0#0 clKTOYLN_0#Y C VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclKTOYLN_0#1 VCC D clKTOYLN_0#Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclKTOYLN_0#2 clKTOYLN_0#a_9_6# C GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclKTOYLN_0#3 clKTOYLN_0#Y D clKTOYLN_0#a_9_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclKTOYLN_1#0 clKTOYLN_1#Y A VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclKTOYLN_1#1 VCC B clKTOYLN_1#Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclKTOYLN_1#2 clKTOYLN_1#Y clKTOYLN_0#Y VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclKTOYLN_1#3 clKTOYLN_1#a_9_6# A GND GND nmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclKTOYLN_1#4 clKTOYLN_1#a_14_6# B clKTOYLN_1#a_9_6# GND nmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclKTOYLN_1#5 clKTOYLN_1#Y clKTOYLN_0#Y clKTOYLN_1#a_14_6# GND nmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclKTOYLN_2#0 Y clKTOYLN_1#Y VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclKTOYLN_2#1 Y clKTOYLN_1#Y GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS 
* pattern code: 3|4|INVX1|NAND2X1=1|NAND3X1=1|INPUT:Y-NAND2X1:A,B=2|INPUT:Y-NAND3X1:A,B,C=2|NAND2X1:Y-NAND3X1:A,B,C=1|NAND3X1:Y-INVX1:A=1|1111011
* 169 occurrences in design
* each contains 3 cells
* pin map: {'n511': 'A', 'n512': 'B', 'n383': 'C', 'x252': 'D'} {'n519': 'Y'}
* function: A&B&(~C|~D)
* Example occurence:
*   .subckt NAND2X1 A=n383 B=x252 Y=n517
*   .subckt NAND3X1 A=n511 B=n512 C=n517 Y=n518
*   .subckt INVX1 A=n518 Y=n519
