.SUBCKT HYP_G1_5_7 A B C Y VCC GND
MclRQ6G3I_0#0 clRQ6G3I_0#Y B VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclRQ6G3I_0#1 VCC C clRQ6G3I_0#Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclRQ6G3I_0#2 clRQ6G3I_0#a_9_6# B GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclRQ6G3I_0#3 clRQ6G3I_0#Y C clRQ6G3I_0#a_9_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclRQ6G3I_1#0 VCC clRQ6G3I_0#Y clRQ6G3I_1#a_2_6# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclRQ6G3I_1#1 clRQ6G3I_1#a_18_54# clRQ6G3I_1#a_13_43# VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclRQ6G3I_1#2 Y clRQ6G3I_0#Y clRQ6G3I_1#a_18_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclRQ6G3I_1#3 clRQ6G3I_1#a_35_54# clRQ6G3I_1#a_2_6# Y VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclRQ6G3I_1#4 VCC A clRQ6G3I_1#a_35_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclRQ6G3I_1#5 clRQ6G3I_1#a_13_43# A VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclRQ6G3I_1#6 GND clRQ6G3I_0#Y clRQ6G3I_1#a_2_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclRQ6G3I_1#7 clRQ6G3I_1#a_18_6# clRQ6G3I_1#a_13_43# GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclRQ6G3I_1#8 Y clRQ6G3I_1#a_2_6# clRQ6G3I_1#a_18_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclRQ6G3I_1#9 clRQ6G3I_1#a_35_6# clRQ6G3I_0#Y Y GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclRQ6G3I_1#10 GND A clRQ6G3I_1#a_35_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclRQ6G3I_1#11 clRQ6G3I_1#a_13_43# A GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS 
* pattern code: 2|3|XOR2X1|NAND2X1=1|INPUT:Y-NAND2X1:A,B=2|INPUT:Y-XOR2X1:A,B=1|NAND2X1:Y-XOR2X1:A,B=1|11110
* 11504 occurrences in design
* each contains 2 cells
* pin map: {'n520': 'A', 'x252': 'B', 'x254': 'C'} {'n522': 'Y'}
* function: (A&B&C)|(~A&~B)|(~A&~C)
* Example occurence:
*   .subckt NAND2X1 A=x252 B=x254 Y=n514
*   .subckt XOR2X1 A=n514 B=n520 Y=n522
