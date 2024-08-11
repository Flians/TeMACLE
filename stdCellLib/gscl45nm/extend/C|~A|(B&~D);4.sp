.SUBCKT ARBITER_G3_0_1_2_1021 A B C D Y VCC GND
MclG59LK6_0#0 clG59LK6_0#Y D VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclG59LK6_0#1 clG59LK6_0#Y D GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclG59LK6_1#0 clG59LK6_1#Y clG59LK6_0#Y VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclG59LK6_1#1 VCC B clG59LK6_1#Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclG59LK6_1#2 clG59LK6_1#a_9_6# clG59LK6_0#Y GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclG59LK6_1#3 clG59LK6_1#Y B clG59LK6_1#a_9_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclG59LK6_2#0 clG59LK6_2#Y C VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclG59LK6_2#1 clG59LK6_2#Y C GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclG59LK6_3#0 Y clG59LK6_2#Y VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclG59LK6_3#1 VCC A Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclG59LK6_3#2 Y clG59LK6_1#Y VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclG59LK6_3#3 clG59LK6_3#a_9_6# clG59LK6_2#Y GND GND nmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclG59LK6_3#4 clG59LK6_3#a_14_6# A clG59LK6_3#a_9_6# GND nmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclG59LK6_3#5 Y clG59LK6_1#Y clG59LK6_3#a_14_6# GND nmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS 
* pattern code: 4|4|NAND3X1|INVX1=2|NAND2X1=1|INPUT:Y-INVX1:A=2|INPUT:Y-NAND2X1:A,B=1|INPUT:Y-NAND3X1:A,B,C=1|INVX1:Y-NAND2X1:A,B=1|INVX1:Y-NAND3X1:A,B,C=1|NAND2X1:Y-NAND3X1:A,B,C=1|11111110
* 255 occurrences in design
* each contains 4 cells
* pin map: {'n387': 'A', 'x255': 'B', 'x128': 'C', 'x0': 'D'} {'n1403': 'Y'}
* function: C|~A|(B&~D)
* Example occurence:
*   .subckt INVX1 A=x0 Y=n258
*   .subckt NAND2X1 A=n258 B=x255 Y=n808
*   .subckt INVX1 A=x128 Y=n386
*   .subckt NAND3X1 A=n386 B=n387 C=n808 Y=n1403
