.SUBCKT I2C_G3_94_119 A B C Y VCC GND
MclB0KFDE_0#0 clB0KFDE_0#Y B VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclB0KFDE_0#1 VCC C clB0KFDE_0#Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclB0KFDE_0#2 clB0KFDE_0#a_9_6# B GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclB0KFDE_0#3 clB0KFDE_0#Y C clB0KFDE_0#a_9_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclB0KFDE_1#0 Y A VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclB0KFDE_1#1 VCC clB0KFDE_0#Y Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclB0KFDE_1#2 clB0KFDE_1#a_9_6# A GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclB0KFDE_1#3 Y clB0KFDE_0#Y clB0KFDE_1#a_9_6# GND nmos w=0.5u l=0.05u
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
