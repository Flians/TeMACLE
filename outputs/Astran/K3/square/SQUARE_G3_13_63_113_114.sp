.SUBCKT SQUARE_G3_13_63_113_114 B C A Y VCC GND
Mcl2C2KYK_0#0 cl2C2KYK_0#Y A VCC VCC PMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl2C2KYK_0#1 cl2C2KYK_0#Y A GND GND NMOS W=0.25u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl2C2KYK_1#0 Y cl2C2KYK_0#Y VCC VCC PMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl2C2KYK_1#1 VCC B Y VCC PMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl2C2KYK_1#2 Y C VCC VCC PMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl2C2KYK_1#3 cl2C2KYK_1#a_9_6# cl2C2KYK_0#Y GND GND NMOS W=0.75u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl2C2KYK_1#4 cl2C2KYK_1#a_14_6# B cl2C2KYK_1#a_9_6# GND NMOS W=0.75u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl2C2KYK_1#5 Y C cl2C2KYK_1#a_14_6# GND NMOS W=0.75u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS
* pattern code: 4|3|NAND2X1|INVX1=2|NAND2X1=1|INPUT:Y-INVX1:A=1|INPUT:Y-NAND2X1:A,B=2|INVX1:Y-NAND2X1:A,B=2|NAND2X1:Y-INVX1:A=1|1111101
* 847 occurrences in design
* each contains 4 cells
* pin map: {'n242': 'A', 'x2': 'B', 'x3': 'C'} {'n244': 'Y'}
* function: A|~B|~C
* Example occurence:
*   .subckt NAND2X1 A=x2 B=x3 Y=n142
*   .subckt INVX1 A=n142 Y=n143
*   .subckt INVX1 A=n242 Y=n243
*   .subckt NAND2X1 A=n143 B=n243 Y=n244
