.SUBCKT MAX_G1_2_9 A B C Y VCC GND
MclX6MWYP_0#0 clX6MWYP_0#Y C VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclX6MWYP_0#1 clX6MWYP_0#Y C GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclX6MWYP_1#0 VCC clX6MWYP_0#Y clX6MWYP_1#a_2_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclX6MWYP_1#1 clX6MWYP_1#a_2_54# B VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclX6MWYP_1#2 Y A clX6MWYP_1#a_2_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclX6MWYP_1#3 clX6MWYP_1#a_12_6# clX6MWYP_0#Y GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclX6MWYP_1#4 Y B clX6MWYP_1#a_12_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclX6MWYP_1#5 GND A Y GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS 
* pattern code: 2|3|AOI21X1|INVX1=1|INPUT:Y-AOI21X1:A,B=1|INPUT:Y-AOI21X1:C=1|INPUT:Y-INVX1:A=1|INVX1:Y-AOI21X1:A,B=1|01111
* 237 occurrences in design
* each contains 2 cells
* pin map: {'n1736': 'A', 'x510': 'B', 'x382': 'C'} {'n1737': 'Y'}
* function: ~A&(C|~B)
* Example occurence:
*   .subckt INVX1 A=x382 Y=n785
*   .subckt AOI21X1 A=n785 B=x510 C=n1736 Y=n1737
