.SUBCKT SQUARE_G4_19_20 A B C Y VCC GND
Mcl6WMDGH_0#0 VCC B cl6WMDGH_0#a_2_6# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl6WMDGH_0#1 cl6WMDGH_0#a_18_54# cl6WMDGH_0#a_12_41# VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl6WMDGH_0#2 cl6WMDGH_0#Y cl6WMDGH_0#a_2_6# cl6WMDGH_0#a_18_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl6WMDGH_0#3 cl6WMDGH_0#a_35_54# B cl6WMDGH_0#Y VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl6WMDGH_0#4 VCC C cl6WMDGH_0#a_35_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl6WMDGH_0#5 cl6WMDGH_0#a_12_41# C VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl6WMDGH_0#6 GND B cl6WMDGH_0#a_2_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl6WMDGH_0#7 cl6WMDGH_0#a_18_6# cl6WMDGH_0#a_12_41# GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl6WMDGH_0#8 cl6WMDGH_0#Y B cl6WMDGH_0#a_18_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl6WMDGH_0#9 cl6WMDGH_0#a_35_6# cl6WMDGH_0#a_2_6# cl6WMDGH_0#Y GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl6WMDGH_0#10 GND C cl6WMDGH_0#a_35_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl6WMDGH_0#11 cl6WMDGH_0#a_12_41# C GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl6WMDGH_1#0 VCC cl6WMDGH_0#Y cl6WMDGH_1#a_2_6# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl6WMDGH_1#1 cl6WMDGH_1#a_18_54# cl6WMDGH_1#a_12_41# VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl6WMDGH_1#2 Y cl6WMDGH_1#a_2_6# cl6WMDGH_1#a_18_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl6WMDGH_1#3 cl6WMDGH_1#a_35_54# cl6WMDGH_0#Y Y VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl6WMDGH_1#4 VCC A cl6WMDGH_1#a_35_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl6WMDGH_1#5 cl6WMDGH_1#a_12_41# A VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl6WMDGH_1#6 GND cl6WMDGH_0#Y cl6WMDGH_1#a_2_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl6WMDGH_1#7 cl6WMDGH_1#a_18_6# cl6WMDGH_1#a_12_41# GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl6WMDGH_1#8 Y cl6WMDGH_0#Y cl6WMDGH_1#a_18_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl6WMDGH_1#9 cl6WMDGH_1#a_35_6# cl6WMDGH_1#a_2_6# Y GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl6WMDGH_1#10 GND A cl6WMDGH_1#a_35_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl6WMDGH_1#11 cl6WMDGH_1#a_12_41# A GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS
* pattern code: 2|3|XNOR2X1|XNOR2X1=1|INPUT:Y-XNOR2X1:A,B=3|XNOR2X1:Y-XNOR2X1:A,B=1|11101
* 769 occurrences in design
* each contains 2 cells
* pin map: {'n146': 'A', 'n138': 'B', 'n139': 'C'} {'y5': 'Y'}
* function: (A&B&C)|(A&~B&~C)|(B&~A&~C)|(C&~A&~B)
* Example occurence:
*   .subckt XNOR2X1 A=n138 B=n139 Y=n141
*   .subckt XNOR2X1 A=n146 B=n141 Y=y5
