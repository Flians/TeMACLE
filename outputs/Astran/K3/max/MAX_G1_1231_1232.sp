.SUBCKT MAX_G1_1231_1232 A B C Y VCC GND
Mcl9PCMMG_0#0 cl9PCMMG_0#Y C VCC VCC PMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl9PCMMG_0#1 cl9PCMMG_0#Y C GND GND NMOS W=0.25u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl9PCMMG_1#0 VCC B cl9PCMMG_1#a_2_10# VCC PMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl9PCMMG_1#1 cl9PCMMG_1#a_17_50# A VCC VCC PMOS W=1u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl9PCMMG_1#2 Y B cl9PCMMG_1#a_17_50# VCC PMOS W=1u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl9PCMMG_1#3 cl9PCMMG_1#a_30_54# cl9PCMMG_1#a_2_10# Y VCC PMOS W=1u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl9PCMMG_1#4 VCC cl9PCMMG_0#Y cl9PCMMG_1#a_30_54# VCC PMOS W=1u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl9PCMMG_1#5 GND B cl9PCMMG_1#a_2_10# GND NMOS W=0.25u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl9PCMMG_1#6 cl9PCMMG_1#a_17_10# A GND GND NMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl9PCMMG_1#7 Y cl9PCMMG_1#a_2_10# cl9PCMMG_1#a_17_10# GND NMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl9PCMMG_1#8 cl9PCMMG_1#a_30_10# B Y GND NMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl9PCMMG_1#9 GND cl9PCMMG_0#Y cl9PCMMG_1#a_30_10# GND NMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS
* pattern code: 2|3|OAI21X1|NAND2X1=1|INPUT:Y-NAND2X1:A,B=2|INPUT:Y-OAI21X1:A,B=2|NAND2X1:Y-OAI21X1:C=1|11210
* 161 occurrences in design
* each contains 2 cells
* pin map: {'n625': 'A', 'n1296': 'B', 'x249': 'C'} {'n2753': 'Y'}
* function: (B&C)|(~A&~B)
* Example occurence:
*   .subckt NAND2X1 A=x249 B=n1296 Y=n2752
*   .subckt OAI21X1 A=n1296 B=n625 C=n2752 Y=n2753
