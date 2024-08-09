.SUBCKT ARBITER_G0_3_755_6683 A B C Y VCC GND
Mcl8S9C77_0#0 cl8S9C77_0#Y B VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl8S9C77_0#1 cl8S9C77_0#Y B GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl8S9C77_1#0 cl8S9C77_1#Y C VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl8S9C77_1#1 cl8S9C77_1#Y C GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl8S9C77_2#0 cl8S9C77_2#a_9_54# A VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl8S9C77_2#1 Y cl8S9C77_1#Y cl8S9C77_2#a_9_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl8S9C77_2#2 VCC cl8S9C77_0#Y Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl8S9C77_2#3 GND A cl8S9C77_2#a_2_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl8S9C77_2#4 cl8S9C77_2#a_2_6# cl8S9C77_1#Y GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl8S9C77_2#5 Y cl8S9C77_0#Y cl8S9C77_2#a_2_6# GND nmos w=0.5u l=0.05u
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
