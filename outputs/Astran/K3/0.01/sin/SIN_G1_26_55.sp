.SUBCKT SIN_G1_26_55 A B C Y VCC GND
MclDB92YD_0#0 clDB92YD_0#Y C VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclDB92YD_0#1 clDB92YD_0#Y C GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclDB92YD_1#0 VCC clDB92YD_0#Y clDB92YD_1#a_2_64# VCC pmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclDB92YD_1#1 clDB92YD_1#a_2_64# clDB92YD_0#Y VCC VCC pmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclDB92YD_1#2 clDB92YD_1#a_25_64# A clDB92YD_1#a_2_64# VCC pmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclDB92YD_1#3 clDB92YD_1#a_2_64# A clDB92YD_1#a_25_64# VCC pmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclDB92YD_1#4 Y B clDB92YD_1#a_25_64# VCC pmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclDB92YD_1#5 clDB92YD_1#a_25_64# B Y VCC pmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclDB92YD_1#6 Y clDB92YD_0#Y GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclDB92YD_1#7 GND A Y GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclDB92YD_1#8 Y B GND GND nmos w=0.25u l=0.05u
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
