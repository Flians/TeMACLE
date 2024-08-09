.SUBCKT LOG2_G3_2903_2920 A B C Y VCC GND
MclI7TI3I_0#0 VCC B clI7TI3I_0#a_2_6# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclI7TI3I_0#1 clI7TI3I_0#a_18_54# clI7TI3I_0#a_12_41# VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclI7TI3I_0#2 clI7TI3I_0#Y clI7TI3I_0#a_2_6# clI7TI3I_0#a_18_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclI7TI3I_0#3 clI7TI3I_0#a_35_54# B clI7TI3I_0#Y VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclI7TI3I_0#4 VCC C clI7TI3I_0#a_35_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclI7TI3I_0#5 clI7TI3I_0#a_12_41# C VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclI7TI3I_0#6 GND B clI7TI3I_0#a_2_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclI7TI3I_0#7 clI7TI3I_0#a_18_6# clI7TI3I_0#a_12_41# GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclI7TI3I_0#8 clI7TI3I_0#Y B clI7TI3I_0#a_18_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclI7TI3I_0#9 clI7TI3I_0#a_35_6# clI7TI3I_0#a_2_6# clI7TI3I_0#Y GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclI7TI3I_0#10 GND C clI7TI3I_0#a_35_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclI7TI3I_0#11 clI7TI3I_0#a_12_41# C GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclI7TI3I_1#0 VCC clI7TI3I_0#Y clI7TI3I_1#a_2_6# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclI7TI3I_1#1 clI7TI3I_1#a_18_54# clI7TI3I_1#a_12_41# VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclI7TI3I_1#2 Y clI7TI3I_1#a_2_6# clI7TI3I_1#a_18_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclI7TI3I_1#3 clI7TI3I_1#a_35_54# clI7TI3I_0#Y Y VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclI7TI3I_1#4 VCC A clI7TI3I_1#a_35_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclI7TI3I_1#5 clI7TI3I_1#a_12_41# A VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclI7TI3I_1#6 GND clI7TI3I_0#Y clI7TI3I_1#a_2_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclI7TI3I_1#7 clI7TI3I_1#a_18_6# clI7TI3I_1#a_12_41# GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclI7TI3I_1#8 Y clI7TI3I_0#Y clI7TI3I_1#a_18_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclI7TI3I_1#9 clI7TI3I_1#a_35_6# clI7TI3I_1#a_2_6# Y GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclI7TI3I_1#10 GND A clI7TI3I_1#a_35_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclI7TI3I_1#11 clI7TI3I_1#a_12_41# A GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS 
* pattern code: 2|3|XNOR2X1|XNOR2X1=1|INPUT:Y-XNOR2X1:A,B=3|XNOR2X1:Y-XNOR2X1:A,B=1|11101
* 1421 occurrences in design
* each contains 2 cells
* pin map: {'n928': 'A', 'n1024': 'B', 'n3158': 'C'} {'n3166': 'Y'}
* function: (A&B&C)|(A&~B&~C)|(B&~A&~C)|(C&~A&~B)
* Example occurence:
*   .subckt XNOR2X1 A=n1024 B=n3158 Y=n3165
*   .subckt XNOR2X1 A=n3165 B=n928 Y=n3166
