.SUBCKT ROUTER_G4_59_114 A B C Y VCC GND
Mcl1EVHYC_0#0 cl1EVHYC_0#Y C VCC VCC PMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl1EVHYC_0#1 cl1EVHYC_0#Y C GND GND NMOS W=0.25u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl1EVHYC_1#0 cl1EVHYC_1#a_9_54# B VCC VCC PMOS W=1u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl1EVHYC_1#1 Y A cl1EVHYC_1#a_9_54# VCC PMOS W=1u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl1EVHYC_1#2 VCC cl1EVHYC_0#Y Y VCC PMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl1EVHYC_1#3 GND B cl1EVHYC_1#a_2_6# GND NMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl1EVHYC_1#4 cl1EVHYC_1#a_2_6# A GND GND NMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl1EVHYC_1#5 Y cl1EVHYC_0#Y cl1EVHYC_1#a_2_6# GND NMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS
* pattern code: 2|3|OAI21X1|INVX1=1|INPUT:Y-INVX1:A=1|INPUT:Y-OAI21X1:A,B=2|INVX1:Y-OAI21X1:C=1|11110
* 6 occurrences in design
* each contains 2 cells
* pin map: {'n104': 'A', 'n71': 'B', 'x17': 'C'} {'n163': 'Y'}
* function: C|(~A&~B)
* Example occurence:
*   .subckt INVX1 A=x17 Y=n70
*   .subckt OAI21X1 A=n71 B=n104 C=n70 Y=n163
