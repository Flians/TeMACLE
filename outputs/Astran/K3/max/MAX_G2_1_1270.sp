.SUBCKT MAX_G2_1_1270 A B C Y VCC GND
MclCW9798_0#0 VCC A clCW9798_0#a_2_10# VCC PMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclCW9798_0#1 clCW9798_0#a_17_50# C VCC VCC PMOS W=1u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclCW9798_0#2 clCW9798_0#Y A clCW9798_0#a_17_50# VCC PMOS W=1u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclCW9798_0#3 clCW9798_0#a_30_54# clCW9798_0#a_2_10# clCW9798_0#Y VCC PMOS W=1u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclCW9798_0#4 VCC B clCW9798_0#a_30_54# VCC PMOS W=1u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclCW9798_0#5 GND A clCW9798_0#a_2_10# GND NMOS W=0.25u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclCW9798_0#6 clCW9798_0#a_17_10# C GND GND NMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclCW9798_0#7 clCW9798_0#Y clCW9798_0#a_2_10# clCW9798_0#a_17_10# GND NMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclCW9798_0#8 clCW9798_0#a_30_10# A clCW9798_0#Y GND NMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclCW9798_0#9 GND B clCW9798_0#a_30_10# GND NMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclCW9798_1#0 Y clCW9798_0#Y VCC VCC PMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclCW9798_1#1 Y clCW9798_0#Y GND GND NMOS W=0.25u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS
* pattern code: 3|3|MAX_G1_1231_1232|INVX1=1|INPUT:Y-INVX1:A=1|INPUT:Y-MAX_G1_1231_1232:B=1|INPUT:Y-MAX_G1_1231_1232:C=1|INVX1:Y-MAX_G1_1231_1232:A=1|11110
* 204 occurrences in design
* each contains 3 cells
* pin map: {'n1360': 'A', 'x120': 'B', 'x248': 'C'} {'n2549': 'Y'}
* function: (A&B)|(C&~A)
* Example occurence:
*   .subckt INVX1 A=x248 Y=n676
*   .subckt MAX_G1_1231_1232 A=n676 B=n1360 C=x120 Y=n2549
