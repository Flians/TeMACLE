.SUBCKT MULTIPLIER_G0_2_190 A B C Y VCC GND
MclQKCCK2_0#0 clQKCCK2_0#Y C VCC VCC PMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclQKCCK2_0#1 clQKCCK2_0#Y C GND GND NMOS W=0.25u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclQKCCK2_1#0 clQKCCK2_1#a_9_54# A VCC VCC PMOS W=1u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclQKCCK2_1#1 Y clQKCCK2_0#Y clQKCCK2_1#a_9_54# VCC PMOS W=1u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclQKCCK2_1#2 VCC B Y VCC PMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclQKCCK2_1#3 GND A clQKCCK2_1#a_2_6# GND NMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclQKCCK2_1#4 clQKCCK2_1#a_2_6# clQKCCK2_0#Y GND GND NMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclQKCCK2_1#5 Y B clQKCCK2_1#a_2_6# GND NMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS
* pattern code: 2|3|OAI21X1|INVX1=1|INPUT:Y-INVX1:A=1|INPUT:Y-OAI21X1:A,B=1|INPUT:Y-OAI21X1:C=1|INVX1:Y-OAI21X1:A,B=1|11110
* 2532 occurrences in design
* each contains 2 cells
* pin map: {'n374': 'A', 'n367': 'B', 'x64': 'C'} {'n377': 'Y'}
* function: ~B|(C&~A)
* Example occurence:
*   .subckt INVX1 A=x64 Y=n193
*   .subckt OAI21X1 A=n374 B=n193 C=n367 Y=n377
