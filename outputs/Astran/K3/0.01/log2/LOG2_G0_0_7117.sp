.SUBCKT LOG2_G0_0_7117 A B Y VCC GND
MclWZIP1Y_0#0 clWZIP1Y_0#Y B VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclWZIP1Y_0#1 clWZIP1Y_0#Y B GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclWZIP1Y_1#0 Y clWZIP1Y_0#Y VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclWZIP1Y_1#1 VCC A Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclWZIP1Y_1#2 clWZIP1Y_1#a_9_6# clWZIP1Y_0#Y GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclWZIP1Y_1#3 Y A clWZIP1Y_1#a_9_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS 
* pattern code: 2|2|NAND2X1|INVX1=1|INPUT:Y-INVX1:A=1|INPUT:Y-NAND2X1:A,B=1|INVX1:Y-NAND2X1:A,B=1|1110
* 2821 occurrences in design
* each contains 2 cells
* pin map: {'x2': 'A', 'x5': 'B'} {'n7508': 'Y'}
* function: B|~A
* Example occurence:
*   .subckt INVX1 A=x5 Y=n39
*   .subckt NAND2X1 A=n39 B=x2 Y=n7508
