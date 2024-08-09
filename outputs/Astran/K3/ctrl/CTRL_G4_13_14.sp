.SUBCKT CTRL_G4_13_14 A B C Y VCC GND
MclGR82F4_0#0 clGR82F4_0#Y C VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclGR82F4_0#1 clGR82F4_0#Y C GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclGR82F4_1#0 clGR82F4_1#a_9_54# clGR82F4_0#Y VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclGR82F4_1#1 Y B clGR82F4_1#a_9_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclGR82F4_1#2 VCC A Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclGR82F4_1#3 GND clGR82F4_0#Y clGR82F4_1#a_2_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclGR82F4_1#4 clGR82F4_1#a_2_6# B GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclGR82F4_1#5 Y A clGR82F4_1#a_2_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS 
* pattern code: 2|3|OAI21X1|INVX1=1|INPUT:Y-INVX1:A=1|INPUT:Y-OAI21X1:A,B=1|INPUT:Y-OAI21X1:C=1|INVX1:Y-OAI21X1:A,B=1|11110
* 3 occurrences in design
* each contains 2 cells
* pin map: {'x2': 'A', 'n18': 'B', 'x1': 'C'} {'n25': 'Y'}
* function: ~A|(C&~B)
* Example occurence:
*   .subckt INVX1 A=x1 Y=n10
*   .subckt OAI21X1 A=n10 B=n18 C=x2 Y=n25
