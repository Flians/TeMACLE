.SUBCKT ADDER_G0_454_455 A B C Y VCC GND
MclUD9SZS_0#0 VCC C clUD9SZS_0#a_2_6# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclUD9SZS_0#1 clUD9SZS_0#a_18_54# clUD9SZS_0#a_12_41# VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclUD9SZS_0#2 clUD9SZS_0#Y clUD9SZS_0#a_2_6# clUD9SZS_0#a_18_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclUD9SZS_0#3 clUD9SZS_0#a_35_54# C clUD9SZS_0#Y VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclUD9SZS_0#4 VCC B clUD9SZS_0#a_35_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclUD9SZS_0#5 clUD9SZS_0#a_12_41# B VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclUD9SZS_0#6 GND C clUD9SZS_0#a_2_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclUD9SZS_0#7 clUD9SZS_0#a_18_6# clUD9SZS_0#a_12_41# GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclUD9SZS_0#8 clUD9SZS_0#Y C clUD9SZS_0#a_18_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclUD9SZS_0#9 clUD9SZS_0#a_35_6# clUD9SZS_0#a_2_6# clUD9SZS_0#Y GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclUD9SZS_0#10 GND B clUD9SZS_0#a_35_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclUD9SZS_0#11 clUD9SZS_0#a_12_41# B GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclUD9SZS_1#0 VCC clUD9SZS_0#Y clUD9SZS_1#a_2_6# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclUD9SZS_1#1 clUD9SZS_1#a_18_54# clUD9SZS_1#a_12_41# VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclUD9SZS_1#2 Y clUD9SZS_1#a_2_6# clUD9SZS_1#a_18_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclUD9SZS_1#3 clUD9SZS_1#a_35_54# clUD9SZS_0#Y Y VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclUD9SZS_1#4 VCC A clUD9SZS_1#a_35_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclUD9SZS_1#5 clUD9SZS_1#a_12_41# A VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclUD9SZS_1#6 GND clUD9SZS_0#Y clUD9SZS_1#a_2_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclUD9SZS_1#7 clUD9SZS_1#a_18_6# clUD9SZS_1#a_12_41# GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclUD9SZS_1#8 Y clUD9SZS_0#Y clUD9SZS_1#a_18_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclUD9SZS_1#9 clUD9SZS_1#a_35_6# clUD9SZS_1#a_2_6# Y GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclUD9SZS_1#10 GND A clUD9SZS_1#a_35_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclUD9SZS_1#11 clUD9SZS_1#a_12_41# A GND GND nmos w=0.5u l=0.05u
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
