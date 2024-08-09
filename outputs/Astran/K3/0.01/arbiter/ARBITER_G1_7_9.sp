.SUBCKT ARBITER_G1_7_9 A B C Y VCC GND
MclJT5V13_0#0 clJT5V13_0#Y C VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclJT5V13_0#1 clJT5V13_0#Y C GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclJT5V13_1#0 clJT5V13_1#a_9_54# A VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclJT5V13_1#1 Y clJT5V13_0#Y clJT5V13_1#a_9_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclJT5V13_1#2 VCC B Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclJT5V13_1#3 GND A clJT5V13_1#a_2_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclJT5V13_1#4 clJT5V13_1#a_2_6# clJT5V13_0#Y GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclJT5V13_1#5 Y B clJT5V13_1#a_2_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS 
* pattern code: 2|3|OAI21X1|INVX1=1|INPUT:Y-INVX1:A=1|INPUT:Y-OAI21X1:A,B=1|INPUT:Y-OAI21X1:C=1|INVX1:Y-OAI21X1:A,B=1|11110
* 2691 occurrences in design
* each contains 2 cells
* pin map: {'x248': 'A', 'n380': 'B', 'x120': 'C'} {'n525': 'Y'}
* function: ~B|(C&~A)
* Example occurence:
*   .subckt INVX1 A=x120 Y=n378
*   .subckt OAI21X1 A=x248 B=n378 C=n380 Y=n525
