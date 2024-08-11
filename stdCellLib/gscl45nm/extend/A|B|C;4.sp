.SUBCKT CTRL_G2_1_12_26_48 A B C Y VCC GND
MclTBRF3K_0#0 clTBRF3K_0#Y A VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclTBRF3K_0#1 clTBRF3K_0#Y A GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclTBRF3K_1#0 clTBRF3K_1#Y B VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclTBRF3K_1#1 clTBRF3K_1#Y B GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclTBRF3K_2#0 clTBRF3K_2#Y C VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclTBRF3K_2#1 clTBRF3K_2#Y C GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclTBRF3K_3#0 Y clTBRF3K_1#Y VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclTBRF3K_3#1 VCC clTBRF3K_0#Y Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclTBRF3K_3#2 Y clTBRF3K_2#Y VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclTBRF3K_3#3 clTBRF3K_3#a_9_6# clTBRF3K_1#Y GND GND nmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclTBRF3K_3#4 clTBRF3K_3#a_14_6# clTBRF3K_0#Y clTBRF3K_3#a_9_6# GND nmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclTBRF3K_3#5 Y clTBRF3K_2#Y clTBRF3K_3#a_14_6# GND nmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS 
* pattern code: 4|3|NAND3X1|INVX1=3|INPUT:Y-INVX1:A=3|INVX1:Y-NAND3X1:A,B,C=3|1111110
* 3 occurrences in design
* each contains 4 cells
* pin map: {'x1': 'A', 'x0': 'B', 'n16': 'C'} {'n59': 'Y'}
* function: A|B|C
* Example occurence:
*   .subckt INVX1 A=x1 Y=n10
*   .subckt INVX1 A=x0 Y=n9
*   .subckt INVX1 A=n16 Y=n17
*   .subckt NAND3X1 A=n9 B=n10 C=n17 Y=n59
