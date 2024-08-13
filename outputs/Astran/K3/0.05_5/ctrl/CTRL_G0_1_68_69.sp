.SUBCKT CTRL_G0_1_68_69 A B C Y VCC GND
MclQB27KN_0#0 clQB27KN_0#Y C VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclQB27KN_0#1 clQB27KN_0#Y C GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclQB27KN_1#0 clQB27KN_1#Y clQB27KN_0#Y VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclQB27KN_1#1 VCC B clQB27KN_1#Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclQB27KN_1#2 clQB27KN_1#Y A VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclQB27KN_1#3 clQB27KN_1#a_9_6# clQB27KN_0#Y GND GND nmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclQB27KN_1#4 clQB27KN_1#a_14_6# B clQB27KN_1#a_9_6# GND nmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclQB27KN_1#5 clQB27KN_1#Y A clQB27KN_1#a_14_6# GND nmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclQB27KN_2#0 Y clQB27KN_1#Y VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclQB27KN_2#1 Y clQB27KN_1#Y GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS
* pattern code: 3|3|INVX1|INVX1=1|NAND3X1=1|INPUT:Y-INVX1:A=1|INPUT:Y-NAND3X1:A,B,C=2|INVX1:Y-NAND3X1:A,B,C=1|NAND3X1:Y-INVX1:A=1|111011
* 7 occurrences in design
* each contains 3 cells
* pin map: {'n76': 'A', 'n9': 'B', 'x1': 'C'} {'y11': 'Y'}
* function: A&B&~C
* Example occurence:
*   .subckt INVX1 A=x1 Y=n10
*   .subckt NAND3X1 A=n9 B=n10 C=n76 Y=n77
*   .subckt INVX1 A=n77 Y=y11
