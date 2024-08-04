.SUBCKT MEM_CTRL_G0_154_360 A B Y VCC GND
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
* 7323 occurrences in design
* each contains 2 cells
* pin map: {'n1999': 'A', 'x215': 'B'} {'n2000': 'Y'}
* function: B|~A
* Example occurence:
*   .subckt INVX1 A=x215 Y=n1380
*   .subckt NAND2X1 A=n1380 B=n1999 Y=n2000
