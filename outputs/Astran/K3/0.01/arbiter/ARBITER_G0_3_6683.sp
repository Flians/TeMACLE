.SUBCKT ARBITER_G0_3_6683 A B C Y VCC GND
MclBWLQUU_0#0 clBWLQUU_0#Y C VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclBWLQUU_0#1 clBWLQUU_0#Y C GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclBWLQUU_1#0 clBWLQUU_1#a_9_54# A VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclBWLQUU_1#1 Y B clBWLQUU_1#a_9_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclBWLQUU_1#2 VCC clBWLQUU_0#Y Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclBWLQUU_1#3 GND A clBWLQUU_1#a_2_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclBWLQUU_1#4 clBWLQUU_1#a_2_6# B GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclBWLQUU_1#5 Y clBWLQUU_0#Y clBWLQUU_1#a_2_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS 
* pattern code: 2|3|OAI21X1|INVX1=1|INPUT:Y-INVX1:A=1|INPUT:Y-OAI21X1:A,B=2|INVX1:Y-OAI21X1:C=1|11110
* 2693 occurrences in design
* each contains 2 cells
* pin map: {'x252': 'A', 'n382': 'B', 'x125': 'C'} {'n6951': 'Y'}
* function: C|(~A&~B)
* Example occurence:
*   .subckt INVX1 A=x125 Y=n383
*   .subckt OAI21X1 A=x252 B=n382 C=n383 Y=n6951
