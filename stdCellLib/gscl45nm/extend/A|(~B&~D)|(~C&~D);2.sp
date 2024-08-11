.SUBCKT BAR_G1_138_752 A B C D Y VCC GND
MclA82T5C_0#0 VCC B clA82T5C_0#a_2_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclA82T5C_0#1 clA82T5C_0#a_2_54# C VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclA82T5C_0#2 clA82T5C_0#Y D clA82T5C_0#a_2_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclA82T5C_0#3 clA82T5C_0#a_12_6# B GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclA82T5C_0#4 clA82T5C_0#Y C clA82T5C_0#a_12_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclA82T5C_0#5 GND D clA82T5C_0#Y GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclA82T5C_1#0 clA82T5C_1#a_9_54# clA82T5C_0#Y clA82T5C_1#a_2_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclA82T5C_1#1 VCC A clA82T5C_1#a_9_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclA82T5C_1#2 Y clA82T5C_1#a_2_54# VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclA82T5C_1#3 clA82T5C_1#a_2_54# clA82T5C_0#Y GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclA82T5C_1#4 GND A clA82T5C_1#a_2_54# GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclA82T5C_1#5 Y clA82T5C_1#a_2_54# GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS 
* pattern code: 2|4|OR2X2|AOI21X1=1|AOI21X1:Y-OR2X2:A,B=1|INPUT:Y-AOI21X1:A,B=2|INPUT:Y-AOI21X1:C=1|INPUT:Y-OR2X2:A,B=1|111110
* 61 occurrences in design
* each contains 2 cells
* pin map: {'n493': 'A', 'n488': 'B', 'n489': 'C', 'n272': 'D'} {'n494': 'Y'}
* function: A|(~B&~D)|(~C&~D)
* Example occurence:
*   .subckt AOI21X1 A=n488 B=n489 C=n272 Y=n490
*   .subckt OR2X2 A=n490 B=n493 Y=n494
