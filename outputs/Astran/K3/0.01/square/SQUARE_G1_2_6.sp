.SUBCKT SQUARE_G1_2_6 A B Y VCC GND
MclN0ZRR4_0#0 clN0ZRR4_0#Y B VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclN0ZRR4_0#1 clN0ZRR4_0#Y B GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclN0ZRR4_1#0 Y clN0ZRR4_0#Y VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclN0ZRR4_1#1 VCC A Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclN0ZRR4_1#2 clN0ZRR4_1#a_9_6# clN0ZRR4_0#Y GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclN0ZRR4_1#3 Y A clN0ZRR4_1#a_9_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS 
* pattern code: 2|2|NAND2X1|INVX1=1|INPUT:Y-INVX1:A=1|INPUT:Y-NAND2X1:A,B=1|INVX1:Y-NAND2X1:A,B=1|1110
* 1225 occurrences in design
* each contains 2 cells
* pin map: {'x2': 'A', 'x1': 'B'} {'n132': 'Y'}
* function: B|~A
* Example occurence:
*   .subckt INVX1 A=x1 Y=n67
*   .subckt NAND2X1 A=n67 B=x2 Y=n132
