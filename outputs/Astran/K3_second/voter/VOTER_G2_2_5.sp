.SUBCKT VOTER_G2_2_5 B A C Y VCC GND
Mcl6H3LUI_0#0 cl6H3LUI_0#Y C VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl6H3LUI_0#1 cl6H3LUI_0#Y C GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl6H3LUI_1#0 VCC cl6H3LUI_0#Y cl6H3LUI_1#a_2_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl6H3LUI_1#1 cl6H3LUI_1#a_2_54# A VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl6H3LUI_1#2 Y B cl6H3LUI_1#a_2_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl6H3LUI_1#3 cl6H3LUI_1#a_12_6# cl6H3LUI_0#Y GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl6H3LUI_1#4 Y A cl6H3LUI_1#a_12_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl6H3LUI_1#5 GND B Y GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS
* pattern code: 2|3|AOI21X1|INVX1=1|INPUT:Y-AOI21X1:A,B=1|INPUT:Y-AOI21X1:C=1|INPUT:Y-INVX1:A=1|INVX1:Y-AOI21X1:A,B=1|01111
* 685 occurrences in design
* each contains 2 cells
* pin map: {'n1568': 'A', 'n7459': 'B', 'x706': 'C'} {'n7460': 'Y'}
* function: ~B&(C|~A)
* Example occurence:
*   .subckt INVX1 A=x706 Y=n1567
*   .subckt AOI21X1 A=n1567 B=n1568 C=n7459 Y=n7460