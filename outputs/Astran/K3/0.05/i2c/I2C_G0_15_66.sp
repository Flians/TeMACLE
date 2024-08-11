.SUBCKT I2C_G0_15_66 A B C Y VCC GND
Mcl80XFAD_0#0 cl80XFAD_0#Y C VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl80XFAD_0#1 cl80XFAD_0#Y C GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl80XFAD_1#0 Y cl80XFAD_0#Y VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl80XFAD_1#1 VCC B Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl80XFAD_1#2 Y A VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl80XFAD_1#3 cl80XFAD_1#a_9_6# cl80XFAD_0#Y GND GND nmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl80XFAD_1#4 cl80XFAD_1#a_14_6# B cl80XFAD_1#a_9_6# GND nmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl80XFAD_1#5 Y A cl80XFAD_1#a_14_6# GND nmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS
* pattern code: 2|3|NAND3X1|INVX1=1|INPUT:Y-INVX1:A=1|INPUT:Y-NAND3X1:A,B,C=2|INVX1:Y-NAND3X1:A,B,C=1|11110
* 334 occurrences in design
* each contains 2 cells
* pin map: {'n267': 'A', 'n220': 'B', 'x3': 'C'} {'y15': 'Y'}
* function: C|~A|~B
* Example occurence:
*   .subckt INVX1 A=x3 Y=n152
*   .subckt NAND3X1 A=n152 B=n220 C=n267 Y=y15
