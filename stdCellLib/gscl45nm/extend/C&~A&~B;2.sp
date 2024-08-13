.SUBCKT CTRL_G0_1_57 A B C Y VCC GND
MclWINLW0_0#0 clWINLW0_0#Y C VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclWINLW0_0#1 clWINLW0_0#Y C GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclWINLW0_1#0 VCC clWINLW0_0#Y clWINLW0_1#a_2_64# VCC pmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclWINLW0_1#1 clWINLW0_1#a_2_64# clWINLW0_0#Y VCC VCC pmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclWINLW0_1#2 clWINLW0_1#a_25_64# A clWINLW0_1#a_2_64# VCC pmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclWINLW0_1#3 clWINLW0_1#a_2_64# A clWINLW0_1#a_25_64# VCC pmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclWINLW0_1#4 Y B clWINLW0_1#a_25_64# VCC pmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclWINLW0_1#5 clWINLW0_1#a_25_64# B Y VCC pmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclWINLW0_1#6 Y clWINLW0_0#Y GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclWINLW0_1#7 GND A Y GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclWINLW0_1#8 Y B GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS 
* pattern code: 2|3|NOR3X1|INVX1=1|INPUT:Y-INVX1:A=1|INPUT:Y-NOR3X1:A,B,C=2|INVX1:Y-NOR3X1:A,B,C=1|11110
* 11 occurrences in design
* each contains 2 cells
* pin map: {'n65': 'A', 'n66': 'B', 'x1': 'C'} {'y8': 'Y'}
* function: C&~A&~B
* Example occurence:
*   .subckt INVX1 A=x1 Y=n10
*   .subckt NOR3X1 A=n10 B=n65 C=n66 Y=y8
