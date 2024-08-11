.SUBCKT INT2FLOAT_G3_0_28 B A C Y VCC GND
MclPT800B_0#0 clPT800B_0#Y C VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclPT800B_0#1 clPT800B_0#Y C GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclPT800B_1#0 clPT800B_1#a_9_54# clPT800B_0#Y VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclPT800B_1#1 Y B clPT800B_1#a_9_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclPT800B_1#2 VCC A Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclPT800B_1#3 GND clPT800B_0#Y clPT800B_1#a_2_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclPT800B_1#4 clPT800B_1#a_2_6# B GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclPT800B_1#5 Y A clPT800B_1#a_2_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS
* pattern code: 2|3|OAI21X1|INVX1=1|INPUT:Y-INVX1:A=1|INPUT:Y-OAI21X1:A,B=1|INPUT:Y-OAI21X1:C=1|INVX1:Y-OAI21X1:A,B=1|11110
* 14 occurrences in design
* each contains 2 cells
* pin map: {'n16': 'A', 'n17': 'B', 'x7': 'C'} {'n33': 'Y'}
* function: ~A|(C&~B)
* Example occurence:
*   .subckt INVX1 A=x7 Y=n20
*   .subckt OAI21X1 A=n17 B=n20 C=n16 Y=n33
