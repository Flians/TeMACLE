.SUBCKT ARBITER_G4_0_948_949_3164 A B C D Y VCC GND
MclJR5VIJ_0#0 clJR5VIJ_0#Y D VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclJR5VIJ_0#1 clJR5VIJ_0#Y D GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclJR5VIJ_1#0 clJR5VIJ_1#Y clJR5VIJ_0#Y VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclJR5VIJ_1#1 VCC C clJR5VIJ_1#Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclJR5VIJ_1#2 clJR5VIJ_1#a_9_6# clJR5VIJ_0#Y GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclJR5VIJ_1#3 clJR5VIJ_1#Y C clJR5VIJ_1#a_9_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclJR5VIJ_2#0 clJR5VIJ_2#Y A VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclJR5VIJ_2#1 VCC B clJR5VIJ_2#Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclJR5VIJ_2#2 clJR5VIJ_2#Y clJR5VIJ_1#Y VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclJR5VIJ_2#3 clJR5VIJ_2#a_9_6# A GND GND nmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclJR5VIJ_2#4 clJR5VIJ_2#a_14_6# B clJR5VIJ_2#a_9_6# GND nmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclJR5VIJ_2#5 clJR5VIJ_2#Y clJR5VIJ_1#Y clJR5VIJ_2#a_14_6# GND nmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclJR5VIJ_3#0 Y clJR5VIJ_2#Y VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclJR5VIJ_3#1 Y clJR5VIJ_2#Y GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS 
* pattern code: 4|4|INVX1|INVX1=1|NAND2X1=1|NAND3X1=1|INPUT:Y-INVX1:A=1|INPUT:Y-NAND2X1:A,B=1|INPUT:Y-NAND3X1:A,B,C=2|INVX1:Y-NAND2X1:A,B=1|NAND2X1:Y-NAND3X1:A,B,C=1|NAND3X1:Y-INVX1:A=1|11110111
* 169 occurrences in design
* each contains 4 cells
* pin map: {'n384': 'A', 'n385': 'B', 'x125': 'C', 'x253': 'D'} {'n1357': 'Y'}
* function: A&B&(D|~C)
* Example occurence:
*   .subckt INVX1 A=x253 Y=n511
*   .subckt NAND2X1 A=n511 B=x125 Y=n1355
*   .subckt NAND3X1 A=n384 B=n385 C=n1355 Y=n1356
*   .subckt INVX1 A=n1356 Y=n1357
