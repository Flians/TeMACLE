.SUBCKT SQRT_G0_173_198_231_260 A B C Y VCC GND
MclZX336R_0#0 VCC C clZX336R_0#a_2_6# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclZX336R_0#1 clZX336R_0#a_18_54# clZX336R_0#a_12_41# VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclZX336R_0#2 clZX336R_0#Y clZX336R_0#a_2_6# clZX336R_0#a_18_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclZX336R_0#3 clZX336R_0#a_35_54# C clZX336R_0#Y VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclZX336R_0#4 VCC B clZX336R_0#a_35_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclZX336R_0#5 clZX336R_0#a_12_41# B VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclZX336R_0#6 GND C clZX336R_0#a_2_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclZX336R_0#7 clZX336R_0#a_18_6# clZX336R_0#a_12_41# GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclZX336R_0#8 clZX336R_0#Y C clZX336R_0#a_18_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclZX336R_0#9 clZX336R_0#a_35_6# clZX336R_0#a_2_6# clZX336R_0#Y GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclZX336R_0#10 GND B clZX336R_0#a_35_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclZX336R_0#11 clZX336R_0#a_12_41# B GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclZX336R_1#0 VCC clZX336R_0#Y clZX336R_1#a_2_6# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclZX336R_1#1 clZX336R_1#a_18_54# clZX336R_1#a_12_41# VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclZX336R_1#2 Y clZX336R_1#a_2_6# clZX336R_1#a_18_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclZX336R_1#3 clZX336R_1#a_35_54# clZX336R_0#Y Y VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclZX336R_1#4 VCC A clZX336R_1#a_35_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclZX336R_1#5 clZX336R_1#a_12_41# A VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclZX336R_1#6 GND clZX336R_0#Y clZX336R_1#a_2_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclZX336R_1#7 clZX336R_1#a_18_6# clZX336R_1#a_12_41# GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclZX336R_1#8 Y clZX336R_0#Y clZX336R_1#a_18_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclZX336R_1#9 clZX336R_1#a_35_6# clZX336R_1#a_2_6# Y GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclZX336R_1#10 GND A clZX336R_1#a_35_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclZX336R_1#11 clZX336R_1#a_12_41# A GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS
* pattern code: 4|3|INVX1|INVX1=1|XNOR2X1=2|INPUT:Y-XNOR2X1:A,B=3|INVX1:Y-XNOR2X1:A,B=1|XNOR2X1:Y-INVX1:A=2|1110111
* 1451 occurrences in design
* each contains 4 cells
* pin map: {'n488': 'A', 'n417': 'B', 'n350': 'C'} {'n490': 'Y'}
* function: (A&B&C)|(A&~B&~C)|(B&~A&~C)|(C&~A&~B)
* Example occurence:
*   .subckt XNOR2X1 A=n417 B=n350 Y=n418
*   .subckt INVX1 A=n418 Y=n419
*   .subckt XNOR2X1 A=n488 B=n419 Y=n489
*   .subckt INVX1 A=n489 Y=n490
