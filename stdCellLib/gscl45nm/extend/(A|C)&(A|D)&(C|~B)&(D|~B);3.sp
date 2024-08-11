.SUBCKT MULTIPLIER_G4_372_373 A B C D Y VCC GND
MclOUME3K_0#0 clOUME3K_0#Y C VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclOUME3K_0#1 VCC D clOUME3K_0#Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclOUME3K_0#2 clOUME3K_0#a_9_6# C GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclOUME3K_0#3 clOUME3K_0#Y D clOUME3K_0#a_9_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclOUME3K_1#clPT800B_0#0 clOUME3K_1#clPT800B_0#Y A VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclOUME3K_1#clPT800B_0#1 clOUME3K_1#clPT800B_0#Y A GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclOUME3K_1#clPT800B_1#0 clOUME3K_1#clPT800B_1#a_9_54# clOUME3K_1#clPT800B_0#Y VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclOUME3K_1#clPT800B_1#1 Y B clOUME3K_1#clPT800B_1#a_9_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclOUME3K_1#clPT800B_1#2 VCC clOUME3K_0#Y Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclOUME3K_1#clPT800B_1#3 GND clOUME3K_1#clPT800B_0#Y clOUME3K_1#clPT800B_1#a_2_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclOUME3K_1#clPT800B_1#4 clOUME3K_1#clPT800B_1#a_2_6# B GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclOUME3K_1#clPT800B_1#5 Y clOUME3K_0#Y clOUME3K_1#clPT800B_1#a_2_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS 
* pattern code: 3|4|MULTIPLIER_G0_2_27|NAND2X1=1|INPUT:Y-MULTIPLIER_G0_2_27:A=1|INPUT:Y-MULTIPLIER_G0_2_27:C=1|INPUT:Y-NAND2X1:A,B=2|NAND2X1:Y-MULTIPLIER_G0_2_27:B=1|111101
* 884 occurrences in design
* each contains 2 cells
* pin map: {'n410': 'A', 'n198': 'B', 'n435': 'C', 'x68': 'D'} {'n609': 'Y'}
* function: (A|C)&(A|D)&(C|~B)&(D|~B)
* Example occurence:
*   .subckt NAND2X1 A=n435 B=x68 Y=n608
*   .subckt MULTIPLIER_G0_2_27 A=n198 B=n608 C=n410 Y=n609
