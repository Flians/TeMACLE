.SUBCKT DEC_G0_0_102 A B C Y VCC GND
MclXD5BA2_0#0 clXD5BA2_0#Y C VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclXD5BA2_0#1 clXD5BA2_0#Y C GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclXD5BA2_1#0 Y clXD5BA2_0#Y VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclXD5BA2_1#1 VCC A Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclXD5BA2_1#2 Y B VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclXD5BA2_1#3 clXD5BA2_1#a_9_6# clXD5BA2_0#Y GND GND nmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclXD5BA2_1#4 clXD5BA2_1#a_14_6# A clXD5BA2_1#a_9_6# GND nmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclXD5BA2_1#5 Y B clXD5BA2_1#a_14_6# GND nmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS 
* pattern code: 2|3|NAND3X1|INVX1=1|INPUT:Y-INVX1:A=1|INPUT:Y-NAND3X1:A,B,C=2|INVX1:Y-NAND3X1:A,B,C=1|11110
* 10 occurrences in design
* each contains 2 cells
* pin map: {'n15': 'A', 'n111': 'B', 'x4': 'C'} {'n112': 'Y'}
* function: C|~A|~B
* Example occurence:
*   .subckt INVX1 A=x4 Y=n14
*   .subckt NAND3X1 A=n14 B=n15 C=n111 Y=n112
