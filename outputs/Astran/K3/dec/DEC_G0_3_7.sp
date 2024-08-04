.SUBCKT DEC_G0_3_7 A B C Y VCC GND
Mcl8H3CJ6_0#0 cl8H3CJ6_0#Y B VCC VCC PMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl8H3CJ6_0#1 VCC C cl8H3CJ6_0#Y VCC PMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl8H3CJ6_0#2 cl8H3CJ6_0#a_9_6# B GND GND NMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl8H3CJ6_0#3 cl8H3CJ6_0#Y C cl8H3CJ6_0#a_9_6# GND NMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl8H3CJ6_1#0 cl8H3CJ6_1#a_9_54# cl8H3CJ6_0#Y VCC VCC PMOS W=1u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl8H3CJ6_1#1 Y A cl8H3CJ6_1#a_9_54# VCC PMOS W=1u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl8H3CJ6_1#2 Y cl8H3CJ6_0#Y GND GND NMOS W=0.25u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl8H3CJ6_1#3 GND A Y GND NMOS W=0.25u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS
* pattern code: 2|3|NOR2X1|NAND2X1=1|INPUT:Y-NAND2X1:A,B=2|INPUT:Y-NOR2X1:A,B=1|NAND2X1:Y-NOR2X1:A,B=1|11110
* 320 occurrences in design
* each contains 2 cells
* pin map: {'n22': 'A', 'n14': 'B', 'n18': 'C'} {'y0': 'Y'}
* function: B&C&~A
* Example occurence:
*   .subckt NAND2X1 A=n14 B=n18 Y=n19
*   .subckt NOR2X1 A=n19 B=n22 Y=y0
