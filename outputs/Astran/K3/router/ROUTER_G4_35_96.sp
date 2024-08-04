.SUBCKT ROUTER_G4_35_96 A B C Y VCC GND
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
* pattern code: 4|3|ROUTER_G2_28_104|INVX1=1|INPUT:Y-INVX1:A=1|INPUT:Y-ROUTER_G2_28_104:A,C=2|INVX1:Y-ROUTER_G2_28_104:B=1|11110
* 4 occurrences in design
* each contains 4 cells
* pin map: {'x20': 'A', 'n106': 'B', 'x19': 'C'} {'n166': 'Y'}
* function: A|B|C
* Example occurence:
*   .subckt INVX1 A=x19 Y=n72
*   .subckt ROUTER_G2_28_104 A=x20 B=n72 C=n106 Y=n166
