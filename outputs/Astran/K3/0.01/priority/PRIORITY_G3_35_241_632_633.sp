.SUBCKT PRIORITY_G3_35_241_632_633 A B C Y VCC GND
MclI7J2II_0#0 clI7J2II_0#Y B VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclI7J2II_0#1 clI7J2II_0#Y B GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclI7J2II_1#0 clI7J2II_1#Y C VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclI7J2II_1#1 clI7J2II_1#Y C GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclI7J2II_2#0 clI7J2II_2#Y clI7J2II_1#Y VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclI7J2II_2#1 VCC clI7J2II_0#Y clI7J2II_2#Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclI7J2II_2#2 clI7J2II_2#Y A VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclI7J2II_2#3 clI7J2II_2#a_9_6# clI7J2II_1#Y GND GND nmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclI7J2II_2#4 clI7J2II_2#a_14_6# clI7J2II_0#Y clI7J2II_2#a_9_6# GND nmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclI7J2II_2#5 clI7J2II_2#Y A clI7J2II_2#a_14_6# GND nmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclI7J2II_3#0 Y clI7J2II_2#Y VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclI7J2II_3#1 Y clI7J2II_2#Y GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS 
* pattern code: 4|3|INVX1|INVX1=2|NAND3X1=1|INPUT:Y-INVX1:A=2|INPUT:Y-NAND3X1:A,B,C=1|INVX1:Y-NAND3X1:A,B,C=2|NAND3X1:Y-INVX1:A=1|1110111
* 9 occurrences in design
* each contains 4 cells
* pin map: {'n761': 'A', 'x49': 'B', 'x48': 'C'} {'n763': 'Y'}
* function: A&~B&~C
* Example occurence:
*   .subckt INVX1 A=x49 Y=n155
*   .subckt INVX1 A=x48 Y=n154
*   .subckt NAND3X1 A=n154 B=n155 C=n761 Y=n762
*   .subckt INVX1 A=n762 Y=n763
