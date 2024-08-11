.SUBCKT MULTIPLIER_G4_56_98_169_172 A B C D Y VCC GND
MclR7CSNF_0#0 clR7CSNF_0#Y D VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclR7CSNF_0#1 clR7CSNF_0#Y D GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclR7CSNF_1#0 clR7CSNF_1#Y C VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclR7CSNF_1#1 VCC clR7CSNF_0#Y clR7CSNF_1#Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclR7CSNF_1#2 clR7CSNF_1#a_9_6# C GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclR7CSNF_1#3 clR7CSNF_1#Y clR7CSNF_0#Y clR7CSNF_1#a_9_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclR7CSNF_2#0 clR7CSNF_2#Y clR7CSNF_1#Y VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclR7CSNF_2#1 clR7CSNF_2#Y clR7CSNF_1#Y GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclR7CSNF_3#0 VCC B clR7CSNF_3#a_2_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclR7CSNF_3#1 clR7CSNF_3#a_2_54# clR7CSNF_2#Y VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclR7CSNF_3#2 Y A clR7CSNF_3#a_2_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclR7CSNF_3#3 clR7CSNF_3#a_12_6# B GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclR7CSNF_3#4 Y clR7CSNF_2#Y clR7CSNF_3#a_12_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclR7CSNF_3#5 GND A Y GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS 
* pattern code: 4|4|AOI21X1|INVX1=2|NAND2X1=1|INPUT:Y-AOI21X1:A,B=1|INPUT:Y-AOI21X1:C=1|INPUT:Y-INVX1:A=1|INPUT:Y-NAND2X1:A,B=1|INVX1:Y-AOI21X1:A,B=1|INVX1:Y-NAND2X1:A,B=1|NAND2X1:Y-INVX1:A=1|01111111
* 896 occurrences in design
* each contains 4 cells
* pin map: {'n403': 'A', 'x68': 'B', 'n298': 'C', 'n317': 'D'} {'n404': 'Y'}
* function: ~A&(D|~B|~C)
* Example occurence:
*   .subckt INVX1 A=n317 Y=n318
*   .subckt NAND2X1 A=n298 B=n318 Y=n319
*   .subckt INVX1 A=n319 Y=n320
*   .subckt AOI21X1 A=x68 B=n320 C=n403 Y=n404
