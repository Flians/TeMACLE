.SUBCKT SIN_G1_26_55 A B C Y VCC GND
MclA4S7NL_0#0 clA4S7NL_0#Y C VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclA4S7NL_0#1 clA4S7NL_0#Y C GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclA4S7NL_1#0 VCC clA4S7NL_0#Y clA4S7NL_1#a_2_64# VCC pmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclA4S7NL_1#1 clA4S7NL_1#a_2_64# clA4S7NL_0#Y VCC VCC pmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclA4S7NL_1#2 clA4S7NL_1#a_25_64# A clA4S7NL_1#a_2_64# VCC pmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclA4S7NL_1#3 clA4S7NL_1#a_2_64# A clA4S7NL_1#a_25_64# VCC pmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclA4S7NL_1#4 Y B clA4S7NL_1#a_25_64# VCC pmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclA4S7NL_1#5 clA4S7NL_1#a_25_64# B Y VCC pmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclA4S7NL_1#6 Y clA4S7NL_0#Y GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclA4S7NL_1#7 GND A Y GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclA4S7NL_1#8 Y B GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS 
* pattern code: 2|3|NOR3X1|INVX1=1|INPUT:Y-INVX1:A=1|INPUT:Y-NOR3X1:A,B,C=2|INVX1:Y-NOR3X1:A,B,C=1|11110
* 397 occurrences in design
* each contains 2 cells
* pin map: {'x22': 'A', 'n109': 'B', 'x18': 'C'} {'n111': 'Y'}
* function: C&~A&~B
* Example occurence:
*   .subckt INVX1 A=x18 Y=n38
*   .subckt NOR3X1 A=n38 B=x22 C=n109 Y=n111
