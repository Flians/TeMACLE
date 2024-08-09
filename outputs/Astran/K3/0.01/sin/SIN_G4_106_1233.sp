.SUBCKT SIN_G4_106_1233 A B C Y VCC GND
MclPII9XR_0#0 clPII9XR_0#Y C VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclPII9XR_0#1 clPII9XR_0#Y C GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclPII9XR_1#clA4S7NL_0#0 clPII9XR_1#clA4S7NL_0#Y B VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclPII9XR_1#clA4S7NL_0#1 clPII9XR_1#clA4S7NL_0#Y B GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclPII9XR_1#clA4S7NL_1#0 VCC clPII9XR_1#clA4S7NL_0#Y clPII9XR_1#clA4S7NL_1#a_2_64# VCC pmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclPII9XR_1#clA4S7NL_1#1 clPII9XR_1#clA4S7NL_1#a_2_64# clPII9XR_1#clA4S7NL_0#Y VCC VCC pmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclPII9XR_1#clA4S7NL_1#2 clPII9XR_1#clA4S7NL_1#a_25_64# A clPII9XR_1#clA4S7NL_1#a_2_64# VCC pmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclPII9XR_1#clA4S7NL_1#3 clPII9XR_1#clA4S7NL_1#a_2_64# A clPII9XR_1#clA4S7NL_1#a_25_64# VCC pmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclPII9XR_1#clA4S7NL_1#4 Y clPII9XR_0#Y clPII9XR_1#clA4S7NL_1#a_25_64# VCC pmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclPII9XR_1#clA4S7NL_1#5 clPII9XR_1#clA4S7NL_1#a_25_64# clPII9XR_0#Y Y VCC pmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclPII9XR_1#clA4S7NL_1#6 Y clPII9XR_1#clA4S7NL_0#Y GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclPII9XR_1#clA4S7NL_1#7 GND A Y GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclPII9XR_1#clA4S7NL_1#8 Y clPII9XR_0#Y GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS 
* pattern code: 3|3|SIN_G1_26_55|INVX1=1|INPUT:Y-INVX1:A=1|INPUT:Y-SIN_G1_26_55:A,B=1|INPUT:Y-SIN_G1_26_55:C=1|INVX1:Y-SIN_G1_26_55:A,B=1|11110
* 200 occurrences in design
* each contains 2 cells
* pin map: {'n1792': 'A', 'n485': 'B', 'n180': 'C'} {'n1793': 'Y'}
* function: B&C&~A
* Example occurence:
*   .subckt INVX1 A=n180 Y=n181
*   .subckt SIN_G1_26_55 A=n1792 B=n181 C=n485 Y=n1793
