.SUBCKT DEC_G4_0_164_165 A B C Y VCC GND
MclCS6TD0_0#0 clCS6TD0_0#Y C VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclCS6TD0_0#1 clCS6TD0_0#Y C GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclCS6TD0_1#0 clCS6TD0_1#Y clCS6TD0_0#Y VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclCS6TD0_1#1 VCC B clCS6TD0_1#Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclCS6TD0_1#2 clCS6TD0_1#a_9_6# clCS6TD0_0#Y GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclCS6TD0_1#3 clCS6TD0_1#Y B clCS6TD0_1#a_9_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclCS6TD0_2#0 clCS6TD0_2#a_9_54# A VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclCS6TD0_2#1 Y clCS6TD0_1#Y clCS6TD0_2#a_9_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclCS6TD0_2#2 Y A GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclCS6TD0_2#3 GND clCS6TD0_1#Y Y GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS 
* pattern code: 3|3|NOR2X1|INVX1=1|NAND2X1=1|INPUT:Y-INVX1:A=1|INPUT:Y-NAND2X1:A,B=1|INPUT:Y-NOR2X1:A,B=1|INVX1:Y-NAND2X1:A,B=1|NAND2X1:Y-NOR2X1:A,B=1|111110
* 32 occurrences in design
* each contains 3 cells
* pin map: {'n18': 'A', 'n174': 'B', 'x4': 'C'} {'y128': 'Y'}
* function: B&~A&~C
* Example occurence:
*   .subckt INVX1 A=x4 Y=n12
*   .subckt NAND2X1 A=n12 B=n174 Y=n175
*   .subckt NOR2X1 A=n18 B=n175 Y=y128
