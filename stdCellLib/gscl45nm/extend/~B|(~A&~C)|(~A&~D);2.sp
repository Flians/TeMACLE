.SUBCKT SQRT_G3_132_134 A B C D Y VCC GND
Mcl6S07EL_0#0 cl6S07EL_0#a_2_6# C VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl6S07EL_0#1 VCC D cl6S07EL_0#a_2_6# VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl6S07EL_0#2 cl6S07EL_0#Y cl6S07EL_0#a_2_6# VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl6S07EL_0#3 cl6S07EL_0#a_9_6# C cl6S07EL_0#a_2_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl6S07EL_0#4 GND D cl6S07EL_0#a_9_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl6S07EL_0#5 cl6S07EL_0#Y cl6S07EL_0#a_2_6# GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl6S07EL_1#0 cl6S07EL_1#a_9_54# A VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl6S07EL_1#1 Y cl6S07EL_0#Y cl6S07EL_1#a_9_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl6S07EL_1#2 VCC B Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl6S07EL_1#3 GND A cl6S07EL_1#a_2_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl6S07EL_1#4 cl6S07EL_1#a_2_6# cl6S07EL_0#Y GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl6S07EL_1#5 Y B cl6S07EL_1#a_2_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS 
* pattern code: 2|4|OAI21X1|AND2X2=1|AND2X2:Y-OAI21X1:A,B=1|INPUT:Y-AND2X2:A,B=2|INPUT:Y-OAI21X1:A,B=1|INPUT:Y-OAI21X1:C=1|111110
* 1287 occurrences in design
* each contains 2 cells
* pin map: {'n362': 'A', 'y62': 'B', 'n364': 'C', 'n367': 'D'} {'n371': 'Y'}
* function: ~B|(~A&~C)|(~A&~D)
* Example occurence:
*   .subckt AND2X2 A=n364 B=n367 Y=n368
*   .subckt OAI21X1 A=n362 B=n368 C=y62 Y=n371
