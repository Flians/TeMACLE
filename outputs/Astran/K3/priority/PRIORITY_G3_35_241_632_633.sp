.SUBCKT PRIORITY_G3_35_241_632_633 B C A Y VCC GND
MclNDKSDU_0#0 clNDKSDU_0#Y A VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclNDKSDU_0#1 clNDKSDU_0#Y A GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclNDKSDU_1#0 VCC clNDKSDU_0#Y clNDKSDU_1#a_2_64# VCC pmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclNDKSDU_1#1 clNDKSDU_1#a_2_64# clNDKSDU_0#Y VCC VCC pmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclNDKSDU_1#2 clNDKSDU_1#a_25_64# B clNDKSDU_1#a_2_64# VCC pmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclNDKSDU_1#3 clNDKSDU_1#a_2_64# B clNDKSDU_1#a_25_64# VCC pmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclNDKSDU_1#4 Y C clNDKSDU_1#a_25_64# VCC pmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclNDKSDU_1#5 clNDKSDU_1#a_25_64# C Y VCC pmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclNDKSDU_1#6 Y clNDKSDU_0#Y GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclNDKSDU_1#7 GND B Y GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclNDKSDU_1#8 Y C GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS
* pattern code: 4|3|INVX1|INVX1=2|NAND3X1=1|INPUT:Y-INVX1:A=2|INPUT:Y-NAND3X1:A,B,C=1|INVX1:Y-NAND3X1:A,B,C=2|NAND3X1:Y-INVX1:A=1|1110111
* 7 occurrences in design
* each contains 4 cells
* pin map: {'n761': 'A', 'x49': 'B', 'x48': 'C'} {'n763': 'Y'}
* function: A&~B&~C
* Example occurence:
*   .subckt INVX1 A=x49 Y=n155
*   .subckt INVX1 A=x48 Y=n154
*   .subckt NAND3X1 A=n154 B=n155 C=n761 Y=n762
*   .subckt INVX1 A=n762 Y=n763
