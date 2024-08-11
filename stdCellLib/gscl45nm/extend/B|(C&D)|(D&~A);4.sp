.SUBCKT BAR_G3_34_36_41 A B C D Y VCC GND
MclGVSQ95_0#0 clGVSQ95_0#Y C VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclGVSQ95_0#1 clGVSQ95_0#Y C GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclGVSQ95_1#0 clGVSQ95_1#Y D VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclGVSQ95_1#1 clGVSQ95_1#Y D GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclGVSQ95_2#clA82T5C_0#0 VCC clGVSQ95_0#Y clGVSQ95_2#clA82T5C_0#a_2_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclGVSQ95_2#clA82T5C_0#1 clGVSQ95_2#clA82T5C_0#a_2_54# A VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclGVSQ95_2#clA82T5C_0#2 clGVSQ95_2#clA82T5C_0#Y clGVSQ95_1#Y clGVSQ95_2#clA82T5C_0#a_2_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclGVSQ95_2#clA82T5C_0#3 clGVSQ95_2#clA82T5C_0#a_12_6# clGVSQ95_0#Y GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclGVSQ95_2#clA82T5C_0#4 clGVSQ95_2#clA82T5C_0#Y A clGVSQ95_2#clA82T5C_0#a_12_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclGVSQ95_2#clA82T5C_0#5 GND clGVSQ95_1#Y clGVSQ95_2#clA82T5C_0#Y GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclGVSQ95_2#clA82T5C_1#0 clGVSQ95_2#clA82T5C_1#a_9_54# clGVSQ95_2#clA82T5C_0#Y clGVSQ95_2#clA82T5C_1#a_2_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclGVSQ95_2#clA82T5C_1#1 VCC B clGVSQ95_2#clA82T5C_1#a_9_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclGVSQ95_2#clA82T5C_1#2 Y clGVSQ95_2#clA82T5C_1#a_2_54# VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclGVSQ95_2#clA82T5C_1#3 clGVSQ95_2#clA82T5C_1#a_2_54# clGVSQ95_2#clA82T5C_0#Y GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclGVSQ95_2#clA82T5C_1#4 GND B clGVSQ95_2#clA82T5C_1#a_2_54# GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclGVSQ95_2#clA82T5C_1#5 Y clGVSQ95_2#clA82T5C_1#a_2_54# GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS 
* pattern code: 4|4|BAR_G1_138_752|INVX1=2|INPUT:Y-BAR_G1_138_752:A=1|INPUT:Y-BAR_G1_138_752:B,C=1|INPUT:Y-INVX1:A=2|INVX1:Y-BAR_G1_138_752:B,C=1|INVX1:Y-BAR_G1_138_752:D=1|0111111
* 62 occurrences in design
* each contains 3 cells
* pin map: {'x39': 'A', 'n266': 'B', 'x129': 'C', 'x128': 'D'} {'n267': 'Y'}
* function: B|(C&D)|(D&~A)
* Example occurence:
*   .subckt INVX1 A=x129 Y=n138
*   .subckt INVX1 A=x128 Y=n137
*   .subckt BAR_G1_138_752 A=n266 B=n138 C=x39 D=n137 Y=n267
