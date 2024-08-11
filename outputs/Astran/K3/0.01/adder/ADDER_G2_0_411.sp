.SUBCKT ADDER_G2_0_411 B C A Y VCC GND
MclZSTQ42_0#0 clZSTQ42_0#Y C VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclZSTQ42_0#1 clZSTQ42_0#Y C GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclZSTQ42_1#0 clZSTQ42_1#Y A VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclZSTQ42_1#1 clZSTQ42_1#Y A GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclZSTQ42_2#0 VCC B clZSTQ42_2#a_2_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclZSTQ42_2#1 clZSTQ42_2#a_2_54# clZSTQ42_0#Y VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclZSTQ42_2#2 Y clZSTQ42_1#Y clZSTQ42_2#a_2_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclZSTQ42_2#3 clZSTQ42_2#a_12_6# B GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclZSTQ42_2#4 Y clZSTQ42_0#Y clZSTQ42_2#a_12_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclZSTQ42_2#5 GND clZSTQ42_1#Y Y GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS
* pattern code: 3|3|ADDER_G1_1_439|INVX1=1|INPUT:Y-ADDER_G1_1_439:A,B=1|INPUT:Y-ADDER_G1_1_439:C=1|INPUT:Y-INVX1:A=1|INVX1:Y-ADDER_G1_1_439:A,B=1|01111
* 32 occurrences in design
* each contains 3 cells
* pin map: {'x254': 'A', 'n732': 'B', 'x126': 'C'} {'n734': 'Y'}
* function: A&(C|~B)
* Example occurence:
*   .subckt INVX1 A=x126 Y=n322
*   .subckt ADDER_G1_1_439 A=n322 B=n732 C=x254 Y=n734
