.SUBCKT MAX_G2_3_2012 A B C Y VCC GND
MclPR1S16_0#0 clPR1S16_0#Y C VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclPR1S16_0#1 clPR1S16_0#Y C GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclPR1S16_1#clHVAI7W_0#0 clPR1S16_1#clHVAI7W_0#Y B VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclPR1S16_1#clHVAI7W_0#1 VCC A clPR1S16_1#clHVAI7W_0#Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclPR1S16_1#clHVAI7W_0#2 clPR1S16_1#clHVAI7W_0#a_9_6# B GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclPR1S16_1#clHVAI7W_0#3 clPR1S16_1#clHVAI7W_0#Y A clPR1S16_1#clHVAI7W_0#a_9_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclPR1S16_1#clHVAI7W_1#0 clPR1S16_1#clHVAI7W_1#a_9_54# A VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclPR1S16_1#clHVAI7W_1#1 Y clPR1S16_0#Y clPR1S16_1#clHVAI7W_1#a_9_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclPR1S16_1#clHVAI7W_1#2 VCC clPR1S16_1#clHVAI7W_0#Y Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclPR1S16_1#clHVAI7W_1#3 GND A clPR1S16_1#clHVAI7W_1#a_2_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclPR1S16_1#clHVAI7W_1#4 clPR1S16_1#clHVAI7W_1#a_2_6# clPR1S16_0#Y GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclPR1S16_1#clHVAI7W_1#5 Y clPR1S16_1#clHVAI7W_0#Y clPR1S16_1#clHVAI7W_1#a_2_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS 
* pattern code: 3|3|MAX_G1_1231_1232|INVX1=1|INPUT:Y-INVX1:A=1|INPUT:Y-MAX_G1_1231_1232:B=1|INPUT:Y-MAX_G1_1231_1232:C=1|INVX1:Y-MAX_G1_1231_1232:A=1|11110
* 205 occurrences in design
* each contains 2 cells
* pin map: {'n1358': 'A', 'x120': 'B', 'x248': 'C'} {'n2555': 'Y'}
* function: (A&B)|(C&~A)
* Example occurence:
*   .subckt INVX1 A=x248 Y=n676
*   .subckt MAX_G1_1231_1232 A=n676 B=n1358 C=x120 Y=n2555
