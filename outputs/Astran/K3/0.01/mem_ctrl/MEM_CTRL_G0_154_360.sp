.SUBCKT MEM_CTRL_G0_154_360 A B Y VCC GND
MclNONGCF_0#0 clNONGCF_0#Y B VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclNONGCF_0#1 clNONGCF_0#Y B GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclNONGCF_1#0 Y clNONGCF_0#Y VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclNONGCF_1#1 VCC A Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclNONGCF_1#2 clNONGCF_1#a_9_6# clNONGCF_0#Y GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclNONGCF_1#3 Y A clNONGCF_1#a_9_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS 
* pattern code: 2|2|NAND2X1|INVX1=1|INPUT:Y-INVX1:A=1|INPUT:Y-NAND2X1:A,B=1|INVX1:Y-NAND2X1:A,B=1|1110
* 7322 occurrences in design
* each contains 2 cells
* pin map: {'n1999': 'A', 'x215': 'B'} {'n2000': 'Y'}
* function: B|~A
* Example occurence:
*   .subckt INVX1 A=x215 Y=n1380
*   .subckt NAND2X1 A=n1380 B=n1999 Y=n2000
