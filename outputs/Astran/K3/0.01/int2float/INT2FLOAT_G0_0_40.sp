.SUBCKT INT2FLOAT_G0_0_40 A B C Y VCC GND
Mcl3826JV_0#0 cl3826JV_0#Y C VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl3826JV_0#1 cl3826JV_0#Y C GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl3826JV_1#0 Y A VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl3826JV_1#1 VCC cl3826JV_0#Y Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl3826JV_1#2 Y B VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl3826JV_1#3 cl3826JV_1#a_9_6# A GND GND nmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl3826JV_1#4 cl3826JV_1#a_14_6# cl3826JV_0#Y cl3826JV_1#a_9_6# GND nmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl3826JV_1#5 Y B cl3826JV_1#a_14_6# GND nmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS 
* pattern code: 2|3|NAND3X1|INVX1=1|INPUT:Y-INVX1:A=1|INPUT:Y-NAND3X1:A,B,C=2|INVX1:Y-NAND3X1:A,B,C=1|11110
* 56 occurrences in design
* each contains 2 cells
* pin map: {'n21': 'A', 'n26': 'B', 'x9': 'C'} {'n27': 'Y'}
* function: C|~A|~B
* Example occurence:
*   .subckt INVX1 A=x9 Y=n22
*   .subckt NAND3X1 A=n21 B=n22 C=n26 Y=n27
