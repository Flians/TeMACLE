.SUBCKT ARBITER_G3_2_3_6 A B C Y VCC GND
Mcl9ZZVJY_0#0 cl9ZZVJY_0#Y B VCC VCC PMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl9ZZVJY_0#1 cl9ZZVJY_0#Y B GND GND NMOS W=0.25u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl9ZZVJY_1#0 cl9ZZVJY_1#Y C VCC VCC PMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl9ZZVJY_1#1 cl9ZZVJY_1#Y C GND GND NMOS W=0.25u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl9ZZVJY_2#0 Y cl9ZZVJY_0#Y VCC VCC PMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl9ZZVJY_2#1 VCC cl9ZZVJY_1#Y Y VCC PMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl9ZZVJY_2#2 Y A VCC VCC PMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl9ZZVJY_2#3 cl9ZZVJY_2#a_9_6# cl9ZZVJY_0#Y GND GND NMOS W=0.75u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl9ZZVJY_2#4 cl9ZZVJY_2#a_14_6# cl9ZZVJY_1#Y cl9ZZVJY_2#a_9_6# GND NMOS W=0.75u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl9ZZVJY_2#5 Y A cl9ZZVJY_2#a_14_6# GND NMOS W=0.75u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS
* pattern code: 3|3|NAND3X1|INVX1=2|INPUT:Y-INVX1:A=2|INPUT:Y-NAND3X1:A,B,C=1|INVX1:Y-NAND3X1:A,B,C=2|111110
* 194 occurrences in design
* each contains 3 cells
* pin map: {'n517': 'A', 'x253': 'B', 'x254': 'C'} {'n518': 'Y'}
* function: B|C|~A
* Example occurence:
*   .subckt INVX1 A=x253 Y=n511
*   .subckt INVX1 A=x254 Y=n512
*   .subckt NAND3X1 A=n511 B=n512 C=n517 Y=n518