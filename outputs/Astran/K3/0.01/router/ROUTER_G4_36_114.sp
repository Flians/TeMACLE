.SUBCKT ROUTER_G4_36_114 C B A Y VCC GND
MclPT800B_0#0 clPT800B_0#Y A VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclPT800B_0#1 clPT800B_0#Y A GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclPT800B_1#0 clPT800B_1#a_9_54# clPT800B_0#Y VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclPT800B_1#1 Y C clPT800B_1#a_9_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclPT800B_1#2 VCC B Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclPT800B_1#3 GND clPT800B_0#Y clPT800B_1#a_2_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclPT800B_1#4 clPT800B_1#a_2_6# C GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclPT800B_1#5 Y B clPT800B_1#a_2_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS
* pattern code: 3|3|ROUTER_G1_38_39|INVX1=1|INPUT:Y-INVX1:A=1|INPUT:Y-ROUTER_G1_38_39:A=1|INPUT:Y-ROUTER_G1_38_39:B,C=1|INVX1:Y-ROUTER_G1_38_39:B,C=1|11110
* 9 occurrences in design
* each contains 3 cells
* pin map: {'n102': 'A', 'x17': 'B', 'x18': 'C'} {'n160': 'Y'}
* function: ~B|(A&~C)
* Example occurence:
*   .subckt INVX1 A=x18 Y=n71
*   .subckt ROUTER_G1_38_39 A=x17 B=n71 C=n102 Y=n160
