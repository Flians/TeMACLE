.SUBCKT DEC_G1_0_1_3 A B C Y VCC GND
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
* 6 occurrences in design
* each contains 3 cells
* pin map: {'n14': 'A', 'x4': 'B', 'x5': 'C'} {'n15': 'Y'}
* function: B|C|~A
* Example occurence:
*   .subckt INVX1 A=x4 Y=n12
*   .subckt INVX1 A=x5 Y=n13
*   .subckt NAND3X1 A=n12 B=n13 C=n14 Y=n15
