.SUBCKT ARBITER_G1_10_11_410 A B C D Y VCC GND
MclQSYILU_0#0 clQSYILU_0#a_9_54# D VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclQSYILU_0#1 clQSYILU_0#Y C clQSYILU_0#a_9_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclQSYILU_0#2 clQSYILU_0#Y D GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclQSYILU_0#3 GND C clQSYILU_0#Y GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclQSYILU_1#0 clQSYILU_1#Y clQSYILU_0#Y VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclQSYILU_1#1 clQSYILU_1#Y clQSYILU_0#Y GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclQSYILU_2#0 clQSYILU_2#a_9_54# clQSYILU_1#Y VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclQSYILU_2#1 Y A clQSYILU_2#a_9_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclQSYILU_2#2 VCC B Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclQSYILU_2#3 GND clQSYILU_1#Y clQSYILU_2#a_2_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclQSYILU_2#4 clQSYILU_2#a_2_6# A GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclQSYILU_2#5 Y B clQSYILU_2#a_2_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS 
* pattern code: 3|4|OAI21X1|INVX1=1|NOR2X1=1|INPUT:Y-NOR2X1:A,B=2|INPUT:Y-OAI21X1:A,B=1|INPUT:Y-OAI21X1:C=1|INVX1:Y-OAI21X1:A,B=1|NOR2X1:Y-INVX1:A=1|1111110
* 1320 occurrences in design
* each contains 3 cells
* pin map: {'n842': 'A', 'n524': 'B', 'x121': 'C', 'n525': 'D'} {'n843': 'Y'}
* function: ~B|(~A&~C&~D)
* Example occurence:
*   .subckt NOR2X1 A=n525 B=x121 Y=n526
*   .subckt INVX1 A=n526 Y=n527
*   .subckt OAI21X1 A=n527 B=n842 C=n524 Y=n843
