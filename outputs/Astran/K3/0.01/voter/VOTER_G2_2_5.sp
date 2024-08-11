.SUBCKT VOTER_G2_2_5 A B C Y VCC GND
Mcl1HPJD9_0#0 cl1HPJD9_0#Y C VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl1HPJD9_0#1 cl1HPJD9_0#Y C GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl1HPJD9_1#0 VCC cl1HPJD9_0#Y cl1HPJD9_1#a_2_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl1HPJD9_1#1 cl1HPJD9_1#a_2_54# A VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl1HPJD9_1#2 Y B cl1HPJD9_1#a_2_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl1HPJD9_1#3 cl1HPJD9_1#a_12_6# cl1HPJD9_0#Y GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl1HPJD9_1#4 Y A cl1HPJD9_1#a_12_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl1HPJD9_1#5 GND B Y GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS
* pattern code: 2|3|AOI21X1|INVX1=1|INPUT:Y-AOI21X1:A,B=1|INPUT:Y-AOI21X1:C=1|INPUT:Y-INVX1:A=1|INVX1:Y-AOI21X1:A,B=1|01111
* 691 occurrences in design
* each contains 2 cells
* pin map: {'n1568': 'A', 'n7453': 'B', 'x706': 'C'} {'n7454': 'Y'}
* function: ~B&(C|~A)
* Example occurence:
*   .subckt INVX1 A=x706 Y=n1567
*   .subckt AOI21X1 A=n1567 B=n1568 C=n7453 Y=n7454
