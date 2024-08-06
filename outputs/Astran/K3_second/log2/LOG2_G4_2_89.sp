.SUBCKT LOG2_G4_2_89 A B C Y VCC GND
Mcl7RGX2G_0#0 cl7RGX2G_0#Y C VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl7RGX2G_0#1 cl7RGX2G_0#Y C GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl7RGX2G_1#0 Y cl7RGX2G_0#Y VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl7RGX2G_1#1 VCC B Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl7RGX2G_1#2 Y A VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl7RGX2G_1#3 cl7RGX2G_1#a_9_6# cl7RGX2G_0#Y GND GND nmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl7RGX2G_1#4 cl7RGX2G_1#a_14_6# B cl7RGX2G_1#a_9_6# GND nmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl7RGX2G_1#5 Y A cl7RGX2G_1#a_14_6# GND nmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS
* pattern code: 2|3|NAND3X1|INVX1=1|INPUT:Y-INVX1:A=1|INPUT:Y-NAND3X1:A,B,C=2|INVX1:Y-NAND3X1:A,B,C=1|11110
* 1146 occurrences in design
* each contains 2 cells
* pin map: {'n62': 'A', 'n127': 'B', 'x27': 'C'} {'n299': 'Y'}
* function: C|~A|~B
* Example occurence:
*   .subckt INVX1 A=x27 Y=n61
*   .subckt NAND3X1 A=n61 B=n62 C=n127 Y=n299