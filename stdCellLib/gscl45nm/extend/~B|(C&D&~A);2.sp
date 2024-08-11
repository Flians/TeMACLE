.SUBCKT MULTIPLIER_G3_16_19 A B C D Y VCC GND
MclZNVGQR_0#0 clZNVGQR_0#Y C VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclZNVGQR_0#1 VCC D clZNVGQR_0#Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclZNVGQR_0#2 clZNVGQR_0#a_9_6# C GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclZNVGQR_0#3 clZNVGQR_0#Y D clZNVGQR_0#a_9_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclZNVGQR_1#0 clZNVGQR_1#a_9_54# A VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclZNVGQR_1#1 Y clZNVGQR_0#Y clZNVGQR_1#a_9_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclZNVGQR_1#2 VCC B Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclZNVGQR_1#3 GND A clZNVGQR_1#a_2_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclZNVGQR_1#4 clZNVGQR_1#a_2_6# clZNVGQR_0#Y GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclZNVGQR_1#5 Y B clZNVGQR_1#a_2_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS 
* pattern code: 2|4|OAI21X1|NAND2X1=1|INPUT:Y-NAND2X1:A,B=2|INPUT:Y-OAI21X1:A,B=1|INPUT:Y-OAI21X1:C=1|NAND2X1:Y-OAI21X1:A,B=1|111110
* 1275 occurrences in design
* each contains 2 cells
* pin map: {'n194': 'A', 'n274': 'B', 'n130': 'C', 'x1': 'D'} {'n275': 'Y'}
* function: ~B|(C&D&~A)
* Example occurence:
*   .subckt NAND2X1 A=n130 B=x1 Y=n258
*   .subckt OAI21X1 A=n194 B=n258 C=n274 Y=n275
