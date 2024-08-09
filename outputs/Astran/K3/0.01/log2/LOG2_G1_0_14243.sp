.SUBCKT LOG2_G1_0_14243 A B C Y VCC GND
MclKQM041_0#0 clKQM041_0#Y C VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclKQM041_0#1 clKQM041_0#Y C GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclKQM041_1#0 VCC clKQM041_0#Y clKQM041_1#a_2_64# VCC pmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclKQM041_1#1 clKQM041_1#a_2_64# clKQM041_0#Y VCC VCC pmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclKQM041_1#2 clKQM041_1#a_25_64# A clKQM041_1#a_2_64# VCC pmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclKQM041_1#3 clKQM041_1#a_2_64# A clKQM041_1#a_25_64# VCC pmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclKQM041_1#4 Y B clKQM041_1#a_25_64# VCC pmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclKQM041_1#5 clKQM041_1#a_25_64# B Y VCC pmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclKQM041_1#6 Y clKQM041_0#Y GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclKQM041_1#7 GND A Y GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclKQM041_1#8 Y B GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS 
* pattern code: 2|3|NOR3X1|INVX1=1|INPUT:Y-INVX1:A=1|INPUT:Y-NOR3X1:A,B,C=2|INVX1:Y-NOR3X1:A,B,C=1|11110
* 2354 occurrences in design
* each contains 2 cells
* pin map: {'n14759': 'A', 'n14762': 'B', 'x5': 'C'} {'n14763': 'Y'}
* function: C&~A&~B
* Example occurence:
*   .subckt INVX1 A=x5 Y=n39
*   .subckt NOR3X1 A=n39 B=n14759 C=n14762 Y=n14763
