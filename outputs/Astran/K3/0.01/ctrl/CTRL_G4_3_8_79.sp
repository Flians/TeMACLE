.SUBCKT CTRL_G4_3_8_79 A B C Y VCC GND
MclFS73R5_0#0 clFS73R5_0#Y A VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclFS73R5_0#1 VCC B clFS73R5_0#Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclFS73R5_0#2 clFS73R5_0#a_9_6# A GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclFS73R5_0#3 clFS73R5_0#Y B clFS73R5_0#a_9_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclFS73R5_1#0 clFS73R5_1#Y C VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclFS73R5_1#1 clFS73R5_1#Y C GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclFS73R5_2#0 clFS73R5_2#a_9_54# clFS73R5_1#Y VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclFS73R5_2#1 Y clFS73R5_0#Y clFS73R5_2#a_9_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclFS73R5_2#2 Y clFS73R5_1#Y GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclFS73R5_2#3 GND clFS73R5_0#Y Y GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS 
* pattern code: 3|3|NOR2X1|INVX1=1|NAND2X1=1|INPUT:Y-INVX1:A=1|INPUT:Y-NAND2X1:A,B=2|INVX1:Y-NOR2X1:A,B=1|NAND2X1:Y-NOR2X1:A,B=1|111110
* 2 occurrences in design
* each contains 3 cells
* pin map: {'n12': 'A', 'n13': 'B', 'x2': 'C'} {'y19': 'Y'}
* function: A&B&C
* Example occurence:
*   .subckt NAND2X1 A=n12 B=n13 Y=n18
*   .subckt INVX1 A=x2 Y=n11
*   .subckt NOR2X1 A=n11 B=n18 Y=y19
