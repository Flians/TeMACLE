.SUBCKT PRIORITY_G4_99_355_356 A B Y VCC GND
MclF3KSX7_0#0 clF3KSX7_0#Y B VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclF3KSX7_0#1 clF3KSX7_0#Y B GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclF3KSX7_1#0 clF3KSX7_1#Y clF3KSX7_0#Y VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclF3KSX7_1#1 VCC A clF3KSX7_1#Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclF3KSX7_1#2 clF3KSX7_1#a_9_6# clF3KSX7_0#Y GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclF3KSX7_1#3 clF3KSX7_1#Y A clF3KSX7_1#a_9_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclF3KSX7_2#0 Y clF3KSX7_1#Y VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclF3KSX7_2#1 Y clF3KSX7_1#Y GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS 
* pattern code: 3|2|INVX1|INVX1=1|NAND2X1=1|INPUT:Y-INVX1:A=1|INPUT:Y-NAND2X1:A,B=1|INVX1:Y-NAND2X1:A,B=1|NAND2X1:Y-INVX1:A=1|11011
* 4 occurrences in design
* each contains 3 cells
* pin map: {'n206': 'A', 'x126': 'B'} {'n454': 'Y'}
* function: A&~B
* Example occurence:
*   .subckt INVX1 A=x126 Y=n205
*   .subckt NAND2X1 A=n205 B=n206 Y=n453
*   .subckt INVX1 A=n453 Y=n454
