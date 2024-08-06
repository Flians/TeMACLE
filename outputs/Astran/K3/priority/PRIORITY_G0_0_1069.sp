.SUBCKT PRIORITY_G0_0_1069 A B Y VCC GND
Mcl82E1CY_0#0 cl82E1CY_0#Y B VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl82E1CY_0#1 cl82E1CY_0#Y B GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl82E1CY_1#0 Y cl82E1CY_0#Y VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl82E1CY_1#1 VCC A Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl82E1CY_1#2 cl82E1CY_1#a_9_6# cl82E1CY_0#Y GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl82E1CY_1#3 Y A cl82E1CY_1#a_9_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS
* pattern code: 2|2|NAND2X1|INVX1=1|INPUT:Y-INVX1:A=1|INPUT:Y-NAND2X1:A,B=1|INVX1:Y-NAND2X1:A,B=1|1110
* 111 occurrences in design
* each contains 2 cells
* pin map: {'n1198': 'A', 'x1': 'B'} {'n1199': 'Y'}
* function: B|~A
* Example occurence:
*   .subckt INVX1 A=x1 Y=n130
*   .subckt NAND2X1 A=n130 B=n1198 Y=n1199
