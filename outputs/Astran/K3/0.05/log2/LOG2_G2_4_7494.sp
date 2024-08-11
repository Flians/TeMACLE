.SUBCKT LOG2_G2_4_7494 A B C Y VCC GND
MclYEN5V0_0#0 clYEN5V0_0#Y C VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclYEN5V0_0#1 clYEN5V0_0#Y C GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclYEN5V0_1#0 VCC clYEN5V0_0#Y clYEN5V0_1#a_2_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclYEN5V0_1#1 clYEN5V0_1#a_2_54# B VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclYEN5V0_1#2 Y A clYEN5V0_1#a_2_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclYEN5V0_1#3 clYEN5V0_1#a_12_6# clYEN5V0_0#Y GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclYEN5V0_1#4 Y B clYEN5V0_1#a_12_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclYEN5V0_1#5 GND A Y GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS
* pattern code: 2|3|AOI21X1|INVX1=1|INPUT:Y-AOI21X1:A,B=1|INPUT:Y-AOI21X1:C=1|INPUT:Y-INVX1:A=1|INVX1:Y-AOI21X1:A,B=1|01111
* 1573 occurrences in design
* each contains 2 cells
* pin map: {'n7945': 'A', 'n3353': 'B', 'n7253': 'C'} {'n7946': 'Y'}
* function: ~A&(C|~B)
* Example occurence:
*   .subckt INVX1 A=n7253 Y=n7254
*   .subckt AOI21X1 A=n7254 B=n3353 C=n7945 Y=n7946
