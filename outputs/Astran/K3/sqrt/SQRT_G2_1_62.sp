.SUBCKT SQRT_G2_1_62 A B C Y VCC GND
MclT7M135_0#0 clT7M135_0#Y C VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclT7M135_0#1 clT7M135_0#Y C GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclT7M135_1#0 VCC clT7M135_0#Y clT7M135_1#a_2_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclT7M135_1#1 clT7M135_1#a_2_54# A VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclT7M135_1#2 Y B clT7M135_1#a_2_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclT7M135_1#3 clT7M135_1#a_12_6# clT7M135_0#Y GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclT7M135_1#4 Y A clT7M135_1#a_12_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclT7M135_1#5 GND B Y GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS 
* pattern code: 2|3|AOI21X1|INVX1=1|INPUT:Y-AOI21X1:A,B=1|INPUT:Y-AOI21X1:C=1|INPUT:Y-INVX1:A=1|INVX1:Y-AOI21X1:A,B=1|01111
* 845 occurrences in design
* each contains 2 cells
* pin map: {'n312': 'A', 'n316': 'B', 'n256': 'C'} {'n317': 'Y'}
* function: ~B&(C|~A)
* Example occurence:
*   .subckt INVX1 A=n256 Y=y63
*   .subckt AOI21X1 A=y63 B=n312 C=n316 Y=n317
