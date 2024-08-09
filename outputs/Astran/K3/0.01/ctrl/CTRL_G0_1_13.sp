.SUBCKT CTRL_G0_1_13 A B C Y VCC GND
MclCUKWOK_0#0 clCUKWOK_0#Y C VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclCUKWOK_0#1 clCUKWOK_0#Y C GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclCUKWOK_1#0 Y B VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclCUKWOK_1#1 VCC clCUKWOK_0#Y Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclCUKWOK_1#2 Y A VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclCUKWOK_1#3 clCUKWOK_1#a_9_6# B GND GND nmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclCUKWOK_1#4 clCUKWOK_1#a_14_6# clCUKWOK_0#Y clCUKWOK_1#a_9_6# GND nmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclCUKWOK_1#5 Y A clCUKWOK_1#a_14_6# GND nmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS 
* pattern code: 2|3|NAND3X1|INVX1=1|INPUT:Y-INVX1:A=1|INPUT:Y-NAND3X1:A,B,C=2|INVX1:Y-NAND3X1:A,B,C=1|11110
* 20 occurrences in design
* each contains 2 cells
* pin map: {'x3': 'A', 'n9': 'B', 'x1': 'C'} {'n26': 'Y'}
* function: C|~A|~B
* Example occurence:
*   .subckt INVX1 A=x1 Y=n10
*   .subckt NAND3X1 A=n9 B=n10 C=x3 Y=n26
