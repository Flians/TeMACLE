.SUBCKT CTRL_G0_1_12_13 A B C Y VCC GND
Mcl45O89Q_0#0 cl45O89Q_0#Y B VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl45O89Q_0#1 cl45O89Q_0#Y B GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl45O89Q_1#0 cl45O89Q_1#Y C VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl45O89Q_1#1 cl45O89Q_1#Y C GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl45O89Q_2#0 Y cl45O89Q_0#Y VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl45O89Q_2#1 VCC cl45O89Q_1#Y Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl45O89Q_2#2 Y A VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl45O89Q_2#3 cl45O89Q_2#a_9_6# cl45O89Q_0#Y GND GND nmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl45O89Q_2#4 cl45O89Q_2#a_14_6# cl45O89Q_1#Y cl45O89Q_2#a_9_6# GND nmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl45O89Q_2#5 Y A cl45O89Q_2#a_14_6# GND nmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS
* pattern code: 3|3|NAND3X1|INVX1=2|INPUT:Y-INVX1:A=2|INPUT:Y-NAND3X1:A,B,C=1|INVX1:Y-NAND3X1:A,B,C=2|111110
* 11 occurrences in design
* each contains 3 cells
* pin map: {'x3': 'A', 'x1': 'B', 'x0': 'C'} {'n26': 'Y'}
* function: B|C|~A
* Example occurence:
*   .subckt INVX1 A=x1 Y=n10
*   .subckt INVX1 A=x0 Y=n9
*   .subckt NAND3X1 A=n9 B=n10 C=x3 Y=n26
