.SUBCKT CTRL_G2_1_12_26_48 A B C Y VCC GND
MclFRYUDT_0#0 clFRYUDT_0#Y A VCC VCC PMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclFRYUDT_0#1 clFRYUDT_0#Y A GND GND NMOS W=0.25u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclFRYUDT_1#0 clFRYUDT_1#Y B VCC VCC PMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclFRYUDT_1#1 clFRYUDT_1#Y B GND GND NMOS W=0.25u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclFRYUDT_2#0 clFRYUDT_2#Y C VCC VCC PMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclFRYUDT_2#1 clFRYUDT_2#Y C GND GND NMOS W=0.25u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclFRYUDT_3#0 Y clFRYUDT_2#Y VCC VCC PMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclFRYUDT_3#1 VCC clFRYUDT_1#Y Y VCC PMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclFRYUDT_3#2 Y clFRYUDT_0#Y VCC VCC PMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclFRYUDT_3#3 clFRYUDT_3#a_9_6# clFRYUDT_2#Y GND GND NMOS W=0.75u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclFRYUDT_3#4 clFRYUDT_3#a_14_6# clFRYUDT_1#Y clFRYUDT_3#a_9_6# GND NMOS W=0.75u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclFRYUDT_3#5 Y clFRYUDT_0#Y clFRYUDT_3#a_14_6# GND NMOS W=0.75u L=0.05u
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
