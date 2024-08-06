.SUBCKT PRIORITY_G3_35_632_633 C A B Y VCC GND
Mcl8L4A00_0#0 cl8L4A00_0#Y A VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl8L4A00_0#1 VCC B cl8L4A00_0#Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl8L4A00_0#2 cl8L4A00_0#a_9_6# A GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl8L4A00_0#3 cl8L4A00_0#Y B cl8L4A00_0#a_9_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl8L4A00_1#0 cl8L4A00_1#a_9_54# cl8L4A00_0#Y VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl8L4A00_1#1 Y C cl8L4A00_1#a_9_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl8L4A00_1#2 Y cl8L4A00_0#Y GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl8L4A00_1#3 GND C Y GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS
* pattern code: 3|3|INVX1|INVX1=1|NAND3X1=1|INPUT:Y-INVX1:A=1|INPUT:Y-NAND3X1:A,B,C=2|INVX1:Y-NAND3X1:A,B,C=1|NAND3X1:Y-INVX1:A=1|111011
* 13 occurrences in design
* each contains 3 cells
* pin map: {'n154': 'A', 'n761': 'B', 'x49': 'C'} {'n763': 'Y'}
* function: A&B&~C
* Example occurence:
*   .subckt INVX1 A=x49 Y=n155
*   .subckt NAND3X1 A=n154 B=n155 C=n761 Y=n762
*   .subckt INVX1 A=n762 Y=n763