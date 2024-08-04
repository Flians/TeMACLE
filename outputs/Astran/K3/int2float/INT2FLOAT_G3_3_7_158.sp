.SUBCKT INT2FLOAT_G3_3_7_158 A B C Y VCC GND
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
* pattern code: 3|3|NOR3X1|INVX1=2|INPUT:Y-INVX1:A=2|INPUT:Y-NOR3X1:A,B,C=1|INVX1:Y-NOR3X1:A,B,C=2|111110
* 11 occurrences in design
* each contains 3 cells
* pin map: {'n20': 'A', 'x8': 'B', 'x5': 'C'} {'n169': 'Y'}
* function: B&C&~A
* Example occurence:
*   .subckt INVX1 A=x8 Y=n21
*   .subckt INVX1 A=x5 Y=n18
*   .subckt NOR3X1 A=n18 B=n20 C=n21 Y=n169