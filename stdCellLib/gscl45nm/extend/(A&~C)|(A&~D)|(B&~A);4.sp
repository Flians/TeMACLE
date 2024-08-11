.SUBCKT BAR_G3_202_227 A B C D Y VCC GND
Mcl2L50ZV_0#0 cl2L50ZV_0#Y C VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl2L50ZV_0#1 VCC D cl2L50ZV_0#Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl2L50ZV_0#2 cl2L50ZV_0#a_9_6# C GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl2L50ZV_0#3 cl2L50ZV_0#Y D cl2L50ZV_0#a_9_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl2L50ZV_1#clPR1S16_0#0 cl2L50ZV_1#clPR1S16_0#Y B VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl2L50ZV_1#clPR1S16_0#1 cl2L50ZV_1#clPR1S16_0#Y B GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl2L50ZV_1#clPR1S16_1#clHVAI7W_0#0 cl2L50ZV_1#clPR1S16_1#clHVAI7W_0#Y cl2L50ZV_0#Y VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl2L50ZV_1#clPR1S16_1#clHVAI7W_0#1 VCC A cl2L50ZV_1#clPR1S16_1#clHVAI7W_0#Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl2L50ZV_1#clPR1S16_1#clHVAI7W_0#2 cl2L50ZV_1#clPR1S16_1#clHVAI7W_0#a_9_6# cl2L50ZV_0#Y GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl2L50ZV_1#clPR1S16_1#clHVAI7W_0#3 cl2L50ZV_1#clPR1S16_1#clHVAI7W_0#Y A cl2L50ZV_1#clPR1S16_1#clHVAI7W_0#a_9_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl2L50ZV_1#clPR1S16_1#clHVAI7W_1#0 cl2L50ZV_1#clPR1S16_1#clHVAI7W_1#a_9_54# A VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl2L50ZV_1#clPR1S16_1#clHVAI7W_1#1 Y cl2L50ZV_1#clPR1S16_0#Y cl2L50ZV_1#clPR1S16_1#clHVAI7W_1#a_9_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl2L50ZV_1#clPR1S16_1#clHVAI7W_1#2 VCC cl2L50ZV_1#clPR1S16_1#clHVAI7W_0#Y Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl2L50ZV_1#clPR1S16_1#clHVAI7W_1#3 GND A cl2L50ZV_1#clPR1S16_1#clHVAI7W_1#a_2_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl2L50ZV_1#clPR1S16_1#clHVAI7W_1#4 cl2L50ZV_1#clPR1S16_1#clHVAI7W_1#a_2_6# cl2L50ZV_1#clPR1S16_0#Y GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl2L50ZV_1#clPR1S16_1#clHVAI7W_1#5 Y cl2L50ZV_1#clPR1S16_1#clHVAI7W_0#Y cl2L50ZV_1#clPR1S16_1#clHVAI7W_1#a_2_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS 
* pattern code: 4|4|BAR_G0_12_13_14|NAND2X1=1|INPUT:Y-BAR_G0_12_13_14:A=1|INPUT:Y-BAR_G0_12_13_14:B=1|INPUT:Y-NAND2X1:A,B=2|NAND2X1:Y-BAR_G0_12_13_14:C=1|011111
* 18 occurrences in design
* each contains 2 cells
* pin map: {'x133': 'A', 'n400': 'B', 'n424': 'C', 'x132': 'D'} {'n427': 'Y'}
* function: (A&~C)|(A&~D)|(B&~A)
* Example occurence:
*   .subckt NAND2X1 A=n424 B=x132 Y=n426
*   .subckt BAR_G0_12_13_14 A=n400 B=x133 C=n426 Y=n427
