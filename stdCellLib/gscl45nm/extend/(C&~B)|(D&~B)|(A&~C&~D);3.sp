.SUBCKT PRIORITY_G4_1_8 A B C D Y VCC GND
MclKQLRP1_0#0 clKQLRP1_0#a_9_54# C VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclKQLRP1_0#1 clKQLRP1_0#Y D clKQLRP1_0#a_9_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclKQLRP1_0#2 clKQLRP1_0#Y C GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclKQLRP1_0#3 GND D clKQLRP1_0#Y GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclKQLRP1_1#clEJ1U9B_0#0 clKQLRP1_1#clEJ1U9B_0#Y clKQLRP1_0#Y VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclKQLRP1_1#clEJ1U9B_0#1 VCC A clKQLRP1_1#clEJ1U9B_0#Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclKQLRP1_1#clEJ1U9B_0#2 clKQLRP1_1#clEJ1U9B_0#a_9_6# clKQLRP1_0#Y GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclKQLRP1_1#clEJ1U9B_0#3 clKQLRP1_1#clEJ1U9B_0#Y A clKQLRP1_1#clEJ1U9B_0#a_9_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclKQLRP1_1#clEJ1U9B_1#0 clKQLRP1_1#clEJ1U9B_1#a_9_54# clKQLRP1_0#Y VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclKQLRP1_1#clEJ1U9B_1#1 Y B clKQLRP1_1#clEJ1U9B_1#a_9_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclKQLRP1_1#clEJ1U9B_1#2 VCC clKQLRP1_1#clEJ1U9B_0#Y Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclKQLRP1_1#clEJ1U9B_1#3 GND clKQLRP1_0#Y clKQLRP1_1#clEJ1U9B_1#a_2_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclKQLRP1_1#clEJ1U9B_1#4 clKQLRP1_1#clEJ1U9B_1#a_2_6# B GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclKQLRP1_1#clEJ1U9B_1#5 Y clKQLRP1_1#clEJ1U9B_0#Y clKQLRP1_1#clEJ1U9B_1#a_2_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS 
* pattern code: 3|4|PRIORITY_G1_625_626|NOR2X1=1|INPUT:Y-NOR2X1:A,B=2|INPUT:Y-PRIORITY_G1_625_626:A=1|INPUT:Y-PRIORITY_G1_625_626:C=1|NOR2X1:Y-PRIORITY_G1_625_626:B=1|111110
* 54 occurrences in design
* each contains 2 cells
* pin map: {'n207': 'A', 'n210': 'B', 'n202': 'C', 'x123': 'D'} {'n212': 'Y'}
* function: (C&~B)|(D&~B)|(A&~C&~D)
* Example occurence:
*   .subckt NOR2X1 A=n202 B=x123 Y=n208
*   .subckt PRIORITY_G1_625_626 A=n210 B=n208 C=n207 Y=n212
