.SUBCKT MAX_G3_3_5 A B C Y VCC GND
MclYLKFG6_0#0 clYLKFG6_0#Y C VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclYLKFG6_0#1 clYLKFG6_0#Y C GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclYLKFG6_1#0 Y clYLKFG6_0#Y VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclYLKFG6_1#1 VCC A Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclYLKFG6_1#2 Y B VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclYLKFG6_1#3 clYLKFG6_1#a_9_6# clYLKFG6_0#Y GND GND nmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclYLKFG6_1#4 clYLKFG6_1#a_14_6# A clYLKFG6_1#a_9_6# GND nmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclYLKFG6_1#5 Y B clYLKFG6_1#a_14_6# GND nmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS 
* pattern code: 2|3|NAND3X1|INVX1=1|INPUT:Y-INVX1:A=1|INPUT:Y-NAND3X1:A,B,C=2|INVX1:Y-NAND3X1:A,B,C=1|11110
* 175 occurrences in design
* each contains 2 cells
* pin map: {'n677': 'A', 'x120': 'B', 'x248': 'C'} {'n1338': 'Y'}
* function: C|~A|~B
* Example occurence:
*   .subckt INVX1 A=x248 Y=n676
*   .subckt NAND3X1 A=n676 B=n677 C=x120 Y=n1338
