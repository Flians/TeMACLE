.SUBCKT ARBITER_G4_10_395 A B C Y VCC GND
Mcl38UQ62_0#0 cl38UQ62_0#Y C VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl38UQ62_0#1 cl38UQ62_0#Y C GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl38UQ62_1#0 VCC cl38UQ62_0#Y cl38UQ62_1#a_2_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl38UQ62_1#1 cl38UQ62_1#a_2_54# A VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl38UQ62_1#2 Y B cl38UQ62_1#a_2_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl38UQ62_1#3 cl38UQ62_1#a_12_6# cl38UQ62_0#Y GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl38UQ62_1#4 Y A cl38UQ62_1#a_12_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl38UQ62_1#5 GND B Y GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS 
* pattern code: 2|3|AOI21X1|INVX1=1|INPUT:Y-AOI21X1:A,B=1|INPUT:Y-AOI21X1:C=1|INPUT:Y-INVX1:A=1|INVX1:Y-AOI21X1:A,B=1|01111
* 1342 occurrences in design
* each contains 2 cells
* pin map: {'n802': 'A', 'n804': 'B', 'n521': 'C'} {'n806': 'Y'}
* function: ~B&(C|~A)
* Example occurence:
*   .subckt INVX1 A=n521 Y=n522
*   .subckt AOI21X1 A=n522 B=n802 C=n804 Y=n806
