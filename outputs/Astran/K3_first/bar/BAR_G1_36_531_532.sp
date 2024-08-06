.SUBCKT BAR_G1_36_531_532 A B C Y VCC GND
MclEYXF8U_0#0 clEYXF8U_0#Y A VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclEYXF8U_0#1 clEYXF8U_0#Y A GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclEYXF8U_1#0 clEYXF8U_1#Y C VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclEYXF8U_1#1 VCC B clEYXF8U_1#Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclEYXF8U_1#2 clEYXF8U_1#a_9_6# C GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclEYXF8U_1#3 clEYXF8U_1#Y B clEYXF8U_1#a_9_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclEYXF8U_2#0 Y clEYXF8U_0#Y VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclEYXF8U_2#1 VCC clEYXF8U_1#Y Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclEYXF8U_2#2 clEYXF8U_2#a_9_6# clEYXF8U_0#Y GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclEYXF8U_2#3 Y clEYXF8U_1#Y clEYXF8U_2#a_9_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS 
* pattern code: 3|3|NAND2X1|INVX1=1|NAND2X1=1|INPUT:Y-INVX1:A=1|INPUT:Y-NAND2X1:A,B=2|INVX1:Y-NAND2X1:A,B=1|NAND2X1:Y-NAND2X1:A,B=1|111101
* 7 occurrences in design
* each contains 3 cells
* pin map: {'x128': 'A', 'x129': 'B', 'x41': 'C'} {'n812': 'Y'}
* function: A|(B&C)
* Example occurence:
*   .subckt INVX1 A=x128 Y=n146
*   .subckt NAND2X1 A=x41 B=x129 Y=n811
*   .subckt NAND2X1 A=n146 B=n811 Y=n812