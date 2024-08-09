.SUBCKT I2C_G2_15_21_146 A B C Y VCC GND
MclWMDD1G_0#0 clWMDD1G_0#Y B VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclWMDD1G_0#1 clWMDD1G_0#Y B GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclWMDD1G_1#0 clWMDD1G_1#Y C VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclWMDD1G_1#1 clWMDD1G_1#Y C GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclWMDD1G_2#0 Y clWMDD1G_0#Y VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclWMDD1G_2#1 VCC clWMDD1G_1#Y Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclWMDD1G_2#2 Y A VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclWMDD1G_2#3 clWMDD1G_2#a_9_6# clWMDD1G_0#Y GND GND nmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclWMDD1G_2#4 clWMDD1G_2#a_14_6# clWMDD1G_1#Y clWMDD1G_2#a_9_6# GND nmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclWMDD1G_2#5 Y A clWMDD1G_2#a_14_6# GND nmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS 
* pattern code: 3|3|NAND3X1|INVX1=2|INPUT:Y-INVX1:A=2|INPUT:Y-NAND3X1:A,B,C=1|INVX1:Y-NAND3X1:A,B,C=2|111110
* 86 occurrences in design
* each contains 3 cells
* pin map: {'n273': 'A', 'x9': 'B', 'x14': 'C'} {'n324': 'Y'}
* function: B|C|~A
* Example occurence:
*   .subckt INVX1 A=x9 Y=n156
*   .subckt INVX1 A=x14 Y=n161
*   .subckt NAND3X1 A=n156 B=n161 C=n273 Y=n324
