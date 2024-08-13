.SUBCKT PRIORITY_G4_34_241_630_631 A B C Y VCC GND
MclIL18HC_0#0 clIL18HC_0#a_9_54# B VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclIL18HC_0#1 clIL18HC_0#Y C clIL18HC_0#a_9_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclIL18HC_0#2 clIL18HC_0#Y B GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclIL18HC_0#3 GND C clIL18HC_0#Y GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclIL18HC_1#0 clIL18HC_1#a_2_6# A VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclIL18HC_1#1 VCC clIL18HC_0#Y clIL18HC_1#a_2_6# VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclIL18HC_1#2 Y clIL18HC_1#a_2_6# VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclIL18HC_1#3 clIL18HC_1#a_9_6# A clIL18HC_1#a_2_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclIL18HC_1#4 GND clIL18HC_0#Y clIL18HC_1#a_9_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclIL18HC_1#5 Y clIL18HC_1#a_2_6# GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS
* pattern code: 4|3|INVX1|INVX1=2|NAND3X1=1|INPUT:Y-INVX1:A=2|INPUT:Y-NAND3X1:A,B,C=1|INVX1:Y-NAND3X1:A,B,C=2|NAND3X1:Y-INVX1:A=1|1110111
* 10 occurrences in design
* each contains 4 cells
* pin map: {'n759': 'A', 'x49': 'B', 'x48': 'C'} {'n761': 'Y'}
* function: A&~B&~C
* Example occurence:
*   .subckt INVX1 A=x49 Y=n152
*   .subckt INVX1 A=x48 Y=n151
*   .subckt NAND3X1 A=n151 B=n152 C=n759 Y=n760
*   .subckt INVX1 A=n760 Y=n761
