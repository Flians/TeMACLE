.SUBCKT PRIORITY_G0_2_565 A B C Y VCC GND
Mcl2C2KYK_0#0 cl2C2KYK_0#Y C VCC VCC PMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl2C2KYK_0#1 cl2C2KYK_0#Y C GND GND NMOS W=0.25u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl2C2KYK_1#0 Y cl2C2KYK_0#Y VCC VCC PMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl2C2KYK_1#1 VCC A Y VCC PMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl2C2KYK_1#2 Y B VCC VCC PMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl2C2KYK_1#3 cl2C2KYK_1#a_9_6# cl2C2KYK_0#Y GND GND NMOS W=0.75u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl2C2KYK_1#4 cl2C2KYK_1#a_14_6# A cl2C2KYK_1#a_9_6# GND NMOS W=0.75u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl2C2KYK_1#5 Y B cl2C2KYK_1#a_14_6# GND NMOS W=0.75u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS
* pattern code: 2|3|NAND3X1|INVX1=1|INPUT:Y-INVX1:A=1|INPUT:Y-NAND3X1:A,B,C=2|INVX1:Y-NAND3X1:A,B,C=1|11110
* 172 occurrences in design
* each contains 2 cells
* pin map: {'n711': 'A', 'n719': 'B', 'x3': 'C'} {'n720': 'Y'}
* function: C|~A|~B
* Example occurence:
*   .subckt INVX1 A=x3 Y=n132
*   .subckt NAND3X1 A=n132 B=n711 C=n719 Y=n720
