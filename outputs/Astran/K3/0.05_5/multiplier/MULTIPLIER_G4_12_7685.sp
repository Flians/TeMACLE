.SUBCKT MULTIPLIER_G4_12_7685 A B C Y VCC GND
MclZH6ZSA_0#0 VCC C clZH6ZSA_0#a_2_6# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclZH6ZSA_0#1 clZH6ZSA_0#a_18_54# clZH6ZSA_0#a_12_41# VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclZH6ZSA_0#2 clZH6ZSA_0#Y clZH6ZSA_0#a_2_6# clZH6ZSA_0#a_18_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclZH6ZSA_0#3 clZH6ZSA_0#a_35_54# C clZH6ZSA_0#Y VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclZH6ZSA_0#4 VCC B clZH6ZSA_0#a_35_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclZH6ZSA_0#5 clZH6ZSA_0#a_12_41# B VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclZH6ZSA_0#6 GND C clZH6ZSA_0#a_2_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclZH6ZSA_0#7 clZH6ZSA_0#a_18_6# clZH6ZSA_0#a_12_41# GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclZH6ZSA_0#8 clZH6ZSA_0#Y C clZH6ZSA_0#a_18_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclZH6ZSA_0#9 clZH6ZSA_0#a_35_6# clZH6ZSA_0#a_2_6# clZH6ZSA_0#Y GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclZH6ZSA_0#10 GND B clZH6ZSA_0#a_35_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclZH6ZSA_0#11 clZH6ZSA_0#a_12_41# B GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclZH6ZSA_1#0 VCC clZH6ZSA_0#Y clZH6ZSA_1#a_2_6# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclZH6ZSA_1#1 clZH6ZSA_1#a_18_54# clZH6ZSA_1#a_13_43# VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclZH6ZSA_1#2 Y clZH6ZSA_0#Y clZH6ZSA_1#a_18_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclZH6ZSA_1#3 clZH6ZSA_1#a_35_54# clZH6ZSA_1#a_2_6# Y VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclZH6ZSA_1#4 VCC A clZH6ZSA_1#a_35_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclZH6ZSA_1#5 clZH6ZSA_1#a_13_43# A VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclZH6ZSA_1#6 GND clZH6ZSA_0#Y clZH6ZSA_1#a_2_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclZH6ZSA_1#7 clZH6ZSA_1#a_18_6# clZH6ZSA_1#a_13_43# GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclZH6ZSA_1#8 Y clZH6ZSA_1#a_2_6# clZH6ZSA_1#a_18_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclZH6ZSA_1#9 clZH6ZSA_1#a_35_6# clZH6ZSA_0#Y Y GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclZH6ZSA_1#10 GND A clZH6ZSA_1#a_35_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclZH6ZSA_1#11 clZH6ZSA_1#a_13_43# A GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS
* pattern code: 3|3|MULTIPLIER_G1_25_27|INVX1=1|INPUT:Y-INVX1:A=1|INPUT:Y-MULTIPLIER_G1_25_27:A,B,C=2|INVX1:Y-MULTIPLIER_G1_25_27:A,B,C=1|11110
* 538 occurrences in design
* each contains 3 cells
* pin map: {'n7847': 'A', 'n7842': 'B', 'x2': 'C'} {'n7848': 'Y'}
* function: (A&B&~C)|(A&C&~B)|(B&C&~A)|(~A&~B&~C)
* Example occurence:
*   .subckt INVX1 A=x2 Y=n132
*   .subckt MULTIPLIER_G1_25_27 A=n132 B=n7842 C=n7847 Y=n7848
