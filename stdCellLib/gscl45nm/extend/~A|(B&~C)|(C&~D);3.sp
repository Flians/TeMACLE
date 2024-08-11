.SUBCKT BAR_G0_13_14_15 A B C D Y VCC GND
Mcl446K4H_0#0 cl446K4H_0#Y D VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl446K4H_0#1 VCC C cl446K4H_0#Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl446K4H_0#2 cl446K4H_0#a_9_6# D GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl446K4H_0#3 cl446K4H_0#Y C cl446K4H_0#a_9_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl446K4H_1#0 cl446K4H_1#a_9_54# C VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl446K4H_1#1 cl446K4H_1#Y B cl446K4H_1#a_9_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl446K4H_1#2 VCC cl446K4H_0#Y cl446K4H_1#Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl446K4H_1#3 GND C cl446K4H_1#a_2_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl446K4H_1#4 cl446K4H_1#a_2_6# B GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl446K4H_1#5 cl446K4H_1#Y cl446K4H_0#Y cl446K4H_1#a_2_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl446K4H_2#0 Y cl446K4H_1#Y VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl446K4H_2#1 VCC A Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl446K4H_2#2 cl446K4H_2#a_9_6# cl446K4H_1#Y GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl446K4H_2#3 Y A cl446K4H_2#a_9_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS 
* pattern code: 3|4|NAND2X1|NAND2X1=1|OAI21X1=1|INPUT:Y-NAND2X1:A,B=3|INPUT:Y-OAI21X1:A,B=2|NAND2X1:Y-OAI21X1:C=1|OAI21X1:Y-NAND2X1:A,B=1|1112011
* 131 occurrences in design
* each contains 3 cells
* pin map: {'x129': 'A', 'n170': 'B', 'x128': 'C', 'x33': 'D'} {'n520': 'Y'}
* function: ~A|(B&~C)|(C&~D)
* Example occurence:
*   .subckt NAND2X1 A=x33 B=x128 Y=n518
*   .subckt OAI21X1 A=x128 B=n170 C=n518 Y=n519
*   .subckt NAND2X1 A=n519 B=x129 Y=n520
