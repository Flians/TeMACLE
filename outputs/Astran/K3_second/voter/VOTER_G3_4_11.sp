.SUBCKT VOTER_G3_4_11 A B C Y VCC GND
MclAVK51X_0#0 VCC C clAVK51X_0#a_2_6# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclAVK51X_0#1 clAVK51X_0#a_18_54# clAVK51X_0#a_12_41# VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclAVK51X_0#2 clAVK51X_0#Y clAVK51X_0#a_2_6# clAVK51X_0#a_18_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclAVK51X_0#3 clAVK51X_0#a_35_54# C clAVK51X_0#Y VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclAVK51X_0#4 VCC B clAVK51X_0#a_35_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclAVK51X_0#5 clAVK51X_0#a_12_41# B VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclAVK51X_0#6 GND C clAVK51X_0#a_2_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclAVK51X_0#7 clAVK51X_0#a_18_6# clAVK51X_0#a_12_41# GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclAVK51X_0#8 clAVK51X_0#Y C clAVK51X_0#a_18_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclAVK51X_0#9 clAVK51X_0#a_35_6# clAVK51X_0#a_2_6# clAVK51X_0#Y GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclAVK51X_0#10 GND B clAVK51X_0#a_35_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclAVK51X_0#11 clAVK51X_0#a_12_41# B GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclAVK51X_1#0 VCC clAVK51X_0#Y clAVK51X_1#a_2_6# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclAVK51X_1#1 clAVK51X_1#a_18_54# clAVK51X_1#a_13_43# VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclAVK51X_1#2 Y clAVK51X_0#Y clAVK51X_1#a_18_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclAVK51X_1#3 clAVK51X_1#a_35_54# clAVK51X_1#a_2_6# Y VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclAVK51X_1#4 VCC A clAVK51X_1#a_35_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclAVK51X_1#5 clAVK51X_1#a_13_43# A VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclAVK51X_1#6 GND clAVK51X_0#Y clAVK51X_1#a_2_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclAVK51X_1#7 clAVK51X_1#a_18_6# clAVK51X_1#a_13_43# GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclAVK51X_1#8 Y clAVK51X_1#a_2_6# clAVK51X_1#a_18_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclAVK51X_1#9 clAVK51X_1#a_35_6# clAVK51X_0#Y Y GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclAVK51X_1#10 GND A clAVK51X_1#a_35_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclAVK51X_1#11 clAVK51X_1#a_13_43# A GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS
* pattern code: 3|3|VOTER_G0_9_10|INVX1=1|INPUT:Y-INVX1:A=1|INPUT:Y-VOTER_G0_9_10:A,B,C=2|INVX1:Y-VOTER_G0_9_10:A,B,C=1|11110
* 195 occurrences in design
* each contains 3 cells
* pin map: {'x723': 'A', 'n6406': 'B', 'x722': 'C'} {'n6410': 'Y'}
* function: (A&B&~C)|(A&C&~B)|(B&C&~A)|(~A&~B&~C)
* Example occurence:
*   .subckt INVX1 A=x722 Y=n1243
*   .subckt VOTER_G0_9_10 A=n1243 B=x723 C=n6406 Y=n6410
