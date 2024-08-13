.SUBCKT SQRT_G3_69_70_121_122 A B C Y VCC GND
Mcl1EH6F1_0#0 VCC C cl1EH6F1_0#a_2_6# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl1EH6F1_0#1 cl1EH6F1_0#a_18_54# cl1EH6F1_0#a_12_41# VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl1EH6F1_0#2 cl1EH6F1_0#Y cl1EH6F1_0#a_2_6# cl1EH6F1_0#a_18_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl1EH6F1_0#3 cl1EH6F1_0#a_35_54# C cl1EH6F1_0#Y VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl1EH6F1_0#4 VCC B cl1EH6F1_0#a_35_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl1EH6F1_0#5 cl1EH6F1_0#a_12_41# B VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl1EH6F1_0#6 GND C cl1EH6F1_0#a_2_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl1EH6F1_0#7 cl1EH6F1_0#a_18_6# cl1EH6F1_0#a_12_41# GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl1EH6F1_0#8 cl1EH6F1_0#Y C cl1EH6F1_0#a_18_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl1EH6F1_0#9 cl1EH6F1_0#a_35_6# cl1EH6F1_0#a_2_6# cl1EH6F1_0#Y GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl1EH6F1_0#10 GND B cl1EH6F1_0#a_35_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl1EH6F1_0#11 cl1EH6F1_0#a_12_41# B GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl1EH6F1_1#0 Y A VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl1EH6F1_1#1 VCC cl1EH6F1_0#Y Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl1EH6F1_1#2 cl1EH6F1_1#a_9_6# A GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl1EH6F1_1#3 Y cl1EH6F1_0#Y cl1EH6F1_1#a_9_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS
* pattern code: 5|3|NAND3X1|INVX1=1|NAND2X1=1|SQRT_G1_1_67=1|INPUT:Y-INVX1:A=1|INPUT:Y-NAND2X1:A,B=1|INPUT:Y-NAND3X1:A,B,C=1|INPUT:Y-SQRT_G1_1_67:A=1|INPUT:Y-SQRT_G1_1_67:B=1|INVX1:Y-NAND2X1:A,B=1|NAND2X1:Y-NAND3X1:A,B,C=1|SQRT_G1_1_67:Y-NAND3X1:A,B,C=1|1221101
* 588 occurrences in design
* each contains 5 cells
* pin map: {'y59': 'A', 'n321': 'B', 'n258': 'C'} {'n372': 'Y'}
* function: ~A|(B&~C)|(C&~B)
* Example occurence:
*   .subckt INVX1 A=n258 Y=y62
*   .subckt NAND2X1 A=n321 B=y62 Y=n322
*   .subckt SQRT_G1_1_67 A=n258 B=n321 Y=n323
*   .subckt NAND3X1 A=n322 B=n323 C=y59 Y=n372
