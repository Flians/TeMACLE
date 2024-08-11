.SUBCKT DIV_G4_0_29129_29380 C A B Y VCC GND
Mcl75I97O_0#0 cl75I97O_0#Y B VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl75I97O_0#1 cl75I97O_0#Y B GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl75I97O_1#0 cl75I97O_1#a_9_54# C VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl75I97O_1#1 Y cl75I97O_0#Y cl75I97O_1#a_9_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl75I97O_1#2 VCC A Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl75I97O_1#3 GND C cl75I97O_1#a_2_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl75I97O_1#4 cl75I97O_1#a_2_6# cl75I97O_0#Y GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl75I97O_1#5 Y A cl75I97O_1#a_2_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS
* pattern code: 3|3|NAND2X1|INVX1=1|NAND2X1=1|INPUT:Y-INVX1:A=1|INPUT:Y-NAND2X1:A,B=2|INVX1:Y-NAND2X1:A,B=1|NAND2X1:Y-NAND2X1:A,B=1|111101
* 1345 occurrences in design
* each contains 3 cells
* pin map: {'n29323': 'A', 'n28911': 'B', 'x123': 'C'} {'n29324': 'Y'}
* function: ~A|(B&~C)
* Example occurence:
*   .subckt INVX1 A=x123 Y=n234
*   .subckt NAND2X1 A=n234 B=n28911 Y=n28912
*   .subckt NAND2X1 A=n28912 B=n29323 Y=n29324
