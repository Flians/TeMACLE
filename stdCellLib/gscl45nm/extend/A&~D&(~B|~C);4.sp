.SUBCKT ARBITER_G3_1_2_1021_1022 A B C D Y VCC GND
MclQ1UPX4_0#0 clQ1UPX4_0#Y B VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclQ1UPX4_0#1 VCC C clQ1UPX4_0#Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclQ1UPX4_0#2 clQ1UPX4_0#a_9_6# B GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclQ1UPX4_0#3 clQ1UPX4_0#Y C clQ1UPX4_0#a_9_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclQ1UPX4_1#0 clQ1UPX4_1#Y D VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclQ1UPX4_1#1 clQ1UPX4_1#Y D GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclQ1UPX4_2#0 clQ1UPX4_2#Y clQ1UPX4_1#Y VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclQ1UPX4_2#1 VCC A clQ1UPX4_2#Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclQ1UPX4_2#2 clQ1UPX4_2#Y clQ1UPX4_0#Y VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclQ1UPX4_2#3 clQ1UPX4_2#a_9_6# clQ1UPX4_1#Y GND GND nmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclQ1UPX4_2#4 clQ1UPX4_2#a_14_6# A clQ1UPX4_2#a_9_6# GND nmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclQ1UPX4_2#5 clQ1UPX4_2#Y clQ1UPX4_0#Y clQ1UPX4_2#a_14_6# GND nmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclQ1UPX4_3#0 Y clQ1UPX4_2#Y VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclQ1UPX4_3#1 Y clQ1UPX4_2#Y GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS 
* pattern code: 4|4|INVX1|INVX1=1|NAND2X1=1|NAND3X1=1|INPUT:Y-INVX1:A=1|INPUT:Y-NAND2X1:A,B=2|INPUT:Y-NAND3X1:A,B,C=1|INVX1:Y-NAND3X1:A,B,C=1|NAND2X1:Y-NAND3X1:A,B,C=1|NAND3X1:Y-INVX1:A=1|11110111
* 255 occurrences in design
* each contains 4 cells
* pin map: {'n387': 'A', 'n258': 'B', 'x255': 'C', 'x128': 'D'} {'n1404': 'Y'}
* function: A&~D&(~B|~C)
* Example occurence:
*   .subckt NAND2X1 A=n258 B=x255 Y=n808
*   .subckt INVX1 A=x128 Y=n386
*   .subckt NAND3X1 A=n386 B=n387 C=n808 Y=n1403
*   .subckt INVX1 A=n1403 Y=n1404
