.SUBCKT PRIORITY_G3_35_632_633 A B C Y VCC GND
Mcl8HH7ZM_0#0 cl8HH7ZM_0#Y C VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl8HH7ZM_0#1 cl8HH7ZM_0#Y C GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl8HH7ZM_1#0 cl8HH7ZM_1#Y A VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl8HH7ZM_1#1 VCC cl8HH7ZM_0#Y cl8HH7ZM_1#Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl8HH7ZM_1#2 cl8HH7ZM_1#Y B VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl8HH7ZM_1#3 cl8HH7ZM_1#a_9_6# A GND GND nmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl8HH7ZM_1#4 cl8HH7ZM_1#a_14_6# cl8HH7ZM_0#Y cl8HH7ZM_1#a_9_6# GND nmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl8HH7ZM_1#5 cl8HH7ZM_1#Y B cl8HH7ZM_1#a_14_6# GND nmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl8HH7ZM_2#0 Y cl8HH7ZM_1#Y VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl8HH7ZM_2#1 Y cl8HH7ZM_1#Y GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS 
* pattern code: 3|3|INVX1|INVX1=1|NAND3X1=1|INPUT:Y-INVX1:A=1|INPUT:Y-NAND3X1:A,B,C=2|INVX1:Y-NAND3X1:A,B,C=1|NAND3X1:Y-INVX1:A=1|111011
* 14 occurrences in design
* each contains 3 cells
* pin map: {'n154': 'A', 'n761': 'B', 'x49': 'C'} {'n763': 'Y'}
* function: A&B&~C
* Example occurence:
*   .subckt INVX1 A=x49 Y=n155
*   .subckt NAND3X1 A=n154 B=n155 C=n761 Y=n762
*   .subckt INVX1 A=n762 Y=n763
