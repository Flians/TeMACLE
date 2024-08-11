.SUBCKT SQRT_G3_69_70_121_122 A B C Y VCC GND
MclE2QNU6_0#0 clE2QNU6_0#Y C VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclE2QNU6_0#1 clE2QNU6_0#Y C GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclE2QNU6_1#0 clE2QNU6_1#Y B VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclE2QNU6_1#1 VCC clE2QNU6_0#Y clE2QNU6_1#Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclE2QNU6_1#2 clE2QNU6_1#a_9_6# B GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclE2QNU6_1#3 clE2QNU6_1#Y clE2QNU6_0#Y clE2QNU6_1#a_9_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclE2QNU6_2#clOLW9S4_0#0 clE2QNU6_2#clOLW9S4_0#Y B VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclE2QNU6_2#clOLW9S4_0#1 clE2QNU6_2#clOLW9S4_0#Y B GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclE2QNU6_2#clOLW9S4_1#0 clE2QNU6_2#Y clE2QNU6_2#clOLW9S4_0#Y VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclE2QNU6_2#clOLW9S4_1#1 VCC C clE2QNU6_2#Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclE2QNU6_2#clOLW9S4_1#2 clE2QNU6_2#clOLW9S4_1#a_9_6# clE2QNU6_2#clOLW9S4_0#Y GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclE2QNU6_2#clOLW9S4_1#3 clE2QNU6_2#Y C clE2QNU6_2#clOLW9S4_1#a_9_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclE2QNU6_3#0 Y clE2QNU6_1#Y VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclE2QNU6_3#1 VCC clE2QNU6_2#Y Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclE2QNU6_3#2 Y A VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclE2QNU6_3#3 clE2QNU6_3#a_9_6# clE2QNU6_1#Y GND GND nmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclE2QNU6_3#4 clE2QNU6_3#a_14_6# clE2QNU6_2#Y clE2QNU6_3#a_9_6# GND nmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclE2QNU6_3#5 Y A clE2QNU6_3#a_14_6# GND nmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS 
* pattern code: 5|3|NAND3X1|INVX1=1|NAND2X1=1|SQRT_G1_1_67=1|INPUT:Y-INVX1:A=1|INPUT:Y-NAND2X1:A,B=1|INPUT:Y-NAND3X1:A,B,C=1|INPUT:Y-SQRT_G1_1_67:A=1|INPUT:Y-SQRT_G1_1_67:B=1|INVX1:Y-NAND2X1:A,B=1|NAND2X1:Y-NAND3X1:A,B,C=1|SQRT_G1_1_67:Y-NAND3X1:A,B,C=1|1221101
* 588 occurrences in design
* each contains 4 cells
* pin map: {'y59': 'A', 'n321': 'B', 'n258': 'C'} {'n372': 'Y'}
* function: ~A|(B&~C)|(C&~B)
* Example occurence:
*   .subckt INVX1 A=n258 Y=y62
*   .subckt NAND2X1 A=n321 B=y62 Y=n322
*   .subckt SQRT_G1_1_67 A=n258 B=n321 Y=n323
*   .subckt NAND3X1 A=n322 B=n323 C=y59 Y=n372
