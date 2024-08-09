.SUBCKT SQRT_G1_1_67 A B Y VCC GND
MclL5V7II_0#0 clL5V7II_0#Y B VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclL5V7II_0#1 clL5V7II_0#Y B GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclL5V7II_1#0 Y clL5V7II_0#Y VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclL5V7II_1#1 VCC A Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclL5V7II_1#2 clL5V7II_1#a_9_6# clL5V7II_0#Y GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclL5V7II_1#3 Y A clL5V7II_1#a_9_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS 
* pattern code: 2|2|NAND2X1|INVX1=1|INPUT:Y-INVX1:A=1|INPUT:Y-NAND2X1:A,B=1|INVX1:Y-NAND2X1:A,B=1|1110
* 844 occurrences in design
* each contains 2 cells
* pin map: {'n317': 'A', 'n256': 'B'} {'n318': 'Y'}
* function: B|~A
* Example occurence:
*   .subckt INVX1 A=n256 Y=y63
*   .subckt NAND2X1 A=y63 B=n317 Y=n318
