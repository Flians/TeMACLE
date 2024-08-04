.SUBCKT BAR_G0_12_13_14 B C A Y VCC GND
MclCW9798_0#0 VCC B clCW9798_0#a_2_10# VCC PMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclCW9798_0#1 clCW9798_0#a_17_50# A VCC VCC PMOS W=1u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclCW9798_0#2 clCW9798_0#Y B clCW9798_0#a_17_50# VCC PMOS W=1u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclCW9798_0#3 clCW9798_0#a_30_54# clCW9798_0#a_2_10# clCW9798_0#Y VCC PMOS W=1u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclCW9798_0#4 VCC C clCW9798_0#a_30_54# VCC PMOS W=1u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclCW9798_0#5 GND B clCW9798_0#a_2_10# GND NMOS W=0.25u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclCW9798_0#6 clCW9798_0#a_17_10# A GND GND NMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclCW9798_0#7 clCW9798_0#Y clCW9798_0#a_2_10# clCW9798_0#a_17_10# GND NMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclCW9798_0#8 clCW9798_0#a_30_10# B clCW9798_0#Y GND NMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclCW9798_0#9 GND C clCW9798_0#a_30_10# GND NMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclCW9798_1#0 Y clCW9798_0#Y VCC VCC PMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclCW9798_1#1 Y clCW9798_0#Y GND GND NMOS W=0.25u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS
* pattern code: 3|3|OAI21X1|INVX1=1|NAND2X1=1|INPUT:Y-INVX1:A=1|INPUT:Y-NAND2X1:A,B=2|INPUT:Y-OAI21X1:A,B=1|INVX1:Y-OAI21X1:A,B=1|NAND2X1:Y-OAI21X1:C=1|112110
* 69 occurrences in design
* each contains 3 cells
* pin map: {'x34': 'A', 'x128': 'B', 'x33': 'C'} {'n519': 'Y'}
* function: (B&C)|(A&~B)
* Example occurence:
*   .subckt INVX1 A=x34 Y=n170
*   .subckt NAND2X1 A=x33 B=x128 Y=n518
*   .subckt OAI21X1 A=x128 B=n170 C=n518 Y=n519
