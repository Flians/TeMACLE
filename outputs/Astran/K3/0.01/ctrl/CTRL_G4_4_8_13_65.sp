.SUBCKT CTRL_G4_4_8_13_65 A B C Y VCC GND
Mcl9X4SU8_0#0 cl9X4SU8_0#Y A VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl9X4SU8_0#1 cl9X4SU8_0#Y A GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl9X4SU8_1#0 cl9X4SU8_1#Y B VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl9X4SU8_1#1 cl9X4SU8_1#Y B GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl9X4SU8_2#0 cl9X4SU8_2#Y C VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl9X4SU8_2#1 cl9X4SU8_2#Y C GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl9X4SU8_3#0 Y cl9X4SU8_2#Y VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl9X4SU8_3#1 VCC cl9X4SU8_1#Y Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl9X4SU8_3#2 Y cl9X4SU8_0#Y VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl9X4SU8_3#3 cl9X4SU8_3#a_9_6# cl9X4SU8_2#Y GND GND nmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl9X4SU8_3#4 cl9X4SU8_3#a_14_6# cl9X4SU8_1#Y cl9X4SU8_3#a_9_6# GND nmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl9X4SU8_3#5 Y cl9X4SU8_0#Y cl9X4SU8_3#a_14_6# GND nmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS 
* pattern code: 4|3|NAND3X1|INVX1=3|INPUT:Y-INVX1:A=3|INVX1:Y-NAND3X1:A,B,C=3|1111110
* 3 occurrences in design
* each contains 4 cells
* pin map: {'n18': 'A', 'x2': 'B', 'x1': 'C'} {'n74': 'Y'}
* function: A|B|C
* Example occurence:
*   .subckt INVX1 A=n18 Y=n19
*   .subckt INVX1 A=x2 Y=n11
*   .subckt INVX1 A=x1 Y=n10
*   .subckt NAND3X1 A=n10 B=n11 C=n19 Y=n74
