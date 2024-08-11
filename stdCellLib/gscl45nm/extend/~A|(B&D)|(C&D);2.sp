.SUBCKT ADDER_G2_74_75 A B C D Y VCC GND
MclM275EQ_0#0 clM275EQ_0#a_9_54# B VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclM275EQ_0#1 clM275EQ_0#Y C clM275EQ_0#a_9_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclM275EQ_0#2 VCC D clM275EQ_0#Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclM275EQ_0#3 GND B clM275EQ_0#a_2_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclM275EQ_0#4 clM275EQ_0#a_2_6# C GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclM275EQ_0#5 clM275EQ_0#Y D clM275EQ_0#a_2_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclM275EQ_1#0 Y clM275EQ_0#Y VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclM275EQ_1#1 VCC A Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclM275EQ_1#2 clM275EQ_1#a_9_6# clM275EQ_0#Y GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclM275EQ_1#3 Y A clM275EQ_1#a_9_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS 
* pattern code: 2|4|NAND2X1|OAI21X1=1|INPUT:Y-NAND2X1:A,B=1|INPUT:Y-OAI21X1:A,B=2|INPUT:Y-OAI21X1:C=1|OAI21X1:Y-NAND2X1:A,B=1|111101
* 62 occurrences in design
* each contains 2 cells
* pin map: {'x4': 'A', 'n365': 'B', 'n323': 'C', 'n364': 'D'} {'n367': 'Y'}
* function: ~A|(B&D)|(C&D)
* Example occurence:
*   .subckt OAI21X1 A=n365 B=n323 C=n364 Y=n366
*   .subckt NAND2X1 A=n366 B=x4 Y=n367
