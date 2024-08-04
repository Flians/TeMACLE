.SUBCKT VOTER_G3_12_80 A B C Y VCC GND
MclSKI4HM_0#0 VCC B clSKI4HM_0#a_2_6# VCC PMOS W=1u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclSKI4HM_0#1 clSKI4HM_0#a_18_54# clSKI4HM_0#a_12_41# VCC VCC PMOS W=1u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclSKI4HM_0#2 clSKI4HM_0#Y clSKI4HM_0#a_2_6# clSKI4HM_0#a_18_54# VCC PMOS W=1u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclSKI4HM_0#3 clSKI4HM_0#a_35_54# B clSKI4HM_0#Y VCC PMOS W=1u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclSKI4HM_0#4 VCC C clSKI4HM_0#a_35_54# VCC PMOS W=1u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclSKI4HM_0#5 clSKI4HM_0#a_12_41# C VCC VCC PMOS W=1u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclSKI4HM_0#6 GND B clSKI4HM_0#a_2_6# GND NMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclSKI4HM_0#7 clSKI4HM_0#a_18_6# clSKI4HM_0#a_12_41# GND GND NMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclSKI4HM_0#8 clSKI4HM_0#Y B clSKI4HM_0#a_18_6# GND NMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclSKI4HM_0#9 clSKI4HM_0#a_35_6# clSKI4HM_0#a_2_6# clSKI4HM_0#Y GND NMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclSKI4HM_0#10 GND C clSKI4HM_0#a_35_6# GND NMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclSKI4HM_0#11 clSKI4HM_0#a_12_41# C GND GND NMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclSKI4HM_1#0 Y clSKI4HM_0#Y VCC VCC PMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclSKI4HM_1#1 VCC A Y VCC PMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclSKI4HM_1#2 clSKI4HM_1#a_9_6# clSKI4HM_0#Y GND GND NMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclSKI4HM_1#3 Y A clSKI4HM_1#a_9_6# GND NMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS
* pattern code: 2|3|NAND2X1|XNOR2X1=1|INPUT:Y-NAND2X1:A,B=1|INPUT:Y-XNOR2X1:A,B=2|XNOR2X1:Y-NAND2X1:A,B=1|11101
* 322 occurrences in design
* each contains 2 cells
* pin map: {'n6416': 'A', 'x721': 'B', 'n6410': 'C'} {'n7054': 'Y'}
* function: ~A|(B&~C)|(C&~B)
* Example occurence:
*   .subckt XNOR2X1 A=n6410 B=x721 Y=n6411
*   .subckt NAND2X1 A=n6416 B=n6411 Y=n7054
