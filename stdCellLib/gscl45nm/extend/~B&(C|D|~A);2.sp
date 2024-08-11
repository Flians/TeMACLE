.SUBCKT ARBITER_G1_10_1104 A B C D Y VCC GND
MclVO49IZ_0#0 clVO49IZ_0#a_9_54# D VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclVO49IZ_0#1 clVO49IZ_0#Y C clVO49IZ_0#a_9_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclVO49IZ_0#2 clVO49IZ_0#Y D GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclVO49IZ_0#3 GND C clVO49IZ_0#Y GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclVO49IZ_1#0 VCC clVO49IZ_0#Y clVO49IZ_1#a_2_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclVO49IZ_1#1 clVO49IZ_1#a_2_54# A VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclVO49IZ_1#2 Y B clVO49IZ_1#a_2_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclVO49IZ_1#3 clVO49IZ_1#a_12_6# clVO49IZ_0#Y GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclVO49IZ_1#4 Y A clVO49IZ_1#a_12_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclVO49IZ_1#5 GND B Y GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS 
* pattern code: 2|4|AOI21X1|NOR2X1=1|INPUT:Y-AOI21X1:A,B=1|INPUT:Y-AOI21X1:C=1|INPUT:Y-NOR2X1:A,B=2|NOR2X1:Y-AOI21X1:A,B=1|011111
* 1320 occurrences in design
* each contains 2 cells
* pin map: {'n1570': 'A', 'n523': 'B', 'x121': 'C', 'n525': 'D'} {'n1571': 'Y'}
* function: ~B&(C|D|~A)
* Example occurence:
*   .subckt NOR2X1 A=n525 B=x121 Y=n526
*   .subckt AOI21X1 A=n526 B=n1570 C=n523 Y=n1571
