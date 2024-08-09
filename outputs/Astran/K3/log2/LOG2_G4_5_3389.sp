.SUBCKT LOG2_G4_5_3389 A B C Y VCC GND
MclPOKOJ6_0#0 clPOKOJ6_0#Y C VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclPOKOJ6_0#1 clPOKOJ6_0#Y C GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclPOKOJ6_1#0 clPOKOJ6_1#a_9_54# clPOKOJ6_0#Y VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclPOKOJ6_1#1 Y A clPOKOJ6_1#a_9_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclPOKOJ6_1#2 VCC B Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclPOKOJ6_1#3 GND clPOKOJ6_0#Y clPOKOJ6_1#a_2_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclPOKOJ6_1#4 clPOKOJ6_1#a_2_6# A GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclPOKOJ6_1#5 Y B clPOKOJ6_1#a_2_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS 
* pattern code: 2|3|OAI21X1|INVX1=1|INPUT:Y-INVX1:A=1|INPUT:Y-OAI21X1:A,B=1|INPUT:Y-OAI21X1:C=1|INVX1:Y-OAI21X1:A,B=1|11110
* 1176 occurrences in design
* each contains 2 cells
* pin map: {'n3444': 'A', 'n3500': 'B', 'x23': 'C'} {'n3501': 'Y'}
* function: ~B|(C&~A)
* Example occurence:
*   .subckt INVX1 A=x23 Y=n57
*   .subckt OAI21X1 A=n57 B=n3444 C=n3500 Y=n3501
