.SUBCKT ADDER_G3_0_411 A B C Y VCC GND
MclIYFT58_0#0 clIYFT58_0#Y C VCC VCC PMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclIYFT58_0#1 clIYFT58_0#Y C GND GND NMOS W=0.25u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclIYFT58_1#clANT9JU_0#0 clIYFT58_1#clANT9JU_0#Y A VCC VCC PMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclIYFT58_1#clANT9JU_0#1 clIYFT58_1#clANT9JU_0#Y A GND GND NMOS W=0.25u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclIYFT58_1#clANT9JU_1#0 VCC clIYFT58_0#Y clIYFT58_1#clANT9JU_1#a_2_54# VCC PMOS W=1u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclIYFT58_1#clANT9JU_1#1 clIYFT58_1#clANT9JU_1#a_2_54# B VCC VCC PMOS W=1u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclIYFT58_1#clANT9JU_1#2 Y clIYFT58_1#clANT9JU_0#Y clIYFT58_1#clANT9JU_1#a_2_54# VCC PMOS W=1u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclIYFT58_1#clANT9JU_1#3 clIYFT58_1#clANT9JU_1#a_12_6# clIYFT58_0#Y GND GND NMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclIYFT58_1#clANT9JU_1#4 Y B clIYFT58_1#clANT9JU_1#a_12_6# GND NMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclIYFT58_1#clANT9JU_1#5 GND clIYFT58_1#clANT9JU_0#Y Y GND NMOS W=0.25u L=0.05u
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
