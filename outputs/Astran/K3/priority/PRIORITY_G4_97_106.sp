.SUBCKT PRIORITY_G4_97_106 A C B Y VCC GND
MclGSSAJW_0#0 clGSSAJW_0#Y B VCC VCC PMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclGSSAJW_0#1 clGSSAJW_0#Y B GND GND NMOS W=0.25u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclGSSAJW_1#0 VCC C clGSSAJW_1#a_2_10# VCC PMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclGSSAJW_1#1 clGSSAJW_1#a_17_50# clGSSAJW_0#Y VCC VCC PMOS W=1u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclGSSAJW_1#2 Y C clGSSAJW_1#a_17_50# VCC PMOS W=1u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclGSSAJW_1#3 clGSSAJW_1#a_30_54# clGSSAJW_1#a_2_10# Y VCC PMOS W=1u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclGSSAJW_1#4 VCC A clGSSAJW_1#a_30_54# VCC PMOS W=1u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclGSSAJW_1#5 GND C clGSSAJW_1#a_2_10# GND NMOS W=0.25u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclGSSAJW_1#6 clGSSAJW_1#a_17_10# clGSSAJW_0#Y GND GND NMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclGSSAJW_1#7 Y clGSSAJW_1#a_2_10# clGSSAJW_1#a_17_10# GND NMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclGSSAJW_1#8 clGSSAJW_1#a_30_10# C Y GND NMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclGSSAJW_1#9 GND A clGSSAJW_1#a_30_10# GND NMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS
* pattern code: 3|3|PRIORITY_G1_625_626|INVX1=1|INPUT:Y-INVX1:A=1|INPUT:Y-PRIORITY_G1_625_626:A=1|INPUT:Y-PRIORITY_G1_625_626:C=1|INVX1:Y-PRIORITY_G1_625_626:B=1|11110
* 6 occurrences in design
* each contains 3 cells
* pin map: {'n210': 'A', 'n207': 'B', 'x123': 'C'} {'n214': 'Y'}
* function: (B&~C)|(C&~A)
* Example occurence:
*   .subckt INVX1 A=x123 Y=n202
*   .subckt PRIORITY_G1_625_626 A=n210 B=n202 C=n207 Y=n214
