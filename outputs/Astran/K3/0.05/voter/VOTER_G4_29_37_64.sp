.SUBCKT VOTER_G4_29_37_64 B C A Y VCC GND
MclD5R39L_0#0 clD5R39L_0#Y A VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclD5R39L_0#1 clD5R39L_0#Y A GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclD5R39L_1#0 clD5R39L_1#a_9_54# B VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclD5R39L_1#1 Y C clD5R39L_1#a_9_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclD5R39L_1#2 VCC clD5R39L_0#Y Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclD5R39L_1#3 GND B clD5R39L_1#a_2_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclD5R39L_1#4 clD5R39L_1#a_2_6# C GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclD5R39L_1#5 Y clD5R39L_0#Y clD5R39L_1#a_2_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS
* pattern code: 4|3|INVX1|INVX1=1|VOTER_G2_2_5=1|INPUT:Y-INVX1:A=1|INPUT:Y-VOTER_G2_2_5:B=1|INPUT:Y-VOTER_G2_2_5:C=1|INVX1:Y-VOTER_G2_2_5:A=1|VOTER_G2_2_5:Y-INVX1:A=1|111011
* 94 occurrences in design
* each contains 4 cells
* pin map: {'n6176': 'A', 'x709': 'B', 'x710': 'C'} {'n6178': 'Y'}
* function: A|(~B&~C)
* Example occurence:
*   .subckt INVX1 A=x710 Y=n1239
*   .subckt VOTER_G2_2_5 A=n1239 B=n6176 C=x709 Y=n6177
*   .subckt INVX1 A=n6177 Y=n6178
