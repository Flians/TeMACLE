.SUBCKT DEC_G1_0_1_3 A B C Y VCC GND
MclANIMR7_0#0 clANIMR7_0#Y B VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclANIMR7_0#1 clANIMR7_0#Y B GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclANIMR7_1#0 clANIMR7_1#Y C VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclANIMR7_1#1 clANIMR7_1#Y C GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclANIMR7_2#0 Y clANIMR7_0#Y VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclANIMR7_2#1 VCC clANIMR7_1#Y Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclANIMR7_2#2 Y A VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclANIMR7_2#3 clANIMR7_2#a_9_6# clANIMR7_0#Y GND GND nmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclANIMR7_2#4 clANIMR7_2#a_14_6# clANIMR7_1#Y clANIMR7_2#a_9_6# GND nmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclANIMR7_2#5 Y A clANIMR7_2#a_14_6# GND nmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS 
* pattern code: 3|3|NAND3X1|INVX1=2|INPUT:Y-INVX1:A=2|INPUT:Y-NAND3X1:A,B,C=1|INVX1:Y-NAND3X1:A,B,C=2|111110
* 6 occurrences in design
* each contains 3 cells
* pin map: {'n14': 'A', 'x4': 'B', 'x5': 'C'} {'n15': 'Y'}
* function: B|C|~A
* Example occurence:
*   .subckt INVX1 A=x4 Y=n12
*   .subckt INVX1 A=x5 Y=n13
*   .subckt NAND3X1 A=n12 B=n13 C=n14 Y=n15
