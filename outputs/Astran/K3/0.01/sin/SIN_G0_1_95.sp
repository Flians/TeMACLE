.SUBCKT SIN_G0_1_95 A B Y VCC GND
Mcl6VJAVY_0#0 cl6VJAVY_0#Y B VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl6VJAVY_0#1 cl6VJAVY_0#Y B GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl6VJAVY_1#0 Y cl6VJAVY_0#Y VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl6VJAVY_1#1 VCC A Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl6VJAVY_1#2 cl6VJAVY_1#a_9_6# cl6VJAVY_0#Y GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl6VJAVY_1#3 Y A cl6VJAVY_1#a_9_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS 
* pattern code: 2|2|NAND2X1|INVX1=1|INPUT:Y-INVX1:A=1|INPUT:Y-NAND2X1:A,B=1|INVX1:Y-NAND2X1:A,B=1|1110
* 451 occurrences in design
* each contains 2 cells
* pin map: {'n42': 'A', 'x19': 'B'} {'n71': 'Y'}
* function: B|~A
* Example occurence:
*   .subckt INVX1 A=x19 Y=n39
*   .subckt NAND2X1 A=n39 B=n42 Y=n71
