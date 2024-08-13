.SUBCKT ROUTER_G4_28_86 C A B Y VCC GND
MclIL18HC_0#0 clIL18HC_0#a_9_54# A VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclIL18HC_0#1 clIL18HC_0#Y B clIL18HC_0#a_9_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclIL18HC_0#2 clIL18HC_0#Y A GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclIL18HC_0#3 GND B clIL18HC_0#Y GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclIL18HC_1#0 clIL18HC_1#a_2_6# C VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclIL18HC_1#1 VCC clIL18HC_0#Y clIL18HC_1#a_2_6# VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclIL18HC_1#2 Y clIL18HC_1#a_2_6# VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclIL18HC_1#3 clIL18HC_1#a_9_6# C clIL18HC_1#a_2_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclIL18HC_1#4 GND clIL18HC_0#Y clIL18HC_1#a_9_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclIL18HC_1#5 Y clIL18HC_1#a_2_6# GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS
* pattern code: 2|3|NOR3X1|INVX1=1|INPUT:Y-INVX1:A=1|INPUT:Y-NOR3X1:A,B,C=2|INVX1:Y-NOR3X1:A,B,C=1|11110
* 10 occurrences in design
* each contains 2 cells
* pin map: {'n145': 'A', 'n64': 'B', 'x3': 'C'} {'n146': 'Y'}
* function: C&~A&~B
* Example occurence:
*   .subckt INVX1 A=x3 Y=n63
*   .subckt NOR3X1 A=n63 B=n64 C=n145 Y=n146
