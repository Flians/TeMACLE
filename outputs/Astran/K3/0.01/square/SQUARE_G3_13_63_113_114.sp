.SUBCKT SQUARE_G3_13_63_113_114 A B C Y VCC GND
MclHFQJTH_0#0 clHFQJTH_0#Y B VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclHFQJTH_0#1 VCC C clHFQJTH_0#Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclHFQJTH_0#2 clHFQJTH_0#a_9_6# B GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclHFQJTH_0#3 clHFQJTH_0#Y C clHFQJTH_0#a_9_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclHFQJTH_1#0 clHFQJTH_1#Y clHFQJTH_0#Y VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclHFQJTH_1#1 clHFQJTH_1#Y clHFQJTH_0#Y GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclHFQJTH_2#0 clHFQJTH_2#Y A VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclHFQJTH_2#1 clHFQJTH_2#Y A GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclHFQJTH_3#0 Y clHFQJTH_1#Y VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclHFQJTH_3#1 VCC clHFQJTH_2#Y Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclHFQJTH_3#2 clHFQJTH_3#a_9_6# clHFQJTH_1#Y GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclHFQJTH_3#3 Y clHFQJTH_2#Y clHFQJTH_3#a_9_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS 
* pattern code: 4|3|NAND2X1|INVX1=2|NAND2X1=1|INPUT:Y-INVX1:A=1|INPUT:Y-NAND2X1:A,B=2|INVX1:Y-NAND2X1:A,B=2|NAND2X1:Y-INVX1:A=1|1111101
* 847 occurrences in design
* each contains 4 cells
* pin map: {'n242': 'A', 'x2': 'B', 'x3': 'C'} {'n244': 'Y'}
* function: A|~B|~C
* Example occurence:
*   .subckt NAND2X1 A=x2 B=x3 Y=n142
*   .subckt INVX1 A=n142 Y=n143
*   .subckt INVX1 A=n242 Y=n243
*   .subckt NAND2X1 A=n143 B=n243 Y=n244
