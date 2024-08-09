.SUBCKT ROUTER_G3_28_87 A B C Y VCC GND
MclNDKSDU_0#0 clNDKSDU_0#Y C VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclNDKSDU_0#1 clNDKSDU_0#Y C GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclNDKSDU_1#0 VCC clNDKSDU_0#Y clNDKSDU_1#a_2_64# VCC pmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclNDKSDU_1#1 clNDKSDU_1#a_2_64# clNDKSDU_0#Y VCC VCC pmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclNDKSDU_1#2 clNDKSDU_1#a_25_64# A clNDKSDU_1#a_2_64# VCC pmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclNDKSDU_1#3 clNDKSDU_1#a_2_64# A clNDKSDU_1#a_25_64# VCC pmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclNDKSDU_1#4 Y B clNDKSDU_1#a_25_64# VCC pmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclNDKSDU_1#5 clNDKSDU_1#a_25_64# B Y VCC pmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclNDKSDU_1#6 Y clNDKSDU_0#Y GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclNDKSDU_1#7 GND A Y GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclNDKSDU_1#8 Y B GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS
* pattern code: 2|3|NOR3X1|INVX1=1|INPUT:Y-INVX1:A=1|INPUT:Y-NOR3X1:A,B,C=2|INVX1:Y-NOR3X1:A,B,C=1|11110
* 10 occurrences in design
* each contains 2 cells
* pin map: {'n146': 'A', 'n64': 'B', 'x3': 'C'} {'n147': 'Y'}
* function: C&~A&~B
* Example occurence:
*   .subckt INVX1 A=x3 Y=n63
*   .subckt NOR3X1 A=n63 B=n64 C=n146 Y=n147
