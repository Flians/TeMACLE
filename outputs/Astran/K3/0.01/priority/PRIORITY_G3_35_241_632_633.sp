.SUBCKT PRIORITY_G3_35_241_632_633 B A C Y VCC GND
MclQG6SLR_0#0 clQG6SLR_0#Y C VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclQG6SLR_0#1 clQG6SLR_0#Y C GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclQG6SLR_1#0 clQG6SLR_1#Y clQG6SLR_0#Y VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclQG6SLR_1#1 VCC A clQG6SLR_1#Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclQG6SLR_1#2 clQG6SLR_1#a_9_6# clQG6SLR_0#Y GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclQG6SLR_1#3 clQG6SLR_1#Y A clQG6SLR_1#a_9_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclQG6SLR_2#0 clQG6SLR_2#a_9_54# clQG6SLR_1#Y VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclQG6SLR_2#1 Y B clQG6SLR_2#a_9_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclQG6SLR_2#2 Y clQG6SLR_1#Y GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclQG6SLR_2#3 GND B Y GND nmos w=0.25u l=0.05u
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
