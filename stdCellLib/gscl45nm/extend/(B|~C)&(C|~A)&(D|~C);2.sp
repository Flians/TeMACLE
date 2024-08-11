.SUBCKT BAR_G0_41_42 A B C D Y VCC GND
MclJJ7EI3_0#0 clJJ7EI3_0#Y C VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclJJ7EI3_0#1 VCC D clJJ7EI3_0#Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclJJ7EI3_0#2 clJJ7EI3_0#Y B VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclJJ7EI3_0#3 clJJ7EI3_0#a_9_6# C GND GND nmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclJJ7EI3_0#4 clJJ7EI3_0#a_14_6# D clJJ7EI3_0#a_9_6# GND nmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclJJ7EI3_0#5 clJJ7EI3_0#Y B clJJ7EI3_0#a_14_6# GND nmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclJJ7EI3_1#0 clJJ7EI3_1#a_9_54# A VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclJJ7EI3_1#1 Y C clJJ7EI3_1#a_9_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclJJ7EI3_1#2 VCC clJJ7EI3_0#Y Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclJJ7EI3_1#3 GND A clJJ7EI3_1#a_2_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclJJ7EI3_1#4 clJJ7EI3_1#a_2_6# C GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclJJ7EI3_1#5 Y clJJ7EI3_0#Y clJJ7EI3_1#a_2_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS 
* pattern code: 2|4|OAI21X1|NAND3X1=1|INPUT:Y-NAND3X1:A,B,C=3|INPUT:Y-OAI21X1:A,B=2|NAND3X1:Y-OAI21X1:C=1|111210
* 112 occurrences in design
* each contains 2 cells
* pin map: {'n532': 'A', 'n516': 'B', 'n265': 'C', 'n509': 'D'} {'n533': 'Y'}
* function: (B|~C)&(C|~A)&(D|~C)
* Example occurence:
*   .subckt NAND3X1 A=n265 B=n509 C=n516 Y=n517
*   .subckt OAI21X1 A=n532 B=n265 C=n517 Y=n533
