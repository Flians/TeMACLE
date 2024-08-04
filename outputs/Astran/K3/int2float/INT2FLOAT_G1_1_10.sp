.SUBCKT INT2FLOAT_G1_1_10 A B Y VCC GND
Mcl25EIRC_0#0 cl25EIRC_0#Y B VCC VCC PMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl25EIRC_0#1 cl25EIRC_0#Y B GND GND NMOS W=0.25u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl25EIRC_1#0 Y cl25EIRC_0#Y VCC VCC PMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl25EIRC_1#1 VCC A Y VCC PMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl25EIRC_1#2 cl25EIRC_1#a_9_6# cl25EIRC_0#Y GND GND NMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl25EIRC_1#3 Y A cl25EIRC_1#a_9_6# GND NMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS
* pattern code: 2|2|NAND2X1|INVX1=1|INPUT:Y-INVX1:A=1|INPUT:Y-NAND2X1:A,B=1|INVX1:Y-NAND2X1:A,B=1|1110
* 23 occurrences in design
* each contains 2 cells
* pin map: {'x7': 'A', 'x4': 'B'} {'n36': 'Y'}
* function: B|~A
* Example occurence:
*   .subckt INVX1 A=x4 Y=n17
*   .subckt NAND2X1 A=n17 B=x7 Y=n36
