.SUBCKT BAR_G0_3_339_341 A B C D Y VCC GND
Mcl9NADSX_0#0 cl9NADSX_0#Y D VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl9NADSX_0#1 cl9NADSX_0#Y D GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl9NADSX_1#0 cl9NADSX_1#a_9_54# C VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl9NADSX_1#1 cl9NADSX_1#Y cl9NADSX_0#Y cl9NADSX_1#a_9_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl9NADSX_1#2 VCC B cl9NADSX_1#Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl9NADSX_1#3 GND C cl9NADSX_1#a_2_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl9NADSX_1#4 cl9NADSX_1#a_2_6# cl9NADSX_0#Y GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl9NADSX_1#5 cl9NADSX_1#Y B cl9NADSX_1#a_2_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl9NADSX_2#0 Y cl9NADSX_1#Y VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl9NADSX_2#1 VCC A Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl9NADSX_2#2 cl9NADSX_2#a_9_6# cl9NADSX_1#Y GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl9NADSX_2#3 Y A cl9NADSX_2#a_9_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS 
* pattern code: 3|4|NAND2X1|INVX1=1|OAI21X1=1|INPUT:Y-INVX1:A=1|INPUT:Y-NAND2X1:A,B=1|INPUT:Y-OAI21X1:A,B=1|INPUT:Y-OAI21X1:C=1|INVX1:Y-OAI21X1:A,B=1|OAI21X1:Y-NAND2X1:A,B=1|1111101
* 377 occurrences in design
* each contains 3 cells
* pin map: {'n643': 'A', 'n262': 'B', 'n246': 'C', 'x129': 'D'} {'n644': 'Y'}
* function: ~A|(B&C)|(B&~D)
* Example occurence:
*   .subckt INVX1 A=x129 Y=n263
*   .subckt OAI21X1 A=n246 B=n263 C=n262 Y=n642
*   .subckt NAND2X1 A=n642 B=n643 Y=n644
