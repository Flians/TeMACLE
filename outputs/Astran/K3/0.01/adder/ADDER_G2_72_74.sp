.SUBCKT ADDER_G2_72_74 A B C Y VCC GND
MclXF3XBL_0#0 clXF3XBL_0#Y C VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclXF3XBL_0#1 clXF3XBL_0#Y C GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclXF3XBL_1#0 clXF3XBL_1#a_9_54# A VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclXF3XBL_1#1 Y clXF3XBL_0#Y clXF3XBL_1#a_9_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclXF3XBL_1#2 VCC B Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclXF3XBL_1#3 GND A clXF3XBL_1#a_2_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclXF3XBL_1#4 clXF3XBL_1#a_2_6# clXF3XBL_0#Y GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclXF3XBL_1#5 Y B clXF3XBL_1#a_2_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS 
* pattern code: 2|3|OAI21X1|INVX1=1|INPUT:Y-INVX1:A=1|INPUT:Y-OAI21X1:A,B=1|INPUT:Y-OAI21X1:C=1|INVX1:Y-OAI21X1:A,B=1|11110
* 32 occurrences in design
* each contains 2 cells
* pin map: {'n365': 'A', 'n364': 'B', 'x131': 'C'} {'n366': 'Y'}
* function: ~B|(C&~A)
* Example occurence:
*   .subckt INVX1 A=x131 Y=n323
*   .subckt OAI21X1 A=n365 B=n323 C=n364 Y=n366
