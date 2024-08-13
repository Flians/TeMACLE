.SUBCKT VOTER_G3_4_11 A B C Y VCC GND
MclM37OUN_0#0 VCC B clM37OUN_0#a_2_6# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclM37OUN_0#1 clM37OUN_0#a_18_54# clM37OUN_0#a_12_41# VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclM37OUN_0#2 clM37OUN_0#Y clM37OUN_0#a_2_6# clM37OUN_0#a_18_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclM37OUN_0#3 clM37OUN_0#a_35_54# B clM37OUN_0#Y VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclM37OUN_0#4 VCC C clM37OUN_0#a_35_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclM37OUN_0#5 clM37OUN_0#a_12_41# C VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclM37OUN_0#6 GND B clM37OUN_0#a_2_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclM37OUN_0#7 clM37OUN_0#a_18_6# clM37OUN_0#a_12_41# GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclM37OUN_0#8 clM37OUN_0#Y B clM37OUN_0#a_18_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclM37OUN_0#9 clM37OUN_0#a_35_6# clM37OUN_0#a_2_6# clM37OUN_0#Y GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclM37OUN_0#10 GND C clM37OUN_0#a_35_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclM37OUN_0#11 clM37OUN_0#a_12_41# C GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclM37OUN_1#0 VCC clM37OUN_0#Y clM37OUN_1#a_2_6# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclM37OUN_1#1 clM37OUN_1#a_18_54# clM37OUN_1#a_13_43# VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclM37OUN_1#2 Y clM37OUN_0#Y clM37OUN_1#a_18_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclM37OUN_1#3 clM37OUN_1#a_35_54# clM37OUN_1#a_2_6# Y VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclM37OUN_1#4 VCC A clM37OUN_1#a_35_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclM37OUN_1#5 clM37OUN_1#a_13_43# A VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclM37OUN_1#6 GND clM37OUN_0#Y clM37OUN_1#a_2_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclM37OUN_1#7 clM37OUN_1#a_18_6# clM37OUN_1#a_13_43# GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclM37OUN_1#8 Y clM37OUN_1#a_2_6# clM37OUN_1#a_18_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclM37OUN_1#9 clM37OUN_1#a_35_6# clM37OUN_0#Y Y GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclM37OUN_1#10 GND A clM37OUN_1#a_35_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclM37OUN_1#11 clM37OUN_1#a_13_43# A GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS
* pattern code: 3|3|VOTER_G0_9_10|INVX1=1|INPUT:Y-INVX1:A=1|INPUT:Y-VOTER_G0_9_10:A,B,C=2|INVX1:Y-VOTER_G0_9_10:A,B,C=1|11110
* 195 occurrences in design
* each contains 3 cells
* pin map: {'x723': 'A', 'n6405': 'B', 'x722': 'C'} {'n6409': 'Y'}
* function: (A&B&~C)|(A&C&~B)|(B&C&~A)|(~A&~B&~C)
* Example occurence:
*   .subckt INVX1 A=x722 Y=n1243
*   .subckt VOTER_G0_9_10 A=n1243 B=x723 C=n6405 Y=n6409