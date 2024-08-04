.SUBCKT ROUTER_G4_28_59_114 A C B Y VCC GND
MclAJEO2K_0#0 clAJEO2K_0#Y C VCC VCC PMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclAJEO2K_0#1 clAJEO2K_0#Y C GND GND NMOS W=0.25u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclAJEO2K_1#0 clAJEO2K_1#Y B VCC VCC PMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclAJEO2K_1#1 clAJEO2K_1#Y B GND GND NMOS W=0.25u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclAJEO2K_2#0 clAJEO2K_2#a_9_54# A VCC VCC PMOS W=1u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclAJEO2K_2#1 Y clAJEO2K_0#Y clAJEO2K_2#a_9_54# VCC PMOS W=1u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclAJEO2K_2#2 VCC clAJEO2K_1#Y Y VCC PMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclAJEO2K_2#3 GND A clAJEO2K_2#a_2_6# GND NMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclAJEO2K_2#4 clAJEO2K_2#a_2_6# clAJEO2K_0#Y GND GND NMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclAJEO2K_2#5 Y clAJEO2K_1#Y clAJEO2K_2#a_2_6# GND NMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS
* pattern code: 3|3|OAI21X1|INVX1=2|INPUT:Y-INVX1:A=2|INPUT:Y-OAI21X1:A,B=1|INVX1:Y-OAI21X1:A,B=1|INVX1:Y-OAI21X1:C=1|111110
* 5 occurrences in design
* each contains 3 cells
* pin map: {'n104': 'A', 'x17': 'B', 'x18': 'C'} {'n163': 'Y'}
* function: B|(C&~A)
* Example occurence:
*   .subckt INVX1 A=x18 Y=n71
*   .subckt INVX1 A=x17 Y=n70
*   .subckt OAI21X1 A=n71 B=n104 C=n70 Y=n163
