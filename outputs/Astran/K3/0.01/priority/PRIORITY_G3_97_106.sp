.SUBCKT PRIORITY_G3_97_106 A B C Y VCC GND
MclWQOQOK_0#0 clWQOQOK_0#Y C VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclWQOQOK_0#1 clWQOQOK_0#Y C GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclWQOQOK_1#clT0A62Y_0#0 clWQOQOK_1#clT0A62Y_0#Y B VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclWQOQOK_1#clT0A62Y_0#1 VCC clWQOQOK_0#Y clWQOQOK_1#clT0A62Y_0#Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclWQOQOK_1#clT0A62Y_0#2 clWQOQOK_1#clT0A62Y_0#a_9_6# B GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclWQOQOK_1#clT0A62Y_0#3 clWQOQOK_1#clT0A62Y_0#Y clWQOQOK_0#Y clWQOQOK_1#clT0A62Y_0#a_9_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclWQOQOK_1#clT0A62Y_1#0 clWQOQOK_1#clT0A62Y_1#a_9_54# clWQOQOK_0#Y VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclWQOQOK_1#clT0A62Y_1#1 Y A clWQOQOK_1#clT0A62Y_1#a_9_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclWQOQOK_1#clT0A62Y_1#2 VCC clWQOQOK_1#clT0A62Y_0#Y Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclWQOQOK_1#clT0A62Y_1#3 GND clWQOQOK_0#Y clWQOQOK_1#clT0A62Y_1#a_2_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclWQOQOK_1#clT0A62Y_1#4 clWQOQOK_1#clT0A62Y_1#a_2_6# A GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclWQOQOK_1#clT0A62Y_1#5 Y clWQOQOK_1#clT0A62Y_0#Y clWQOQOK_1#clT0A62Y_1#a_2_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS
* pattern code: 3|3|PRIORITY_G1_625_626|INVX1=1|INPUT:Y-INVX1:A=1|INPUT:Y-PRIORITY_G1_625_626:A=1|INPUT:Y-PRIORITY_G1_625_626:C=1|INVX1:Y-PRIORITY_G1_625_626:B=1|11110
* 7 occurrences in design
* each contains 3 cells
* pin map: {'n210': 'A', 'n207': 'B', 'x123': 'C'} {'n214': 'Y'}
* function: (B&~C)|(C&~A)
* Example occurence:
*   .subckt INVX1 A=x123 Y=n202
*   .subckt PRIORITY_G1_625_626 A=n210 B=n202 C=n207 Y=n214
