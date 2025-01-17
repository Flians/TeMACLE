.SUBCKT INT2FLOAT_G1_0_62 A B Y VCC GND
MclGQASQ9_0#0 clGQASQ9_0#Y B VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclGQASQ9_0#1 clGQASQ9_0#Y B GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclGQASQ9_1#0 Y clGQASQ9_0#Y VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclGQASQ9_1#1 VCC A Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclGQASQ9_1#2 clGQASQ9_1#a_9_6# clGQASQ9_0#Y GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclGQASQ9_1#3 Y A clGQASQ9_1#a_9_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS
* pattern code: 2|2|NAND2X1|INVX1=1|INPUT:Y-INVX1:A=1|INPUT:Y-NAND2X1:A,B=1|INVX1:Y-NAND2X1:A,B=1|1110
* 23 occurrences in design
* each contains 2 cells
* pin map: {'n17': 'A', 'x9': 'B'} {'n94': 'Y'}
* function: B|~A
* Example occurence:
*   .subckt INVX1 A=x9 Y=n22
*   .subckt NAND2X1 A=n17 B=n22 Y=n94
