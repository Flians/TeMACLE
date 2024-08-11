.SUBCKT BAR_G0_12_13_14_15 A B C D Y VCC GND
MclS0O4U8_0#0 clS0O4U8_0#Y B VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclS0O4U8_0#1 clS0O4U8_0#Y B GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclS0O4U8_1#0 clS0O4U8_1#Y D VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclS0O4U8_1#1 VCC C clS0O4U8_1#Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclS0O4U8_1#2 clS0O4U8_1#a_9_6# D GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclS0O4U8_1#3 clS0O4U8_1#Y C clS0O4U8_1#a_9_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclS0O4U8_2#0 clS0O4U8_2#a_9_54# C VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclS0O4U8_2#1 clS0O4U8_2#Y clS0O4U8_0#Y clS0O4U8_2#a_9_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclS0O4U8_2#2 VCC clS0O4U8_1#Y clS0O4U8_2#Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclS0O4U8_2#3 GND C clS0O4U8_2#a_2_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclS0O4U8_2#4 clS0O4U8_2#a_2_6# clS0O4U8_0#Y GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclS0O4U8_2#5 clS0O4U8_2#Y clS0O4U8_1#Y clS0O4U8_2#a_2_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclS0O4U8_3#0 Y clS0O4U8_2#Y VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclS0O4U8_3#1 VCC A Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclS0O4U8_3#2 clS0O4U8_3#a_9_6# clS0O4U8_2#Y GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclS0O4U8_3#3 Y A clS0O4U8_3#a_9_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS 
* pattern code: 4|4|NAND2X1|INVX1=1|NAND2X1=1|OAI21X1=1|INPUT:Y-INVX1:A=1|INPUT:Y-NAND2X1:A,B=3|INPUT:Y-OAI21X1:A,B=1|INVX1:Y-OAI21X1:A,B=1|NAND2X1:Y-OAI21X1:C=1|OAI21X1:Y-NAND2X1:A,B=1|11121011
* 131 occurrences in design
* each contains 4 cells
* pin map: {'x129': 'A', 'x34': 'B', 'x128': 'C', 'x33': 'D'} {'n520': 'Y'}
* function: ~A|(C&~D)|(~B&~C)
* Example occurence:
*   .subckt INVX1 A=x34 Y=n170
*   .subckt NAND2X1 A=x33 B=x128 Y=n518
*   .subckt OAI21X1 A=x128 B=n170 C=n518 Y=n519
*   .subckt NAND2X1 A=n519 B=x129 Y=n520
