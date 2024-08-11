.SUBCKT CAVLC_G3_0_175 A B C Y VCC GND
Mcl75I97O_0#0 cl75I97O_0#Y C VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl75I97O_0#1 cl75I97O_0#Y C GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl75I97O_1#0 cl75I97O_1#a_9_54# A VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl75I97O_1#1 Y cl75I97O_0#Y cl75I97O_1#a_9_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl75I97O_1#2 VCC B Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl75I97O_1#3 GND A cl75I97O_1#a_2_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl75I97O_1#4 cl75I97O_1#a_2_6# cl75I97O_0#Y GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl75I97O_1#5 Y B cl75I97O_1#a_2_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS
* pattern code: 2|3|OAI21X1|INVX1=1|INPUT:Y-INVX1:A=1|INPUT:Y-OAI21X1:A,B=1|INPUT:Y-OAI21X1:C=1|INVX1:Y-OAI21X1:A,B=1|11110
* 35 occurrences in design
* each contains 2 cells
* pin map: {'n237': 'A', 'n24': 'B', 'x0': 'C'} {'n240': 'Y'}
* function: ~B|(C&~A)
* Example occurence:
*   .subckt INVX1 A=x0 Y=n12
*   .subckt OAI21X1 A=n12 B=n237 C=n24 Y=n240
