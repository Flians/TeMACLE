.SUBCKT ARBITER_G1_10_11_409_410 A B C D Y VCC GND
MclZTVKO6_0#0 clZTVKO6_0#a_9_54# D VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclZTVKO6_0#1 clZTVKO6_0#Y C clZTVKO6_0#a_9_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclZTVKO6_0#2 clZTVKO6_0#Y D GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclZTVKO6_0#3 GND C clZTVKO6_0#Y GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclZTVKO6_1#0 clZTVKO6_1#Y clZTVKO6_0#Y VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclZTVKO6_1#1 clZTVKO6_1#Y clZTVKO6_0#Y GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclZTVKO6_2#0 clZTVKO6_2#Y B VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclZTVKO6_2#1 clZTVKO6_2#Y B GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclZTVKO6_3#0 clZTVKO6_3#a_9_54# clZTVKO6_1#Y VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclZTVKO6_3#1 Y A clZTVKO6_3#a_9_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclZTVKO6_3#2 VCC clZTVKO6_2#Y Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclZTVKO6_3#3 GND clZTVKO6_1#Y clZTVKO6_3#a_2_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclZTVKO6_3#4 clZTVKO6_3#a_2_6# A GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclZTVKO6_3#5 Y clZTVKO6_2#Y clZTVKO6_3#a_2_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS 
* pattern code: 4|4|OAI21X1|INVX1=2|NOR2X1=1|INPUT:Y-INVX1:A=1|INPUT:Y-NOR2X1:A,B=2|INPUT:Y-OAI21X1:A,B=1|INVX1:Y-OAI21X1:A,B=1|INVX1:Y-OAI21X1:C=1|NOR2X1:Y-INVX1:A=1|11111110
* 1320 occurrences in design
* each contains 4 cells
* pin map: {'n842': 'A', 'n523': 'B', 'x121': 'C', 'n525': 'D'} {'n843': 'Y'}
* function: B|(~A&~C&~D)
* Example occurence:
*   .subckt NOR2X1 A=n525 B=x121 Y=n526
*   .subckt INVX1 A=n526 Y=n527
*   .subckt INVX1 A=n523 Y=n524
*   .subckt OAI21X1 A=n527 B=n842 C=n524 Y=n843
