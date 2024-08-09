.SUBCKT BAR_G0_12_13_14 A B C Y VCC GND
MclKBU85Q_0#0 clKBU85Q_0#Y A VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclKBU85Q_0#1 clKBU85Q_0#Y A GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclKBU85Q_1#0 clKBU85Q_1#Y C VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclKBU85Q_1#1 VCC B clKBU85Q_1#Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclKBU85Q_1#2 clKBU85Q_1#a_9_6# C GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclKBU85Q_1#3 clKBU85Q_1#Y B clKBU85Q_1#a_9_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclKBU85Q_2#0 clKBU85Q_2#a_9_54# B VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclKBU85Q_2#1 Y clKBU85Q_0#Y clKBU85Q_2#a_9_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclKBU85Q_2#2 VCC clKBU85Q_1#Y Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclKBU85Q_2#3 GND B clKBU85Q_2#a_2_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclKBU85Q_2#4 clKBU85Q_2#a_2_6# clKBU85Q_0#Y GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclKBU85Q_2#5 Y clKBU85Q_1#Y clKBU85Q_2#a_2_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS 
* pattern code: 3|3|OAI21X1|INVX1=1|NAND2X1=1|INPUT:Y-INVX1:A=1|INPUT:Y-NAND2X1:A,B=2|INPUT:Y-OAI21X1:A,B=1|INVX1:Y-OAI21X1:A,B=1|NAND2X1:Y-OAI21X1:C=1|112110
* 69 occurrences in design
* each contains 3 cells
* pin map: {'x34': 'A', 'x128': 'B', 'x33': 'C'} {'n519': 'Y'}
* function: (B&C)|(A&~B)
* Example occurence:
*   .subckt INVX1 A=x34 Y=n170
*   .subckt NAND2X1 A=x33 B=x128 Y=n518
*   .subckt OAI21X1 A=x128 B=n170 C=n518 Y=n519
