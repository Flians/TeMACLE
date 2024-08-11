.SUBCKT SQRT_G4_202_340 B C A Y VCC GND
MclZIKZRE_0#0 clZIKZRE_0#Y C VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclZIKZRE_0#1 clZIKZRE_0#Y C GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclZIKZRE_1#0 clZIKZRE_1#Y A VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclZIKZRE_1#1 clZIKZRE_1#Y A GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclZIKZRE_2#0 clZIKZRE_2#a_9_54# B VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclZIKZRE_2#1 Y clZIKZRE_0#Y clZIKZRE_2#a_9_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclZIKZRE_2#2 VCC clZIKZRE_1#Y Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclZIKZRE_2#3 GND B clZIKZRE_2#a_2_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclZIKZRE_2#4 clZIKZRE_2#a_2_6# clZIKZRE_0#Y GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclZIKZRE_2#5 Y clZIKZRE_1#Y clZIKZRE_2#a_2_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS
* pattern code: 4|3|SQRT_G1_1_67|SQRT_G1_1_67=1|INPUT:Y-SQRT_G1_1_67:A=1|INPUT:Y-SQRT_G1_1_67:B=2|SQRT_G1_1_67:Y-SQRT_G1_1_67:A=1|11101
* 380 occurrences in design
* each contains 4 cells
* pin map: {'n571': 'A', 'n446': 'B', 'n435': 'C'} {'n572': 'Y'}
* function: A|(C&~B)
* Example occurence:
*   .subckt SQRT_G1_1_67 A=n435 B=n446 Y=y57
*   .subckt SQRT_G1_1_67 A=y57 B=n571 Y=n572
