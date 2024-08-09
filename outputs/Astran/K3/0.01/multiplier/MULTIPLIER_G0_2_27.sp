.SUBCKT MULTIPLIER_G0_2_27 A B C Y VCC GND
MclAL7FLR_0#0 clAL7FLR_0#Y C VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclAL7FLR_0#1 clAL7FLR_0#Y C GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclAL7FLR_1#0 clAL7FLR_1#a_9_54# clAL7FLR_0#Y VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclAL7FLR_1#1 Y A clAL7FLR_1#a_9_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclAL7FLR_1#2 VCC B Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclAL7FLR_1#3 GND clAL7FLR_0#Y clAL7FLR_1#a_2_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclAL7FLR_1#4 clAL7FLR_1#a_2_6# A GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclAL7FLR_1#5 Y B clAL7FLR_1#a_2_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS 
* pattern code: 2|3|OAI21X1|INVX1=1|INPUT:Y-INVX1:A=1|INPUT:Y-OAI21X1:A,B=1|INPUT:Y-OAI21X1:C=1|INVX1:Y-OAI21X1:A,B=1|11110
* 2531 occurrences in design
* each contains 2 cells
* pin map: {'n277': 'A', 'n275': 'B', 'x64': 'C'} {'n278': 'Y'}
* function: ~B|(C&~A)
* Example occurence:
*   .subckt INVX1 A=x64 Y=n193
*   .subckt OAI21X1 A=n193 B=n277 C=n275 Y=n278
