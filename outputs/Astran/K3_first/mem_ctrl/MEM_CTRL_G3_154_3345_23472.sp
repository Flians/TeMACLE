.SUBCKT MEM_CTRL_G3_154_3345_23472 C A B Y VCC GND
Mcl2YY3I0_0#0 cl2YY3I0_0#Y B VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl2YY3I0_0#1 cl2YY3I0_0#Y B GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl2YY3I0_1#0 cl2YY3I0_1#a_9_54# C VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl2YY3I0_1#1 Y cl2YY3I0_0#Y cl2YY3I0_1#a_9_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl2YY3I0_1#2 VCC A Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl2YY3I0_1#3 GND C cl2YY3I0_1#a_2_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl2YY3I0_1#4 cl2YY3I0_1#a_2_6# cl2YY3I0_0#Y GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl2YY3I0_1#5 Y A cl2YY3I0_1#a_2_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS
* pattern code: 3|3|NAND2X1|INVX1=1|NAND2X1=1|INPUT:Y-INVX1:A=1|INPUT:Y-NAND2X1:A,B=2|INVX1:Y-NAND2X1:A,B=1|NAND2X1:Y-NAND2X1:A,B=1|111101
* 2520 occurrences in design
* each contains 3 cells
* pin map: {'x332': 'A', 'n1237': 'B', 'x56': 'C'} {'n24819': 'Y'}
* function: ~A|(B&~C)
* Example occurence:
*   .subckt INVX1 A=x56 Y=n1231
*   .subckt NAND2X1 A=n1231 B=n1237 Y=n4742
*   .subckt NAND2X1 A=n4742 B=x332 Y=n24819