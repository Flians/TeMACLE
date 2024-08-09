.SUBCKT CTRL_G4_1_13_88 A B C Y VCC GND
MclZR4LA4_0#0 clZR4LA4_0#Y B VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclZR4LA4_0#1 clZR4LA4_0#Y B GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclZR4LA4_1#0 clZR4LA4_1#Y C VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclZR4LA4_1#1 clZR4LA4_1#Y C GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclZR4LA4_2#0 VCC clZR4LA4_1#Y clZR4LA4_2#a_2_64# VCC pmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclZR4LA4_2#1 clZR4LA4_2#a_2_64# clZR4LA4_1#Y VCC VCC pmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclZR4LA4_2#2 clZR4LA4_2#a_25_64# clZR4LA4_0#Y clZR4LA4_2#a_2_64# VCC pmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclZR4LA4_2#3 clZR4LA4_2#a_2_64# clZR4LA4_0#Y clZR4LA4_2#a_25_64# VCC pmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclZR4LA4_2#4 Y A clZR4LA4_2#a_25_64# VCC pmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclZR4LA4_2#5 clZR4LA4_2#a_25_64# A Y VCC pmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclZR4LA4_2#6 Y clZR4LA4_1#Y GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclZR4LA4_2#7 GND clZR4LA4_0#Y Y GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclZR4LA4_2#8 Y A GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS 
* pattern code: 3|3|NOR3X1|INVX1=2|INPUT:Y-INVX1:A=2|INPUT:Y-NOR3X1:A,B,C=1|INVX1:Y-NOR3X1:A,B,C=2|111110
* 3 occurrences in design
* each contains 3 cells
* pin map: {'n95': 'A', 'x3': 'B', 'x1': 'C'} {'n96': 'Y'}
* function: B&C&~A
* Example occurence:
*   .subckt INVX1 A=x3 Y=n12
*   .subckt INVX1 A=x1 Y=n10
*   .subckt NOR3X1 A=n10 B=n12 C=n95 Y=n96
