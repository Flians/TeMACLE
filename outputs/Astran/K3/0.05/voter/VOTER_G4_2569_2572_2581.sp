.SUBCKT VOTER_G4_2569_2572_2581 A B C Y VCC GND
MclQSPY58_0#0 clQSPY58_0#Y C VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclQSPY58_0#1 clQSPY58_0#Y C GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclQSPY58_1#0 VCC clQSPY58_0#Y clQSPY58_1#a_2_6# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclQSPY58_1#1 clQSPY58_1#a_18_54# clQSPY58_1#a_12_41# VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclQSPY58_1#2 clQSPY58_1#Y clQSPY58_1#a_2_6# clQSPY58_1#a_18_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclQSPY58_1#3 clQSPY58_1#a_35_54# clQSPY58_0#Y clQSPY58_1#Y VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclQSPY58_1#4 VCC B clQSPY58_1#a_35_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclQSPY58_1#5 clQSPY58_1#a_12_41# B VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclQSPY58_1#6 GND clQSPY58_0#Y clQSPY58_1#a_2_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclQSPY58_1#7 clQSPY58_1#a_18_6# clQSPY58_1#a_12_41# GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclQSPY58_1#8 clQSPY58_1#Y clQSPY58_0#Y clQSPY58_1#a_18_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclQSPY58_1#9 clQSPY58_1#a_35_6# clQSPY58_1#a_2_6# clQSPY58_1#Y GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclQSPY58_1#10 GND B clQSPY58_1#a_35_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclQSPY58_1#11 clQSPY58_1#a_12_41# B GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclQSPY58_2#0 Y clQSPY58_1#Y VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclQSPY58_2#1 VCC A Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclQSPY58_2#2 clQSPY58_2#a_9_6# clQSPY58_1#Y GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclQSPY58_2#3 Y A clQSPY58_2#a_9_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS 
* pattern code: 3|3|NAND2X1|INVX1=1|XNOR2X1=1|INPUT:Y-INVX1:A=1|INPUT:Y-NAND2X1:A,B=1|INPUT:Y-XNOR2X1:A,B=1|INVX1:Y-XNOR2X1:A,B=1|XNOR2X1:Y-NAND2X1:A,B=1|111101
* 138 occurrences in design
* each contains 3 cells
* pin map: {'n3772': 'A', 'n3763': 'B', 'x385': 'C'} {'n3796': 'Y'}
* function: ~A|(B&C)|(~B&~C)
* Example occurence:
*   .subckt INVX1 A=x385 Y=n1131
*   .subckt XNOR2X1 A=n1131 B=n3763 Y=n3764
*   .subckt NAND2X1 A=n3764 B=n3772 Y=n3796
