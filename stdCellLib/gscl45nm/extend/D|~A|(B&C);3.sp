.SUBCKT ARBITER_G3_1_2_1021 A B C D Y VCC GND
MclS5WI6O_0#0 clS5WI6O_0#Y B VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclS5WI6O_0#1 VCC C clS5WI6O_0#Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclS5WI6O_0#2 clS5WI6O_0#a_9_6# B GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclS5WI6O_0#3 clS5WI6O_0#Y C clS5WI6O_0#a_9_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclS5WI6O_1#0 clS5WI6O_1#Y D VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclS5WI6O_1#1 clS5WI6O_1#Y D GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclS5WI6O_2#0 Y clS5WI6O_1#Y VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclS5WI6O_2#1 VCC A Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclS5WI6O_2#2 Y clS5WI6O_0#Y VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclS5WI6O_2#3 clS5WI6O_2#a_9_6# clS5WI6O_1#Y GND GND nmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclS5WI6O_2#4 clS5WI6O_2#a_14_6# A clS5WI6O_2#a_9_6# GND nmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclS5WI6O_2#5 Y clS5WI6O_0#Y clS5WI6O_2#a_14_6# GND nmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS 
* pattern code: 3|4|NAND3X1|INVX1=1|NAND2X1=1|INPUT:Y-INVX1:A=1|INPUT:Y-NAND2X1:A,B=2|INPUT:Y-NAND3X1:A,B,C=1|INVX1:Y-NAND3X1:A,B,C=1|NAND2X1:Y-NAND3X1:A,B,C=1|1111110
* 255 occurrences in design
* each contains 3 cells
* pin map: {'n387': 'A', 'n258': 'B', 'x255': 'C', 'x128': 'D'} {'n1403': 'Y'}
* function: D|~A|(B&C)
* Example occurence:
*   .subckt NAND2X1 A=n258 B=x255 Y=n808
*   .subckt INVX1 A=x128 Y=n386
*   .subckt NAND3X1 A=n386 B=n387 C=n808 Y=n1403
