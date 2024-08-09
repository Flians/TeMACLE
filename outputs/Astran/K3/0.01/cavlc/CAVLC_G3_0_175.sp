.SUBCKT CAVLC_G3_0_175 A B C Y VCC GND
MclXBHG5R_0#0 clXBHG5R_0#Y C VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclXBHG5R_0#1 clXBHG5R_0#Y C GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclXBHG5R_1#0 clXBHG5R_1#a_9_54# clXBHG5R_0#Y VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclXBHG5R_1#1 Y A clXBHG5R_1#a_9_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclXBHG5R_1#2 VCC B Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclXBHG5R_1#3 GND clXBHG5R_0#Y clXBHG5R_1#a_2_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclXBHG5R_1#4 clXBHG5R_1#a_2_6# A GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclXBHG5R_1#5 Y B clXBHG5R_1#a_2_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS 
* pattern code: 2|3|OAI21X1|INVX1=1|INPUT:Y-INVX1:A=1|INPUT:Y-OAI21X1:A,B=1|INPUT:Y-OAI21X1:C=1|INVX1:Y-OAI21X1:A,B=1|11110
* 34 occurrences in design
* each contains 2 cells
* pin map: {'n237': 'A', 'n24': 'B', 'x0': 'C'} {'n240': 'Y'}
* function: ~B|(C&~A)
* Example occurence:
*   .subckt INVX1 A=x0 Y=n12
*   .subckt OAI21X1 A=n12 B=n237 C=n24 Y=n240
