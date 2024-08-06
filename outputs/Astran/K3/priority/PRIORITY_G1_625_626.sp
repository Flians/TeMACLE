.SUBCKT PRIORITY_G1_625_626 A B C Y VCC GND
MclTQNQSY_0#0 clTQNQSY_0#Y C VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclTQNQSY_0#1 VCC B clTQNQSY_0#Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclTQNQSY_0#2 clTQNQSY_0#a_9_6# C GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclTQNQSY_0#3 clTQNQSY_0#Y B clTQNQSY_0#a_9_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclTQNQSY_1#0 clTQNQSY_1#a_9_54# B VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclTQNQSY_1#1 Y A clTQNQSY_1#a_9_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclTQNQSY_1#2 VCC clTQNQSY_0#Y Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclTQNQSY_1#3 GND B clTQNQSY_1#a_2_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclTQNQSY_1#4 clTQNQSY_1#a_2_6# A GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclTQNQSY_1#5 Y clTQNQSY_0#Y clTQNQSY_1#a_2_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS
* pattern code: 2|3|OAI21X1|NAND2X1=1|INPUT:Y-NAND2X1:A,B=2|INPUT:Y-OAI21X1:A,B=2|NAND2X1:Y-OAI21X1:C=1|11210
* 75 occurrences in design
* each contains 2 cells
* pin map: {'n718': 'A', 'n721': 'B', 'n717': 'C'} {'n723': 'Y'}
* function: (B&C)|(~A&~B)
* Example occurence:
*   .subckt NAND2X1 A=n717 B=n721 Y=n722
*   .subckt OAI21X1 A=n721 B=n718 C=n722 Y=n723
