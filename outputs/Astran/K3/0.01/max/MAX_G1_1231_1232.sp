.SUBCKT MAX_G1_1231_1232 A B C Y VCC GND
MclHVAI7W_0#0 clHVAI7W_0#Y C VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclHVAI7W_0#1 VCC B clHVAI7W_0#Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclHVAI7W_0#2 clHVAI7W_0#a_9_6# C GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclHVAI7W_0#3 clHVAI7W_0#Y B clHVAI7W_0#a_9_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclHVAI7W_1#0 clHVAI7W_1#a_9_54# B VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclHVAI7W_1#1 Y A clHVAI7W_1#a_9_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclHVAI7W_1#2 VCC clHVAI7W_0#Y Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclHVAI7W_1#3 GND B clHVAI7W_1#a_2_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclHVAI7W_1#4 clHVAI7W_1#a_2_6# A GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclHVAI7W_1#5 Y clHVAI7W_0#Y clHVAI7W_1#a_2_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS 
* pattern code: 2|3|OAI21X1|NAND2X1=1|INPUT:Y-NAND2X1:A,B=2|INPUT:Y-OAI21X1:A,B=2|NAND2X1:Y-OAI21X1:C=1|11210
* 161 occurrences in design
* each contains 2 cells
* pin map: {'n625': 'A', 'n1296': 'B', 'x249': 'C'} {'n2753': 'Y'}
* function: (B&C)|(~A&~B)
* Example occurence:
*   .subckt NAND2X1 A=x249 B=n1296 Y=n2752
*   .subckt OAI21X1 A=n1296 B=n625 C=n2752 Y=n2753
