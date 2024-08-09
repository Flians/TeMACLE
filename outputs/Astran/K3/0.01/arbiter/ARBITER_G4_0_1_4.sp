.SUBCKT ARBITER_G4_0_1_4 A B C Y VCC GND
MclS9Z95G_0#0 clS9Z95G_0#Y B VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclS9Z95G_0#1 clS9Z95G_0#Y B GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclS9Z95G_1#0 clS9Z95G_1#Y C VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclS9Z95G_1#1 clS9Z95G_1#Y C GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclS9Z95G_2#0 Y clS9Z95G_0#Y VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclS9Z95G_2#1 VCC clS9Z95G_1#Y Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclS9Z95G_2#2 Y A VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclS9Z95G_2#3 clS9Z95G_2#a_9_6# clS9Z95G_0#Y GND GND nmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclS9Z95G_2#4 clS9Z95G_2#a_14_6# clS9Z95G_1#Y clS9Z95G_2#a_9_6# GND nmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclS9Z95G_2#5 Y A clS9Z95G_2#a_14_6# GND nmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS 
* pattern code: 3|3|NAND3X1|INVX1=2|INPUT:Y-INVX1:A=2|INPUT:Y-NAND3X1:A,B,C=1|INVX1:Y-NAND3X1:A,B,C=2|111110
* 255 occurrences in design
* each contains 3 cells
* pin map: {'n517': 'A', 'x253': 'B', 'x254': 'C'} {'n518': 'Y'}
* function: B|C|~A
* Example occurence:
*   .subckt INVX1 A=x253 Y=n511
*   .subckt INVX1 A=x254 Y=n512
*   .subckt NAND3X1 A=n511 B=n512 C=n517 Y=n518
