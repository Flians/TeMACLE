.SUBCKT SQRT_G3_96_346 B C A Y VCC GND
MclAJEO2K_0#0 clAJEO2K_0#Y C VCC VCC PMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclAJEO2K_0#1 clAJEO2K_0#Y C GND GND NMOS W=0.25u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclAJEO2K_1#0 clAJEO2K_1#Y A VCC VCC PMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclAJEO2K_1#1 clAJEO2K_1#Y A GND GND NMOS W=0.25u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclAJEO2K_2#0 clAJEO2K_2#a_9_54# B VCC VCC PMOS W=1u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclAJEO2K_2#1 Y clAJEO2K_0#Y clAJEO2K_2#a_9_54# VCC PMOS W=1u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclAJEO2K_2#2 VCC clAJEO2K_1#Y Y VCC PMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclAJEO2K_2#3 GND B clAJEO2K_2#a_2_6# GND NMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclAJEO2K_2#4 clAJEO2K_2#a_2_6# clAJEO2K_0#Y GND GND NMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclAJEO2K_2#5 Y clAJEO2K_1#Y clAJEO2K_2#a_2_6# GND NMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS
* pattern code: 4|3|SQRT_G1_1_67|SQRT_G1_1_67=1|INPUT:Y-SQRT_G1_1_67:A=1|INPUT:Y-SQRT_G1_1_67:B=2|SQRT_G1_1_67:Y-SQRT_G1_1_67:A=1|11101
* 261 occurrences in design
* each contains 4 cells
* pin map: {'n578': 'A', 'n345': 'B', 'n338': 'C'} {'n579': 'Y'}
* function: A|(C&~B)
* Example occurence:
*   .subckt SQRT_G1_1_67 A=n338 B=n345 Y=y59
*   .subckt SQRT_G1_1_67 A=y59 B=n578 Y=n579
