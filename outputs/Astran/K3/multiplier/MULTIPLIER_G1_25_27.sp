.SUBCKT MULTIPLIER_G1_25_27 A B C Y VCC GND
MclZDHDNO_0#0 VCC B clZDHDNO_0#a_2_6# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclZDHDNO_0#1 clZDHDNO_0#a_18_54# clZDHDNO_0#a_12_41# VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclZDHDNO_0#2 clZDHDNO_0#Y clZDHDNO_0#a_2_6# clZDHDNO_0#a_18_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclZDHDNO_0#3 clZDHDNO_0#a_35_54# B clZDHDNO_0#Y VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclZDHDNO_0#4 VCC C clZDHDNO_0#a_35_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclZDHDNO_0#5 clZDHDNO_0#a_12_41# C VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclZDHDNO_0#6 GND B clZDHDNO_0#a_2_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclZDHDNO_0#7 clZDHDNO_0#a_18_6# clZDHDNO_0#a_12_41# GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclZDHDNO_0#8 clZDHDNO_0#Y B clZDHDNO_0#a_18_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclZDHDNO_0#9 clZDHDNO_0#a_35_6# clZDHDNO_0#a_2_6# clZDHDNO_0#Y GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclZDHDNO_0#10 GND C clZDHDNO_0#a_35_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclZDHDNO_0#11 clZDHDNO_0#a_12_41# C GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclZDHDNO_1#0 VCC clZDHDNO_0#Y clZDHDNO_1#a_2_6# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclZDHDNO_1#1 clZDHDNO_1#a_18_54# clZDHDNO_1#a_12_41# VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclZDHDNO_1#2 Y clZDHDNO_1#a_2_6# clZDHDNO_1#a_18_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclZDHDNO_1#3 clZDHDNO_1#a_35_54# clZDHDNO_0#Y Y VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclZDHDNO_1#4 VCC A clZDHDNO_1#a_35_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclZDHDNO_1#5 clZDHDNO_1#a_12_41# A VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclZDHDNO_1#6 GND clZDHDNO_0#Y clZDHDNO_1#a_2_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclZDHDNO_1#7 clZDHDNO_1#a_18_6# clZDHDNO_1#a_12_41# GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclZDHDNO_1#8 Y clZDHDNO_0#Y clZDHDNO_1#a_18_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclZDHDNO_1#9 clZDHDNO_1#a_35_6# clZDHDNO_1#a_2_6# Y GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclZDHDNO_1#10 GND A clZDHDNO_1#a_35_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclZDHDNO_1#11 clZDHDNO_1#a_12_41# A GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS 
* pattern code: 2|3|XNOR2X1|XNOR2X1=1|INPUT:Y-XNOR2X1:A,B=3|XNOR2X1:Y-XNOR2X1:A,B=1|11101
* 1650 occurrences in design
* each contains 2 cells
* pin map: {'n273': 'A', 'n132': 'B', 'n282': 'C'} {'y2': 'Y'}
* function: (A&B&C)|(A&~B&~C)|(B&~A&~C)|(C&~A&~B)
* Example occurence:
*   .subckt XNOR2X1 A=n132 B=n282 Y=n283
*   .subckt XNOR2X1 A=n283 B=n273 Y=y2
