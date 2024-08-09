.SUBCKT BAR_G0_3_339 A B C Y VCC GND
Mcl0M1HZZ_0#0 cl0M1HZZ_0#Y C VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl0M1HZZ_0#1 cl0M1HZZ_0#Y C GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl0M1HZZ_1#0 cl0M1HZZ_1#a_9_54# B VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl0M1HZZ_1#1 Y cl0M1HZZ_0#Y cl0M1HZZ_1#a_9_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl0M1HZZ_1#2 VCC A Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl0M1HZZ_1#3 GND B cl0M1HZZ_1#a_2_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl0M1HZZ_1#4 cl0M1HZZ_1#a_2_6# cl0M1HZZ_0#Y GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl0M1HZZ_1#5 Y A cl0M1HZZ_1#a_2_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS 
* pattern code: 2|3|OAI21X1|INVX1=1|INPUT:Y-INVX1:A=1|INPUT:Y-OAI21X1:A,B=1|INPUT:Y-OAI21X1:C=1|INVX1:Y-OAI21X1:A,B=1|11110
* 327 occurrences in design
* each contains 2 cells
* pin map: {'n262': 'A', 'n246': 'B', 'x129': 'C'} {'n642': 'Y'}
* function: ~A|(C&~B)
* Example occurence:
*   .subckt INVX1 A=x129 Y=n263
*   .subckt OAI21X1 A=n246 B=n263 C=n262 Y=n642
