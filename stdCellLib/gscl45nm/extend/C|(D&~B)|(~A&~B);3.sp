.SUBCKT BAR_G2_34_41 A B C D Y VCC GND
MclWMCFFQ_0#0 clWMCFFQ_0#Y D VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclWMCFFQ_0#1 clWMCFFQ_0#Y D GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclWMCFFQ_1#clA82T5C_0#0 VCC clWMCFFQ_0#Y clWMCFFQ_1#clA82T5C_0#a_2_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclWMCFFQ_1#clA82T5C_0#1 clWMCFFQ_1#clA82T5C_0#a_2_54# A VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclWMCFFQ_1#clA82T5C_0#2 clWMCFFQ_1#clA82T5C_0#Y B clWMCFFQ_1#clA82T5C_0#a_2_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclWMCFFQ_1#clA82T5C_0#3 clWMCFFQ_1#clA82T5C_0#a_12_6# clWMCFFQ_0#Y GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclWMCFFQ_1#clA82T5C_0#4 clWMCFFQ_1#clA82T5C_0#Y A clWMCFFQ_1#clA82T5C_0#a_12_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclWMCFFQ_1#clA82T5C_0#5 GND B clWMCFFQ_1#clA82T5C_0#Y GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclWMCFFQ_1#clA82T5C_1#0 clWMCFFQ_1#clA82T5C_1#a_9_54# clWMCFFQ_1#clA82T5C_0#Y clWMCFFQ_1#clA82T5C_1#a_2_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclWMCFFQ_1#clA82T5C_1#1 VCC C clWMCFFQ_1#clA82T5C_1#a_9_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclWMCFFQ_1#clA82T5C_1#2 Y clWMCFFQ_1#clA82T5C_1#a_2_54# VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclWMCFFQ_1#clA82T5C_1#3 clWMCFFQ_1#clA82T5C_1#a_2_54# clWMCFFQ_1#clA82T5C_0#Y GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclWMCFFQ_1#clA82T5C_1#4 GND C clWMCFFQ_1#clA82T5C_1#a_2_54# GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclWMCFFQ_1#clA82T5C_1#5 Y clWMCFFQ_1#clA82T5C_1#a_2_54# GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS 
* pattern code: 3|4|BAR_G1_138_752|INVX1=1|INPUT:Y-BAR_G1_138_752:A=1|INPUT:Y-BAR_G1_138_752:B,C=1|INPUT:Y-BAR_G1_138_752:D=1|INPUT:Y-INVX1:A=1|INVX1:Y-BAR_G1_138_752:B,C=1|011111
* 64 occurrences in design
* each contains 2 cells
* pin map: {'x39': 'A', 'n137': 'B', 'n266': 'C', 'x129': 'D'} {'n267': 'Y'}
* function: C|(D&~B)|(~A&~B)
* Example occurence:
*   .subckt INVX1 A=x129 Y=n138
*   .subckt BAR_G1_138_752 A=n266 B=n138 C=x39 D=n137 Y=n267
