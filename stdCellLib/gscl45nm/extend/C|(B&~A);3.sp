.SUBCKT ARBITER_G4_0_171_6738 A B C Y VCC GND
MclWUUN59_0#0 clWUUN59_0#Y B VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclWUUN59_0#1 clWUUN59_0#Y B GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclWUUN59_1#0 clWUUN59_1#Y C VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclWUUN59_1#1 clWUUN59_1#Y C GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclWUUN59_2#0 clWUUN59_2#a_9_54# A VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclWUUN59_2#1 Y clWUUN59_0#Y clWUUN59_2#a_9_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclWUUN59_2#2 VCC clWUUN59_1#Y Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclWUUN59_2#3 GND A clWUUN59_2#a_2_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclWUUN59_2#4 clWUUN59_2#a_2_6# clWUUN59_0#Y GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclWUUN59_2#5 Y clWUUN59_1#Y clWUUN59_2#a_2_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS 
* pattern code: 3|3|OAI21X1|INVX1=2|INPUT:Y-INVX1:A=2|INPUT:Y-OAI21X1:A,B=1|INVX1:Y-OAI21X1:A,B=1|INVX1:Y-OAI21X1:C=1|111110
* 2691 occurrences in design
* each contains 3 cells
* pin map: {'x128': 'A', 'x0': 'B', 'x1': 'C'} {'n6996': 'Y'}
* function: C|(B&~A)
* Example occurence:
*   .subckt INVX1 A=x0 Y=n258
*   .subckt INVX1 A=x1 Y=n259
*   .subckt OAI21X1 A=x128 B=n258 C=n259 Y=n6996
