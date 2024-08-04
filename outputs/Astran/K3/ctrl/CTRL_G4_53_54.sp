.SUBCKT CTRL_G4_53_54 A B C Y VCC GND
MclWEAS1U_0#0 clWEAS1U_0#vdd B clWEAS1U_0#a_2_6# clWEAS1U_0#vdd pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclWEAS1U_0#1 clWEAS1U_0#a_18_54# clWEAS1U_0#a_13_43# clWEAS1U_0#vdd clWEAS1U_0#vdd pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclWEAS1U_0#2 clWEAS1U_0#Y B clWEAS1U_0#a_18_54# clWEAS1U_0#vdd pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclWEAS1U_0#3 clWEAS1U_0#a_35_54# clWEAS1U_0#a_2_6# clWEAS1U_0#Y clWEAS1U_0#vdd pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclWEAS1U_0#4 clWEAS1U_0#vdd C clWEAS1U_0#a_35_54# clWEAS1U_0#vdd pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclWEAS1U_0#5 clWEAS1U_0#a_13_43# C clWEAS1U_0#vdd clWEAS1U_0#vdd pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclWEAS1U_0#6 clWEAS1U_0#gnd B clWEAS1U_0#a_2_6# clWEAS1U_0#gnd nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclWEAS1U_0#7 clWEAS1U_0#a_18_6# clWEAS1U_0#a_13_43# clWEAS1U_0#gnd clWEAS1U_0#gnd nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclWEAS1U_0#8 clWEAS1U_0#Y clWEAS1U_0#a_2_6# clWEAS1U_0#a_18_6# clWEAS1U_0#gnd nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclWEAS1U_0#9 clWEAS1U_0#a_35_6# B clWEAS1U_0#Y clWEAS1U_0#gnd nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclWEAS1U_0#10 clWEAS1U_0#gnd C clWEAS1U_0#a_35_6# clWEAS1U_0#gnd nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclWEAS1U_0#11 clWEAS1U_0#a_13_43# C clWEAS1U_0#gnd clWEAS1U_0#gnd nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclWEAS1U_1#0 Y clWEAS1U_0#Y clWEAS1U_1#vdd clWEAS1U_1#vdd pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclWEAS1U_1#1 clWEAS1U_1#vdd A Y clWEAS1U_1#vdd pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclWEAS1U_1#2 clWEAS1U_1#a_9_6# clWEAS1U_0#Y clWEAS1U_1#gnd clWEAS1U_1#gnd nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclWEAS1U_1#3 Y A clWEAS1U_1#a_9_6# clWEAS1U_1#gnd nmos w=0.5u l=0.05u
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
