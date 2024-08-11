.SUBCKT BAR_G0_0_2023_2025_2028 A B C D Y VCC GND
MclS1T1BJ_0#0 clS1T1BJ_0#Y D VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclS1T1BJ_0#1 clS1T1BJ_0#Y D GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclS1T1BJ_1#0 clS1T1BJ_1#Y clS1T1BJ_0#Y VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclS1T1BJ_1#1 VCC B clS1T1BJ_1#Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclS1T1BJ_1#2 clS1T1BJ_1#a_9_6# clS1T1BJ_0#Y GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclS1T1BJ_1#3 clS1T1BJ_1#Y B clS1T1BJ_1#a_9_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclS1T1BJ_2#0 clS1T1BJ_2#Y C VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclS1T1BJ_2#1 VCC D clS1T1BJ_2#Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclS1T1BJ_2#2 clS1T1BJ_2#a_9_6# C GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclS1T1BJ_2#3 clS1T1BJ_2#Y D clS1T1BJ_2#a_9_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclS1T1BJ_3#0 VCC clS1T1BJ_1#Y clS1T1BJ_3#a_2_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclS1T1BJ_3#1 clS1T1BJ_3#a_2_54# clS1T1BJ_2#Y VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclS1T1BJ_3#2 Y A clS1T1BJ_3#a_2_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclS1T1BJ_3#3 clS1T1BJ_3#a_12_6# clS1T1BJ_1#Y GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclS1T1BJ_3#4 Y clS1T1BJ_2#Y clS1T1BJ_3#a_12_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclS1T1BJ_3#5 GND A Y GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS 
* pattern code: 4|4|AOI21X1|INVX1=1|NAND2X1=2|INPUT:Y-AOI21X1:C=1|INPUT:Y-INVX1:A=1|INPUT:Y-NAND2X1:A,B=3|INVX1:Y-NAND2X1:A,B=1|NAND2X1:Y-AOI21X1:A,B=2|01112111
* 82 occurrences in design
* each contains 4 cells
* pin map: {'n2169': 'A', 'n1844': 'B', 'n2171': 'C', 'x133': 'D'} {'n2173': 'Y'}
* function: ~A&(B|D)&(C|~D)
* Example occurence:
*   .subckt INVX1 A=x133 Y=n267
*   .subckt NAND2X1 A=n267 B=n1844 Y=n2170
*   .subckt NAND2X1 A=n2171 B=x133 Y=n2172
*   .subckt AOI21X1 A=n2170 B=n2172 C=n2169 Y=n2173
