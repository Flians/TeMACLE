.SUBCKT CTRL_G2_1_65 B A C Y VCC GND
Mcl1HPJD9_0#0 cl1HPJD9_0#Y C VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl1HPJD9_0#1 cl1HPJD9_0#Y C GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl1HPJD9_1#0 VCC cl1HPJD9_0#Y cl1HPJD9_1#a_2_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl1HPJD9_1#1 cl1HPJD9_1#a_2_54# B VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl1HPJD9_1#2 Y A cl1HPJD9_1#a_2_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl1HPJD9_1#3 cl1HPJD9_1#a_12_6# cl1HPJD9_0#Y GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl1HPJD9_1#4 Y B cl1HPJD9_1#a_12_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl1HPJD9_1#5 GND A Y GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS
* pattern code: 2|3|AOI21X1|INVX1=1|INPUT:Y-AOI21X1:A,B=1|INPUT:Y-AOI21X1:C=1|INPUT:Y-INVX1:A=1|INVX1:Y-AOI21X1:A,B=1|01111
* 6 occurrences in design
* each contains 2 cells
* pin map: {'n10': 'A', 'n61': 'B', 'x3': 'C'} {'n74': 'Y'}
* function: ~A&(C|~B)
* Example occurence:
*   .subckt INVX1 A=x3 Y=n12
*   .subckt AOI21X1 A=n12 B=n61 C=n10 Y=n74
