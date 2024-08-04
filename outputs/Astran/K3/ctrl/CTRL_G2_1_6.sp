.SUBCKT CTRL_G2_1_6 B A C Y VCC GND
MclQKCCK2_0#0 clQKCCK2_0#Y C VCC VCC PMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclQKCCK2_0#1 clQKCCK2_0#Y C GND GND NMOS W=0.25u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclQKCCK2_1#0 clQKCCK2_1#a_9_54# B VCC VCC PMOS W=1u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclQKCCK2_1#1 Y clQKCCK2_0#Y clQKCCK2_1#a_9_54# VCC PMOS W=1u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclQKCCK2_1#2 VCC A Y VCC PMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclQKCCK2_1#3 GND B clQKCCK2_1#a_2_6# GND NMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclQKCCK2_1#4 clQKCCK2_1#a_2_6# clQKCCK2_0#Y GND GND NMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclQKCCK2_1#5 Y A clQKCCK2_1#a_2_6# GND NMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS
* pattern code: 2|3|OAI21X1|INVX1=1|INPUT:Y-INVX1:A=1|INPUT:Y-OAI21X1:A,B=1|INPUT:Y-OAI21X1:C=1|INVX1:Y-OAI21X1:A,B=1|11110
* 5 occurrences in design
* each contains 2 cells
* pin map: {'n16': 'A', 'n18': 'B', 'x1': 'C'} {'n20': 'Y'}
* function: ~A|(C&~B)
* Example occurence:
*   .subckt INVX1 A=x1 Y=n10
*   .subckt OAI21X1 A=n10 B=n18 C=n16 Y=n20
