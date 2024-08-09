.SUBCKT I2C_G4_15_153_154 A B C Y VCC GND
MclEQENEI_0#0 clEQENEI_0#Y C VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclEQENEI_0#1 clEQENEI_0#Y C GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclEQENEI_1#0 clEQENEI_1#Y clEQENEI_0#Y VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclEQENEI_1#1 VCC A clEQENEI_1#Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclEQENEI_1#2 clEQENEI_1#Y B VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclEQENEI_1#3 clEQENEI_1#a_9_6# clEQENEI_0#Y GND GND nmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclEQENEI_1#4 clEQENEI_1#a_14_6# A clEQENEI_1#a_9_6# GND nmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclEQENEI_1#5 clEQENEI_1#Y B clEQENEI_1#a_14_6# GND nmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclEQENEI_2#0 Y clEQENEI_1#Y VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclEQENEI_2#1 Y clEQENEI_1#Y GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS 
* pattern code: 3|3|INVX1|INVX1=1|NAND3X1=1|INPUT:Y-INVX1:A=1|INPUT:Y-NAND3X1:A,B,C=2|INVX1:Y-NAND3X1:A,B,C=1|NAND3X1:Y-INVX1:A=1|111011
* 57 occurrences in design
* each contains 3 cells
* pin map: {'n212': 'A', 'n327': 'B', 'x3': 'C'} {'y19': 'Y'}
* function: A&B&~C
* Example occurence:
*   .subckt INVX1 A=x3 Y=n150
*   .subckt NAND3X1 A=n150 B=n212 C=n327 Y=n328
*   .subckt INVX1 A=n328 Y=y19
