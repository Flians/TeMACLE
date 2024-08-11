.SUBCKT CTRL_G0_1_77_78 A B C Y VCC GND
MclXQFASO_0#0 clXQFASO_0#Y C VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclXQFASO_0#1 clXQFASO_0#Y C GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclXQFASO_1#0 clXQFASO_1#Y clXQFASO_0#Y VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclXQFASO_1#1 VCC B clXQFASO_1#Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclXQFASO_1#2 clXQFASO_1#Y A VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclXQFASO_1#3 clXQFASO_1#a_9_6# clXQFASO_0#Y GND GND nmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclXQFASO_1#4 clXQFASO_1#a_14_6# B clXQFASO_1#a_9_6# GND nmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclXQFASO_1#5 clXQFASO_1#Y A clXQFASO_1#a_14_6# GND nmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclXQFASO_2#0 Y clXQFASO_1#Y VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclXQFASO_2#1 Y clXQFASO_1#Y GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS
* pattern code: 3|3|INVX1|INVX1=1|NAND3X1=1|INPUT:Y-INVX1:A=1|INPUT:Y-NAND3X1:A,B,C=2|INVX1:Y-NAND3X1:A,B,C=1|NAND3X1:Y-INVX1:A=1|111011
* 6 occurrences in design
* each contains 3 cells
* pin map: {'n9': 'A', 'n86': 'B', 'x1': 'C'} {'y15': 'Y'}
* function: A&B&~C
* Example occurence:
*   .subckt INVX1 A=x1 Y=n10
*   .subckt NAND3X1 A=n9 B=n10 C=n86 Y=n87
*   .subckt INVX1 A=n87 Y=y15
