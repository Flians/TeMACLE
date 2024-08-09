.SUBCKT I2C_G3_94_119 A B C Y VCC GND
Mcl1EAN6J_0#0 cl1EAN6J_0#Y B VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl1EAN6J_0#1 VCC C cl1EAN6J_0#Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl1EAN6J_0#2 cl1EAN6J_0#a_9_6# B GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl1EAN6J_0#3 cl1EAN6J_0#Y C cl1EAN6J_0#a_9_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl1EAN6J_1#0 Y A VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl1EAN6J_1#1 VCC cl1EAN6J_0#Y Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl1EAN6J_1#2 cl1EAN6J_1#a_9_6# A GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl1EAN6J_1#3 Y cl1EAN6J_0#Y cl1EAN6J_1#a_9_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS 
* pattern code: 2|3|NAND2X1|NAND2X1=1|INPUT:Y-NAND2X1:A,B=3|NAND2X1:Y-NAND2X1:A,B=1|11101
* 63 occurrences in design
* each contains 2 cells
* pin map: {'n198': 'A', 'x122': 'B', 'x127': 'C'} {'n297': 'Y'}
* function: ~A|(B&C)
* Example occurence:
*   .subckt NAND2X1 A=x122 B=x127 Y=n278
*   .subckt NAND2X1 A=n198 B=n278 Y=n297
