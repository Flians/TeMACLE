.SUBCKT BAR_G0_0_1099 A B C Y VCC GND
MclKKN630_0#0 clKKN630_0#Y C VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclKKN630_0#1 clKKN630_0#Y C GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclKKN630_1#0 VCC clKKN630_0#Y clKKN630_1#a_2_64# VCC pmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclKKN630_1#1 clKKN630_1#a_2_64# clKKN630_0#Y VCC VCC pmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclKKN630_1#2 clKKN630_1#a_25_64# A clKKN630_1#a_2_64# VCC pmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclKKN630_1#3 clKKN630_1#a_2_64# A clKKN630_1#a_25_64# VCC pmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclKKN630_1#4 Y B clKKN630_1#a_25_64# VCC pmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclKKN630_1#5 clKKN630_1#a_25_64# B Y VCC pmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclKKN630_1#6 Y clKKN630_0#Y GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclKKN630_1#7 GND A Y GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclKKN630_1#8 Y B GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS 
* pattern code: 2|3|NOR3X1|INVX1=1|INPUT:Y-INVX1:A=1|INPUT:Y-NOR3X1:A,B,C=2|INVX1:Y-NOR3X1:A,B,C=1|11110
* 95 occurrences in design
* each contains 2 cells
* pin map: {'n1281': 'A', 'n1288': 'B', 'x133': 'C'} {'n1289': 'Y'}
* function: C&~A&~B
* Example occurence:
*   .subckt INVX1 A=x133 Y=n267
*   .subckt NOR3X1 A=n267 B=n1281 C=n1288 Y=n1289