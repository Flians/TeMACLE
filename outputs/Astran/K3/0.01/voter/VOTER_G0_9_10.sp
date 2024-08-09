.SUBCKT VOTER_G0_9_10 A B C Y VCC GND
MclCMNVE0_0#0 VCC B clCMNVE0_0#a_2_6# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclCMNVE0_0#1 clCMNVE0_0#a_18_54# clCMNVE0_0#a_12_41# VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclCMNVE0_0#2 clCMNVE0_0#Y clCMNVE0_0#a_2_6# clCMNVE0_0#a_18_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclCMNVE0_0#3 clCMNVE0_0#a_35_54# B clCMNVE0_0#Y VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclCMNVE0_0#4 VCC C clCMNVE0_0#a_35_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclCMNVE0_0#5 clCMNVE0_0#a_12_41# C VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclCMNVE0_0#6 GND B clCMNVE0_0#a_2_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclCMNVE0_0#7 clCMNVE0_0#a_18_6# clCMNVE0_0#a_12_41# GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclCMNVE0_0#8 clCMNVE0_0#Y B clCMNVE0_0#a_18_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclCMNVE0_0#9 clCMNVE0_0#a_35_6# clCMNVE0_0#a_2_6# clCMNVE0_0#Y GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclCMNVE0_0#10 GND C clCMNVE0_0#a_35_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclCMNVE0_0#11 clCMNVE0_0#a_12_41# C GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclCMNVE0_1#0 VCC A clCMNVE0_1#a_2_6# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclCMNVE0_1#1 clCMNVE0_1#a_18_54# clCMNVE0_1#a_12_41# VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclCMNVE0_1#2 Y clCMNVE0_1#a_2_6# clCMNVE0_1#a_18_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclCMNVE0_1#3 clCMNVE0_1#a_35_54# A Y VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclCMNVE0_1#4 VCC clCMNVE0_0#Y clCMNVE0_1#a_35_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclCMNVE0_1#5 clCMNVE0_1#a_12_41# clCMNVE0_0#Y VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclCMNVE0_1#6 GND A clCMNVE0_1#a_2_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclCMNVE0_1#7 clCMNVE0_1#a_18_6# clCMNVE0_1#a_12_41# GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclCMNVE0_1#8 Y A clCMNVE0_1#a_18_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclCMNVE0_1#9 clCMNVE0_1#a_35_6# clCMNVE0_1#a_2_6# Y GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclCMNVE0_1#10 GND clCMNVE0_0#Y clCMNVE0_1#a_35_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclCMNVE0_1#11 clCMNVE0_1#a_12_41# clCMNVE0_0#Y GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS 
* pattern code: 2|3|XNOR2X1|XNOR2X1=1|INPUT:Y-XNOR2X1:A,B=3|XNOR2X1:Y-XNOR2X1:A,B=1|11101
* 1125 occurrences in design
* each contains 2 cells
* pin map: {'x445': 'A', 'x446': 'B', 'x447': 'C'} {'n4618': 'Y'}
* function: (A&B&C)|(A&~B&~C)|(B&~A&~C)|(C&~A&~B)
* Example occurence:
*   .subckt XNOR2X1 A=x446 B=x447 Y=n4617
*   .subckt XNOR2X1 A=x445 B=n4617 Y=n4618
