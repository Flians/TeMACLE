.SUBCKT BAR_G0_3_26_30_31 A B C D Y VCC GND
MclJTWZZ7_0#0 clJTWZZ7_0#Y D VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclJTWZZ7_0#1 clJTWZZ7_0#Y D GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclJTWZZ7_1#0 clJTWZZ7_1#Y B VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclJTWZZ7_1#1 VCC D clJTWZZ7_1#Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclJTWZZ7_1#2 clJTWZZ7_1#a_9_6# B GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclJTWZZ7_1#3 clJTWZZ7_1#Y D clJTWZZ7_1#a_9_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclJTWZZ7_2#0 clJTWZZ7_2#Y clJTWZZ7_0#Y VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclJTWZZ7_2#1 VCC C clJTWZZ7_2#Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclJTWZZ7_2#2 clJTWZZ7_2#a_9_6# clJTWZZ7_0#Y GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclJTWZZ7_2#3 clJTWZZ7_2#Y C clJTWZZ7_2#a_9_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclJTWZZ7_3#0 Y A VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclJTWZZ7_3#1 VCC clJTWZZ7_1#Y Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclJTWZZ7_3#2 Y clJTWZZ7_2#Y VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclJTWZZ7_3#3 clJTWZZ7_3#a_9_6# A GND GND nmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclJTWZZ7_3#4 clJTWZZ7_3#a_14_6# clJTWZZ7_1#Y clJTWZZ7_3#a_9_6# GND nmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclJTWZZ7_3#5 Y clJTWZZ7_2#Y clJTWZZ7_3#a_14_6# GND nmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS 
* pattern code: 4|4|NAND3X1|INVX1=1|NAND2X1=2|INPUT:Y-INVX1:A=1|INPUT:Y-NAND2X1:A,B=3|INPUT:Y-NAND3X1:A,B,C=1|INVX1:Y-NAND2X1:A,B=1|NAND2X1:Y-NAND3X1:A,B,C=2|11121110
* 79 occurrences in design
* each contains 4 cells
* pin map: {'n264': 'A', 'n504': 'B', 'n507': 'C', 'x129': 'D'} {'n509': 'Y'}
* function: ~A|(B&D)|(C&~D)
* Example occurence:
*   .subckt INVX1 A=x129 Y=n263
*   .subckt NAND2X1 A=n504 B=x129 Y=n505
*   .subckt NAND2X1 A=n263 B=n507 Y=n508
*   .subckt NAND3X1 A=n264 B=n505 C=n508 Y=n509
