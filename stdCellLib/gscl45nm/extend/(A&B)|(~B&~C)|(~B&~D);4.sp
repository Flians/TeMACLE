.SUBCKT BAR_G3_37_454 A B C D Y VCC GND
MclM29AGE_0#0 clM29AGE_0#Y C VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclM29AGE_0#1 VCC D clM29AGE_0#Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclM29AGE_0#2 clM29AGE_0#a_9_6# C GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclM29AGE_0#3 clM29AGE_0#Y D clM29AGE_0#a_9_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclM29AGE_1#clPR1S16_0#0 clM29AGE_1#clPR1S16_0#Y clM29AGE_0#Y VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclM29AGE_1#clPR1S16_0#1 clM29AGE_1#clPR1S16_0#Y clM29AGE_0#Y GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclM29AGE_1#clPR1S16_1#clHVAI7W_0#0 clM29AGE_1#clPR1S16_1#clHVAI7W_0#Y A VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclM29AGE_1#clPR1S16_1#clHVAI7W_0#1 VCC B clM29AGE_1#clPR1S16_1#clHVAI7W_0#Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclM29AGE_1#clPR1S16_1#clHVAI7W_0#2 clM29AGE_1#clPR1S16_1#clHVAI7W_0#a_9_6# A GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclM29AGE_1#clPR1S16_1#clHVAI7W_0#3 clM29AGE_1#clPR1S16_1#clHVAI7W_0#Y B clM29AGE_1#clPR1S16_1#clHVAI7W_0#a_9_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclM29AGE_1#clPR1S16_1#clHVAI7W_1#0 clM29AGE_1#clPR1S16_1#clHVAI7W_1#a_9_54# B VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclM29AGE_1#clPR1S16_1#clHVAI7W_1#1 Y clM29AGE_1#clPR1S16_0#Y clM29AGE_1#clPR1S16_1#clHVAI7W_1#a_9_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclM29AGE_1#clPR1S16_1#clHVAI7W_1#2 VCC clM29AGE_1#clPR1S16_1#clHVAI7W_0#Y Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclM29AGE_1#clPR1S16_1#clHVAI7W_1#3 GND B clM29AGE_1#clPR1S16_1#clHVAI7W_1#a_2_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclM29AGE_1#clPR1S16_1#clHVAI7W_1#4 clM29AGE_1#clPR1S16_1#clHVAI7W_1#a_2_6# clM29AGE_1#clPR1S16_0#Y GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclM29AGE_1#clPR1S16_1#clHVAI7W_1#5 Y clM29AGE_1#clPR1S16_1#clHVAI7W_0#Y clM29AGE_1#clPR1S16_1#clHVAI7W_1#a_2_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS 
* pattern code: 4|4|BAR_G0_12_13_14|NAND2X1=1|INPUT:Y-BAR_G0_12_13_14:B=1|INPUT:Y-BAR_G0_12_13_14:C=1|INPUT:Y-NAND2X1:A,B=2|NAND2X1:Y-BAR_G0_12_13_14:A=1|011111
* 14 occurrences in design
* each contains 2 cells
* pin map: {'n673': 'A', 'x128': 'B', 'x37': 'C', 'x129': 'D'} {'n674': 'Y'}
* function: (A&B)|(~B&~C)|(~B&~D)
* Example occurence:
*   .subckt NAND2X1 A=x37 B=x129 Y=n263
*   .subckt BAR_G0_12_13_14 A=n263 B=x128 C=n673 Y=n674
