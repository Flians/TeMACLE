.SUBCKT SQRT_G1_91_92 A B C D Y VCC GND
Mcl8H04NN_0#0 cl8H04NN_0#Y C VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl8H04NN_0#1 VCC D cl8H04NN_0#Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl8H04NN_0#2 cl8H04NN_0#Y B VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl8H04NN_0#3 cl8H04NN_0#a_9_6# C GND GND nmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl8H04NN_0#4 cl8H04NN_0#a_14_6# D cl8H04NN_0#a_9_6# GND nmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl8H04NN_0#5 cl8H04NN_0#Y B cl8H04NN_0#a_14_6# GND nmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl8H04NN_1#0 VCC cl8H04NN_0#Y cl8H04NN_1#a_2_6# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl8H04NN_1#1 cl8H04NN_1#a_18_54# cl8H04NN_1#a_12_41# VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl8H04NN_1#2 Y cl8H04NN_1#a_2_6# cl8H04NN_1#a_18_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl8H04NN_1#3 cl8H04NN_1#a_35_54# cl8H04NN_0#Y Y VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl8H04NN_1#4 VCC A cl8H04NN_1#a_35_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl8H04NN_1#5 cl8H04NN_1#a_12_41# A VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl8H04NN_1#6 GND cl8H04NN_0#Y cl8H04NN_1#a_2_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl8H04NN_1#7 cl8H04NN_1#a_18_6# cl8H04NN_1#a_12_41# GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl8H04NN_1#8 Y cl8H04NN_0#Y cl8H04NN_1#a_18_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl8H04NN_1#9 cl8H04NN_1#a_35_6# cl8H04NN_1#a_2_6# Y GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl8H04NN_1#10 GND A cl8H04NN_1#a_35_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl8H04NN_1#11 cl8H04NN_1#a_12_41# A GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS 
* pattern code: 2|4|XNOR2X1|NAND3X1=1|INPUT:Y-NAND3X1:A,B,C=3|INPUT:Y-XNOR2X1:A,B=1|NAND3X1:Y-XNOR2X1:A,B=1|111110
* 1615 occurrences in design
* each contains 2 cells
* pin map: {'n294': 'A', 'y60': 'B', 'n287': 'C', 'n291': 'D'} {'n339': 'Y'}
* function: (A&~B)|(A&~C)|(A&~D)|(B&C&D&~A)
* Example occurence:
*   .subckt NAND3X1 A=n287 B=n291 C=y60 Y=n338
*   .subckt XNOR2X1 A=n338 B=n294 Y=n339
