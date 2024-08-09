.SUBCKT VOTER_G0_9_10 A B C Y VCC GND
MclLI7EMB_0#0 VCC B clLI7EMB_0#a_2_6# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclLI7EMB_0#1 clLI7EMB_0#a_18_54# clLI7EMB_0#a_12_41# VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclLI7EMB_0#2 clLI7EMB_0#Y clLI7EMB_0#a_2_6# clLI7EMB_0#a_18_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclLI7EMB_0#3 clLI7EMB_0#a_35_54# B clLI7EMB_0#Y VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclLI7EMB_0#4 VCC C clLI7EMB_0#a_35_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclLI7EMB_0#5 clLI7EMB_0#a_12_41# C VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclLI7EMB_0#6 GND B clLI7EMB_0#a_2_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclLI7EMB_0#7 clLI7EMB_0#a_18_6# clLI7EMB_0#a_12_41# GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclLI7EMB_0#8 clLI7EMB_0#Y B clLI7EMB_0#a_18_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclLI7EMB_0#9 clLI7EMB_0#a_35_6# clLI7EMB_0#a_2_6# clLI7EMB_0#Y GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclLI7EMB_0#10 GND C clLI7EMB_0#a_35_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclLI7EMB_0#11 clLI7EMB_0#a_12_41# C GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclLI7EMB_1#0 VCC A clLI7EMB_1#a_2_6# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclLI7EMB_1#1 clLI7EMB_1#a_18_54# clLI7EMB_1#a_12_41# VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclLI7EMB_1#2 Y clLI7EMB_1#a_2_6# clLI7EMB_1#a_18_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclLI7EMB_1#3 clLI7EMB_1#a_35_54# A Y VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclLI7EMB_1#4 VCC clLI7EMB_0#Y clLI7EMB_1#a_35_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclLI7EMB_1#5 clLI7EMB_1#a_12_41# clLI7EMB_0#Y VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclLI7EMB_1#6 GND A clLI7EMB_1#a_2_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclLI7EMB_1#7 clLI7EMB_1#a_18_6# clLI7EMB_1#a_12_41# GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclLI7EMB_1#8 Y A clLI7EMB_1#a_18_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclLI7EMB_1#9 clLI7EMB_1#a_35_6# clLI7EMB_1#a_2_6# Y GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclLI7EMB_1#10 GND clLI7EMB_0#Y clLI7EMB_1#a_35_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclLI7EMB_1#11 clLI7EMB_1#a_12_41# clLI7EMB_0#Y GND GND nmos w=0.5u l=0.05u
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
