.SUBCKT I2C_G1_15_17 A B Y VCC GND
MclU7GV70_0#0 clU7GV70_0#Y B VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclU7GV70_0#1 clU7GV70_0#Y B GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclU7GV70_1#0 Y clU7GV70_0#Y VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclU7GV70_1#1 VCC A Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclU7GV70_1#2 clU7GV70_1#a_9_6# clU7GV70_0#Y GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclU7GV70_1#3 Y A clU7GV70_1#a_9_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS 
* pattern code: 2|2|NAND2X1|INVX1=1|INPUT:Y-INVX1:A=1|INPUT:Y-NAND2X1:A,B=1|INVX1:Y-NAND2X1:A,B=1|1110
* 144 occurrences in design
* each contains 2 cells
* pin map: {'n159': 'A', 'x9': 'B'} {'n218': 'Y'}
* function: B|~A
* Example occurence:
*   .subckt INVX1 A=x9 Y=n157
*   .subckt NAND2X1 A=n157 B=n159 Y=n218
