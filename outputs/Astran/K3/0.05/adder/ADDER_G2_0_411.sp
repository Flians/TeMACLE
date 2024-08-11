.SUBCKT ADDER_G2_0_411 A B C Y VCC GND
MclSPCKVZ_0#0 clSPCKVZ_0#Y C VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclSPCKVZ_0#1 clSPCKVZ_0#Y C GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclSPCKVZ_1#clN7PBGW_0#0 clSPCKVZ_1#clN7PBGW_0#Y A VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclSPCKVZ_1#clN7PBGW_0#1 clSPCKVZ_1#clN7PBGW_0#Y A GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclSPCKVZ_1#clN7PBGW_1#0 VCC clSPCKVZ_0#Y clSPCKVZ_1#clN7PBGW_1#a_2_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclSPCKVZ_1#clN7PBGW_1#1 clSPCKVZ_1#clN7PBGW_1#a_2_54# B VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclSPCKVZ_1#clN7PBGW_1#2 Y clSPCKVZ_1#clN7PBGW_0#Y clSPCKVZ_1#clN7PBGW_1#a_2_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclSPCKVZ_1#clN7PBGW_1#3 clSPCKVZ_1#clN7PBGW_1#a_12_6# clSPCKVZ_0#Y GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclSPCKVZ_1#clN7PBGW_1#4 Y B clSPCKVZ_1#clN7PBGW_1#a_12_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclSPCKVZ_1#clN7PBGW_1#5 GND clSPCKVZ_1#clN7PBGW_0#Y Y GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS 
* pattern code: 3|3|ADDER_G1_1_439|INVX1=1|INPUT:Y-ADDER_G1_1_439:A,B=1|INPUT:Y-ADDER_G1_1_439:C=1|INPUT:Y-INVX1:A=1|INVX1:Y-ADDER_G1_1_439:A,B=1|01111
* 32 occurrences in design
* each contains 2 cells
* pin map: {'x254': 'A', 'n732': 'B', 'x126': 'C'} {'n734': 'Y'}
* function: A&(C|~B)
* Example occurence:
*   .subckt INVX1 A=x126 Y=n322
*   .subckt ADDER_G1_1_439 A=n322 B=n732 C=x254 Y=n734
