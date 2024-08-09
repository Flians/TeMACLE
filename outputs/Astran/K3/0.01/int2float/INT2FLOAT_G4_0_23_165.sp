.SUBCKT INT2FLOAT_G4_0_23_165 A B C Y VCC GND
MclC9SDAI_0#0 clC9SDAI_0#Y B VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclC9SDAI_0#1 clC9SDAI_0#Y B GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclC9SDAI_1#0 clC9SDAI_1#Y C VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclC9SDAI_1#1 clC9SDAI_1#Y C GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclC9SDAI_2#0 Y clC9SDAI_1#Y VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclC9SDAI_2#1 VCC clC9SDAI_0#Y Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclC9SDAI_2#2 Y A VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclC9SDAI_2#3 clC9SDAI_2#a_9_6# clC9SDAI_1#Y GND GND nmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclC9SDAI_2#4 clC9SDAI_2#a_14_6# clC9SDAI_0#Y clC9SDAI_2#a_9_6# GND nmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclC9SDAI_2#5 Y A clC9SDAI_2#a_14_6# GND nmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS 
* pattern code: 3|3|NAND3X1|INVX1=2|INPUT:Y-INVX1:A=2|INPUT:Y-NAND3X1:A,B,C=1|INVX1:Y-NAND3X1:A,B,C=2|111110
* 13 occurrences in design
* each contains 3 cells
* pin map: {'n177': 'A', 'x10': 'B', 'x9': 'C'} {'y5': 'Y'}
* function: B|C|~A
* Example occurence:
*   .subckt INVX1 A=x10 Y=n23
*   .subckt INVX1 A=x9 Y=n22
*   .subckt NAND3X1 A=n22 B=n23 C=n177 Y=y5
