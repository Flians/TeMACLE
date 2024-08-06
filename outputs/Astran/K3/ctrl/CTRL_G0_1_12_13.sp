.SUBCKT CTRL_G0_1_12_13 A B C Y VCC GND
MclBVLN42_0#0 clBVLN42_0#Y B VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclBVLN42_0#1 clBVLN42_0#Y B GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclBVLN42_1#0 clBVLN42_1#Y C VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclBVLN42_1#1 clBVLN42_1#Y C GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclBVLN42_2#0 Y clBVLN42_0#Y VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclBVLN42_2#1 VCC clBVLN42_1#Y Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclBVLN42_2#2 Y A VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclBVLN42_2#3 clBVLN42_2#a_9_6# clBVLN42_0#Y GND GND nmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclBVLN42_2#4 clBVLN42_2#a_14_6# clBVLN42_1#Y clBVLN42_2#a_9_6# GND nmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclBVLN42_2#5 Y A clBVLN42_2#a_14_6# GND nmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS
* pattern code: 3|3|NAND3X1|INVX1=2|INPUT:Y-INVX1:A=2|INPUT:Y-NAND3X1:A,B,C=1|INVX1:Y-NAND3X1:A,B,C=2|111110
* 9 occurrences in design
* each contains 3 cells
* pin map: {'x3': 'A', 'x1': 'B', 'x0': 'C'} {'n26': 'Y'}
* function: B|C|~A
* Example occurence:
*   .subckt INVX1 A=x1 Y=n10
*   .subckt INVX1 A=x0 Y=n9
*   .subckt NAND3X1 A=n9 B=n10 C=x3 Y=n26
