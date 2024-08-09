.SUBCKT DEC_G0_0_3_7 A B C Y VCC GND
MclE93AQV_0#0 clE93AQV_0#Y C VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclE93AQV_0#1 clE93AQV_0#Y C GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclE93AQV_1#0 clE93AQV_1#Y clE93AQV_0#Y VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclE93AQV_1#1 VCC B clE93AQV_1#Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclE93AQV_1#2 clE93AQV_1#a_9_6# clE93AQV_0#Y GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclE93AQV_1#3 clE93AQV_1#Y B clE93AQV_1#a_9_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclE93AQV_2#0 clE93AQV_2#a_9_54# clE93AQV_1#Y VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclE93AQV_2#1 Y A clE93AQV_2#a_9_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclE93AQV_2#2 Y clE93AQV_1#Y GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclE93AQV_2#3 GND A Y GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS 
* pattern code: 3|3|NOR2X1|INVX1=1|NAND2X1=1|INPUT:Y-INVX1:A=1|INPUT:Y-NAND2X1:A,B=1|INPUT:Y-NOR2X1:A,B=1|INVX1:Y-NAND2X1:A,B=1|NAND2X1:Y-NOR2X1:A,B=1|111110
* 160 occurrences in design
* each contains 3 cells
* pin map: {'n22': 'A', 'n18': 'B', 'x4': 'C'} {'y0': 'Y'}
* function: B&~A&~C
* Example occurence:
*   .subckt INVX1 A=x4 Y=n14
*   .subckt NAND2X1 A=n14 B=n18 Y=n19
*   .subckt NOR2X1 A=n19 B=n22 Y=y0
