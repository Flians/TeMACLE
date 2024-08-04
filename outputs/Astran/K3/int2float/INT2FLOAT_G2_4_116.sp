.SUBCKT INT2FLOAT_G2_4_116 A B C Y VCC GND
MclSRPACP_0#0 clSRPACP_0#Y C VCC VCC PMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclSRPACP_0#1 clSRPACP_0#Y C GND GND NMOS W=0.25u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclSRPACP_1#0 VCC clSRPACP_0#Y clSRPACP_1#a_2_64# VCC PMOS W=0.75u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclSRPACP_1#1 clSRPACP_1#a_2_64# clSRPACP_0#Y VCC VCC PMOS W=0.75u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclSRPACP_1#2 clSRPACP_1#a_25_64# A clSRPACP_1#a_2_64# VCC PMOS W=0.75u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclSRPACP_1#3 clSRPACP_1#a_2_64# A clSRPACP_1#a_25_64# VCC PMOS W=0.75u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclSRPACP_1#4 Y B clSRPACP_1#a_25_64# VCC PMOS W=0.75u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclSRPACP_1#5 clSRPACP_1#a_25_64# B Y VCC PMOS W=0.75u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclSRPACP_1#6 Y clSRPACP_0#Y GND GND NMOS W=0.25u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclSRPACP_1#7 GND A Y GND NMOS W=0.25u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclSRPACP_1#8 Y B GND GND NMOS W=0.25u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS
* pattern code: 2|3|NOR3X1|INVX1=1|INPUT:Y-INVX1:A=1|INPUT:Y-NOR3X1:A,B,C=2|INVX1:Y-NOR3X1:A,B,C=1|11110
* 15 occurrences in design
* each contains 2 cells
* pin map: {'n19': 'A', 'n113': 'B', 'x7': 'C'} {'n114': 'Y'}
* function: C&~A&~B
* Example occurence:
*   .subckt INVX1 A=x7 Y=n20
*   .subckt NOR3X1 A=n19 B=n20 C=n113 Y=n114
