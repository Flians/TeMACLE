.SUBCKT BAR_G0_0_1735 A B C Y VCC GND
MclB7MA7C_0#0 clB7MA7C_0#Y C VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclB7MA7C_0#1 clB7MA7C_0#Y C GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclB7MA7C_1#0 Y B VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclB7MA7C_1#1 VCC clB7MA7C_0#Y Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclB7MA7C_1#2 Y A VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclB7MA7C_1#3 clB7MA7C_1#a_9_6# B GND GND nmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclB7MA7C_1#4 clB7MA7C_1#a_14_6# clB7MA7C_0#Y clB7MA7C_1#a_9_6# GND nmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclB7MA7C_1#5 Y A clB7MA7C_1#a_14_6# GND nmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS 
* pattern code: 2|3|NAND3X1|INVX1=1|INPUT:Y-INVX1:A=1|INPUT:Y-NAND3X1:A,B,C=2|INVX1:Y-NAND3X1:A,B,C=1|11110
* 184 occurrences in design
* each contains 2 cells
* pin map: {'n1493': 'A', 'n266': 'B', 'x133': 'C'} {'n1872': 'Y'}
* function: C|~A|~B
* Example occurence:
*   .subckt INVX1 A=x133 Y=n267
*   .subckt NAND3X1 A=n266 B=n267 C=n1493 Y=n1872
