.SUBCKT LOG2_G4_5_3389 A B C Y VCC GND
MclDVOBD3_0#0 clDVOBD3_0#Y C VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclDVOBD3_0#1 clDVOBD3_0#Y C GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclDVOBD3_1#0 clDVOBD3_1#a_9_54# clDVOBD3_0#Y VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclDVOBD3_1#1 Y A clDVOBD3_1#a_9_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclDVOBD3_1#2 VCC B Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclDVOBD3_1#3 GND clDVOBD3_0#Y clDVOBD3_1#a_2_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclDVOBD3_1#4 clDVOBD3_1#a_2_6# A GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclDVOBD3_1#5 Y B clDVOBD3_1#a_2_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS 
* pattern code: 2|3|OAI21X1|INVX1=1|INPUT:Y-INVX1:A=1|INPUT:Y-OAI21X1:A,B=1|INPUT:Y-OAI21X1:C=1|INVX1:Y-OAI21X1:A,B=1|11110
* 1177 occurrences in design
* each contains 2 cells
* pin map: {'n3444': 'A', 'n3500': 'B', 'x23': 'C'} {'n3501': 'Y'}
* function: ~B|(C&~A)
* Example occurence:
*   .subckt INVX1 A=x23 Y=n57
*   .subckt OAI21X1 A=n57 B=n3444 C=n3500 Y=n3501
