.SUBCKT ROUTER_G4_40_112 A B C D Y VCC GND
MclM2IOMU_0#0 clM2IOMU_0#Y B VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclM2IOMU_0#1 VCC D clM2IOMU_0#Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclM2IOMU_0#2 clM2IOMU_0#Y C VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclM2IOMU_0#3 clM2IOMU_0#a_9_6# B GND GND nmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclM2IOMU_0#4 clM2IOMU_0#a_14_6# D clM2IOMU_0#a_9_6# GND nmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclM2IOMU_0#5 clM2IOMU_0#Y C clM2IOMU_0#a_14_6# GND nmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclM2IOMU_1#0 Y A VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclM2IOMU_1#1 VCC clM2IOMU_0#Y Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclM2IOMU_1#2 clM2IOMU_1#a_9_6# A GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclM2IOMU_1#3 Y clM2IOMU_0#Y clM2IOMU_1#a_9_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS 
* pattern code: 2|4|NAND2X1|NAND3X1=1|INPUT:Y-NAND2X1:A,B=1|INPUT:Y-NAND3X1:A,B,C=3|NAND3X1:Y-NAND2X1:A,B=1|111101
* 10 occurrences in design
* each contains 2 cells
* pin map: {'n69': 'A', 'n99': 'B', 'x14': 'C', 'x15': 'D'} {'n102': 'Y'}
* function: ~A|(B&C&D)
* Example occurence:
*   .subckt NAND3X1 A=n99 B=x15 C=x14 Y=n101
*   .subckt NAND2X1 A=n69 B=n101 Y=n102
