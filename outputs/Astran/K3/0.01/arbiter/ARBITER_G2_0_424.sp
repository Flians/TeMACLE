.SUBCKT ARBITER_G2_0_424 A B C Y VCC GND
MclICEC4V_0#0 clICEC4V_0#Y C VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclICEC4V_0#1 clICEC4V_0#Y C GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclICEC4V_1#0 VCC clICEC4V_0#Y clICEC4V_1#a_2_64# VCC pmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclICEC4V_1#1 clICEC4V_1#a_2_64# clICEC4V_0#Y VCC VCC pmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclICEC4V_1#2 clICEC4V_1#a_25_64# A clICEC4V_1#a_2_64# VCC pmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclICEC4V_1#3 clICEC4V_1#a_2_64# A clICEC4V_1#a_25_64# VCC pmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclICEC4V_1#4 Y B clICEC4V_1#a_25_64# VCC pmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclICEC4V_1#5 clICEC4V_1#a_25_64# B Y VCC pmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclICEC4V_1#6 Y clICEC4V_0#Y GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclICEC4V_1#7 GND A Y GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclICEC4V_1#8 Y B GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS 
* pattern code: 2|3|NOR3X1|INVX1=1|INPUT:Y-INVX1:A=1|INPUT:Y-NOR3X1:A,B,C=2|INVX1:Y-NOR3X1:A,B,C=1|11110
* 261 occurrences in design
* each contains 2 cells
* pin map: {'n848': 'A', 'n850': 'B', 'x128': 'C'} {'y0': 'Y'}
* function: C&~A&~B
* Example occurence:
*   .subckt INVX1 A=x128 Y=n386
*   .subckt NOR3X1 A=n386 B=n848 C=n850 Y=y0
