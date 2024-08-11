.SUBCKT DIV_G0_202_203_21066 A B C D Y VCC GND
MclSO2BKS_0#0 clSO2BKS_0#Y C VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclSO2BKS_0#1 VCC D clSO2BKS_0#Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclSO2BKS_0#2 clSO2BKS_0#a_9_6# C GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclSO2BKS_0#3 clSO2BKS_0#Y D clSO2BKS_0#a_9_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclSO2BKS_1#0 clSO2BKS_1#Y B VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclSO2BKS_1#1 VCC clSO2BKS_0#Y clSO2BKS_1#Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclSO2BKS_1#2 clSO2BKS_1#a_9_6# B GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclSO2BKS_1#3 clSO2BKS_1#Y clSO2BKS_0#Y clSO2BKS_1#a_9_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclSO2BKS_2#0 Y clSO2BKS_1#Y VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclSO2BKS_2#1 VCC A Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclSO2BKS_2#2 clSO2BKS_2#a_9_6# clSO2BKS_1#Y GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclSO2BKS_2#3 Y A clSO2BKS_2#a_9_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS 
* pattern code: 3|4|NAND2X1|NAND2X1=2|INPUT:Y-NAND2X1:A,B=4|NAND2X1:Y-NAND2X1:A,B=2|1111011
* 12480 occurrences in design
* each contains 3 cells
* pin map: {'n21203': 'A', 'n188': 'B', 'n184': 'C', 'x64': 'D'} {'n21204': 'Y'}
* function: ~A|(B&~C)|(B&~D)
* Example occurence:
*   .subckt NAND2X1 A=n184 B=x64 Y=n431
*   .subckt NAND2X1 A=n188 B=n431 Y=n432
*   .subckt NAND2X1 A=n432 B=n21203 Y=n21204
