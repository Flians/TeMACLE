.SUBCKT ADDER_G0_454_455 A B C Y VCC GND
MclCZWK1K_0#0 VCC B clCZWK1K_0#a_2_6# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclCZWK1K_0#1 clCZWK1K_0#a_18_54# clCZWK1K_0#a_12_41# VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclCZWK1K_0#2 clCZWK1K_0#Y clCZWK1K_0#a_2_6# clCZWK1K_0#a_18_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclCZWK1K_0#3 clCZWK1K_0#a_35_54# B clCZWK1K_0#Y VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclCZWK1K_0#4 VCC C clCZWK1K_0#a_35_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclCZWK1K_0#5 clCZWK1K_0#a_12_41# C VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclCZWK1K_0#6 GND B clCZWK1K_0#a_2_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclCZWK1K_0#7 clCZWK1K_0#a_18_6# clCZWK1K_0#a_12_41# GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclCZWK1K_0#8 clCZWK1K_0#Y B clCZWK1K_0#a_18_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclCZWK1K_0#9 clCZWK1K_0#a_35_6# clCZWK1K_0#a_2_6# clCZWK1K_0#Y GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclCZWK1K_0#10 GND C clCZWK1K_0#a_35_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclCZWK1K_0#11 clCZWK1K_0#a_12_41# C GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclCZWK1K_1#0 VCC clCZWK1K_0#Y clCZWK1K_1#a_2_6# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclCZWK1K_1#1 clCZWK1K_1#a_18_54# clCZWK1K_1#a_12_41# VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclCZWK1K_1#2 Y clCZWK1K_1#a_2_6# clCZWK1K_1#a_18_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclCZWK1K_1#3 clCZWK1K_1#a_35_54# clCZWK1K_0#Y Y VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclCZWK1K_1#4 VCC A clCZWK1K_1#a_35_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclCZWK1K_1#5 clCZWK1K_1#a_12_41# A VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclCZWK1K_1#6 GND clCZWK1K_0#Y clCZWK1K_1#a_2_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclCZWK1K_1#7 clCZWK1K_1#a_18_6# clCZWK1K_1#a_12_41# GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclCZWK1K_1#8 Y clCZWK1K_0#Y clCZWK1K_1#a_18_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclCZWK1K_1#9 clCZWK1K_1#a_35_6# clCZWK1K_1#a_2_6# Y GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclCZWK1K_1#10 GND A clCZWK1K_1#a_35_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclCZWK1K_1#11 clCZWK1K_1#a_12_41# A GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS
* pattern code: 2|3|XNOR2X1|XNOR2X1=1|INPUT:Y-XNOR2X1:A,B=3|XNOR2X1:Y-XNOR2X1:A,B=1|11101
* 125 occurrences in design
* each contains 2 cells
* pin map: {'x2': 'A', 'n392': 'B', 'n324': 'C'} {'y3': 'Y'}
* function: (A&B&C)|(A&~B&~C)|(B&~A&~C)|(C&~A&~B)
* Example occurence:
*   .subckt XNOR2X1 A=n324 B=n392 Y=n775
*   .subckt XNOR2X1 A=n775 B=x2 Y=y3
