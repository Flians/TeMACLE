.SUBCKT PRIORITY_G3_35_241_632_633 A B C Y VCC GND
Mcl68A5GW_0#0 cl68A5GW_0#Y B VCC VCC PMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl68A5GW_0#1 cl68A5GW_0#Y B GND GND NMOS W=0.25u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl68A5GW_1#0 cl68A5GW_1#Y C VCC VCC PMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl68A5GW_1#1 cl68A5GW_1#Y C GND GND NMOS W=0.25u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl68A5GW_2#0 cl68A5GW_2#Y cl68A5GW_0#Y VCC VCC PMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl68A5GW_2#1 VCC cl68A5GW_1#Y cl68A5GW_2#Y VCC PMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl68A5GW_2#2 cl68A5GW_2#Y A VCC VCC PMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl68A5GW_2#3 cl68A5GW_2#a_9_6# cl68A5GW_0#Y GND GND NMOS W=0.75u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl68A5GW_2#4 cl68A5GW_2#a_14_6# cl68A5GW_1#Y cl68A5GW_2#a_9_6# GND NMOS W=0.75u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl68A5GW_2#5 cl68A5GW_2#Y A cl68A5GW_2#a_14_6# GND NMOS W=0.75u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl68A5GW_3#0 Y cl68A5GW_2#Y VCC VCC PMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl68A5GW_3#1 Y cl68A5GW_2#Y GND GND NMOS W=0.25u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS
* pattern code: 4|3|INVX1|INVX1=2|NAND3X1=1|INPUT:Y-INVX1:A=2|INPUT:Y-NAND3X1:A,B,C=1|INVX1:Y-NAND3X1:A,B,C=2|NAND3X1:Y-INVX1:A=1|1110111
* 7 occurrences in design
* each contains 4 cells
* pin map: {'n761': 'A', 'x49': 'B', 'x48': 'C'} {'n763': 'Y'}
* function: A&~B&~C
* Example occurence:
*   .subckt INVX1 A=x49 Y=n155
*   .subckt INVX1 A=x48 Y=n154
*   .subckt NAND3X1 A=n154 B=n155 C=n761 Y=n762
*   .subckt INVX1 A=n762 Y=n763
