.SUBCKT BAR_G0_0_167 A B C Y VCC GND
MclZJ8MU3_0#0 clZJ8MU3_0#Y C VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclZJ8MU3_0#1 clZJ8MU3_0#Y C GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclZJ8MU3_1#0 VCC clZJ8MU3_0#Y clZJ8MU3_1#a_2_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclZJ8MU3_1#1 clZJ8MU3_1#a_2_54# B VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclZJ8MU3_1#2 Y A clZJ8MU3_1#a_2_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclZJ8MU3_1#3 clZJ8MU3_1#a_12_6# clZJ8MU3_0#Y GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclZJ8MU3_1#4 Y B clZJ8MU3_1#a_12_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclZJ8MU3_1#5 GND A Y GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS 
* pattern code: 2|3|AOI21X1|INVX1=1|INPUT:Y-AOI21X1:A,B=1|INPUT:Y-AOI21X1:C=1|INPUT:Y-INVX1:A=1|INVX1:Y-AOI21X1:A,B=1|INVX1:Y-AOI21X1:C=1|01112
* 74 occurrences in design
* each contains 2 cells
* pin map: {'n470': 'A', 'n535': 'B', 'x133': 'C'} {'n536': 'Y'}
* function: ~A&(C|~B)
* Example occurence:
*   .subckt INVX1 A=x133 Y=n267
*   .subckt AOI21X1 A=n267 B=n535 C=n470 Y=n536
