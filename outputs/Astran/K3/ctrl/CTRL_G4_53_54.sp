.SUBCKT CTRL_G4_53_54 A B C Y VCC GND
MclWX94GA_0#0 VCC B clWX94GA_0#a_2_6# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclWX94GA_0#1 clWX94GA_0#a_18_54# clWX94GA_0#a_13_43# VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclWX94GA_0#2 clWX94GA_0#Y B clWX94GA_0#a_18_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclWX94GA_0#3 clWX94GA_0#a_35_54# clWX94GA_0#a_2_6# clWX94GA_0#Y VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclWX94GA_0#4 VCC C clWX94GA_0#a_35_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclWX94GA_0#5 clWX94GA_0#a_13_43# C VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclWX94GA_0#6 GND B clWX94GA_0#a_2_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclWX94GA_0#7 clWX94GA_0#a_18_6# clWX94GA_0#a_13_43# GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclWX94GA_0#8 clWX94GA_0#Y clWX94GA_0#a_2_6# clWX94GA_0#a_18_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclWX94GA_0#9 clWX94GA_0#a_35_6# B clWX94GA_0#Y GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclWX94GA_0#10 GND C clWX94GA_0#a_35_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclWX94GA_0#11 clWX94GA_0#a_13_43# C GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclWX94GA_1#0 Y clWX94GA_0#Y VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclWX94GA_1#1 VCC A Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclWX94GA_1#2 clWX94GA_1#a_9_6# clWX94GA_0#Y GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclWX94GA_1#3 Y A clWX94GA_1#a_9_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS 
* pattern code: 2|3|NAND2X1|XOR2X1=1|INPUT:Y-NAND2X1:A,B=1|INPUT:Y-XOR2X1:A,B=2|XOR2X1:Y-NAND2X1:A,B=1|11101
* 2 occurrences in design
* each contains 2 cells
* pin map: {'x2': 'A', 'x3': 'B', 'x4': 'C'} {'n64': 'Y'}
* function: ~A|(B&C)|(~B&~C)
* Example occurence:
*   .subckt XOR2X1 A=x3 B=x4 Y=n63
*   .subckt NAND2X1 A=n63 B=x2 Y=n64
