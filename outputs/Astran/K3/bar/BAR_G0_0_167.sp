.SUBCKT BAR_G0_0_167 B A C Y VCC GND
MclVZUYV4_0#0 clVZUYV4_0#Y C VCC VCC PMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclVZUYV4_0#1 clVZUYV4_0#Y C GND GND NMOS W=0.25u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclVZUYV4_1#0 VCC clVZUYV4_0#Y clVZUYV4_1#a_2_54# VCC PMOS W=1u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclVZUYV4_1#1 clVZUYV4_1#a_2_54# B VCC VCC PMOS W=1u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclVZUYV4_1#2 Y A clVZUYV4_1#a_2_54# VCC PMOS W=1u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclVZUYV4_1#3 clVZUYV4_1#a_12_6# clVZUYV4_0#Y GND GND NMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclVZUYV4_1#4 Y B clVZUYV4_1#a_12_6# GND NMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclVZUYV4_1#5 GND A Y GND NMOS W=0.25u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS
* pattern code: 2|3|AOI21X1|INVX1=1|INPUT:Y-AOI21X1:A,B=1|INPUT:Y-AOI21X1:C=1|INPUT:Y-INVX1:A=1|INVX1:Y-AOI21X1:A,B=1|INVX1:Y-AOI21X1:C=1|01112
* 74 occurrences in design
* each contains 2 cells
* pin map: {'n470': 'A', 'n535': 'B', 'x133': 'C'} {'n536': 'Y'}
* function: ~A&(C|~B)
* Example occurence:
*   .subckt INVX1 A=x133 Y=n267
*   .subckt AOI21X1 A=n267 B=n535 C=n470 Y=n536