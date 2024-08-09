.SUBCKT LOG2_G1_7_10 A B C Y VCC GND
MclD1ZLAP_0#0 clD1ZLAP_0#Y B VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclD1ZLAP_0#1 VCC C clD1ZLAP_0#Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclD1ZLAP_0#2 clD1ZLAP_0#a_9_6# B GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclD1ZLAP_0#3 clD1ZLAP_0#Y C clD1ZLAP_0#a_9_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclD1ZLAP_1#0 Y clD1ZLAP_0#Y VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclD1ZLAP_1#1 VCC A Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclD1ZLAP_1#2 clD1ZLAP_1#a_9_6# clD1ZLAP_0#Y GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclD1ZLAP_1#3 Y A clD1ZLAP_1#a_9_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS 
* pattern code: 2|3|NAND2X1|NAND2X1=1|INPUT:Y-NAND2X1:A,B=3|NAND2X1:Y-NAND2X1:A,B=1|11101
* 1898 occurrences in design
* each contains 2 cells
* pin map: {'n80': 'A', 'n59': 'B', 'x26': 'C'} {'n3709': 'Y'}
* function: ~A|(B&C)
* Example occurence:
*   .subckt NAND2X1 A=n59 B=x26 Y=n94
*   .subckt NAND2X1 A=n94 B=n80 Y=n3709
