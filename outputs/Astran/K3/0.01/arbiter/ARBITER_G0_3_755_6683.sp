.SUBCKT ARBITER_G0_3_755_6683 A C B Y VCC GND
MclZIKZRE_0#0 clZIKZRE_0#Y C VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclZIKZRE_0#1 clZIKZRE_0#Y C GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclZIKZRE_1#0 clZIKZRE_1#Y B VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclZIKZRE_1#1 clZIKZRE_1#Y B GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclZIKZRE_2#0 clZIKZRE_2#a_9_54# A VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclZIKZRE_2#1 Y clZIKZRE_0#Y clZIKZRE_2#a_9_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclZIKZRE_2#2 VCC clZIKZRE_1#Y Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclZIKZRE_2#3 GND A clZIKZRE_2#a_2_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclZIKZRE_2#4 clZIKZRE_2#a_2_6# clZIKZRE_0#Y GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclZIKZRE_2#5 Y clZIKZRE_1#Y clZIKZRE_2#a_2_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS
* pattern code: 3|3|OAI21X1|INVX1=2|INPUT:Y-INVX1:A=2|INPUT:Y-OAI21X1:A,B=1|INVX1:Y-OAI21X1:A,B=1|INVX1:Y-OAI21X1:C=1|111110
* 2693 occurrences in design
* each contains 3 cells
* pin map: {'x252': 'A', 'x125': 'B', 'x124': 'C'} {'n6951': 'Y'}
* function: B|(C&~A)
* Example occurence:
*   .subckt INVX1 A=x125 Y=n383
*   .subckt INVX1 A=x124 Y=n382
*   .subckt OAI21X1 A=x252 B=n382 C=n383 Y=n6951
