.SUBCKT SQRT_G3_2_4 A B C Y VCC GND
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
* pattern code: 3|3|SQRT_G0_0_264|INVX1=1|INPUT:Y-INVX1:A=1|INPUT:Y-SQRT_G0_0_264:A,B=1|INPUT:Y-SQRT_G0_0_264:C=1|INVX1:Y-SQRT_G0_0_264:A,B=1|11110
* 697 occurrences in design
* each contains 3 cells
* pin map: {'n251': 'A', 'x125': 'B', 'x126': 'C'} {'n256': 'Y'}
* function: B|C|~A
* Example occurence:
*   .subckt INVX1 A=x126 Y=n252
*   .subckt SQRT_G0_0_264 A=n252 B=n251 C=x125 Y=n256
