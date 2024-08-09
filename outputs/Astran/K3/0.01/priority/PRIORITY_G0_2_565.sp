.SUBCKT PRIORITY_G0_2_565 A B C Y VCC GND
MclQAAHD6_0#0 clQAAHD6_0#Y C VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclQAAHD6_0#1 clQAAHD6_0#Y C GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclQAAHD6_1#0 Y clQAAHD6_0#Y VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclQAAHD6_1#1 VCC A Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclQAAHD6_1#2 Y B VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclQAAHD6_1#3 clQAAHD6_1#a_9_6# clQAAHD6_0#Y GND GND nmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclQAAHD6_1#4 clQAAHD6_1#a_14_6# A clQAAHD6_1#a_9_6# GND nmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclQAAHD6_1#5 Y B clQAAHD6_1#a_14_6# GND nmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS 
* pattern code: 2|3|NAND3X1|INVX1=1|INPUT:Y-INVX1:A=1|INPUT:Y-NAND3X1:A,B,C=2|INVX1:Y-NAND3X1:A,B,C=1|11110
* 171 occurrences in design
* each contains 2 cells
* pin map: {'n711': 'A', 'n719': 'B', 'x3': 'C'} {'n720': 'Y'}
* function: C|~A|~B
* Example occurence:
*   .subckt INVX1 A=x3 Y=n132
*   .subckt NAND3X1 A=n132 B=n711 C=n719 Y=n720
