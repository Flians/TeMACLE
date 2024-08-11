.SUBCKT ROUTER_G3_36_38 C B A Y VCC GND
Mcl75I97O_0#0 cl75I97O_0#Y A VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl75I97O_0#1 cl75I97O_0#Y A GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl75I97O_1#0 cl75I97O_1#a_9_54# C VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl75I97O_1#1 Y cl75I97O_0#Y cl75I97O_1#a_9_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl75I97O_1#2 VCC B Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl75I97O_1#3 GND C cl75I97O_1#a_2_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl75I97O_1#4 cl75I97O_1#a_2_6# cl75I97O_0#Y GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl75I97O_1#5 Y B cl75I97O_1#a_2_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS
* pattern code: 3|3|ROUTER_G1_38_39|INVX1=1|INPUT:Y-INVX1:A=1|INPUT:Y-ROUTER_G1_38_39:A=1|INPUT:Y-ROUTER_G1_38_39:B,C=1|INVX1:Y-ROUTER_G1_38_39:B,C=1|11110
* 9 occurrences in design
* each contains 3 cells
* pin map: {'n102': 'A', 'x13': 'B', 'x12': 'C'} {'n138': 'Y'}
* function: ~B|(A&~C)
* Example occurence:
*   .subckt INVX1 A=x12 Y=n68
*   .subckt ROUTER_G1_38_39 A=x13 B=n102 C=n68 Y=n138
