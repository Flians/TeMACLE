.SUBCKT BAR_G0_0_329_1866 A B C D Y VCC GND
MclMX6J6K_0#0 clMX6J6K_0#Y B VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclMX6J6K_0#1 clMX6J6K_0#Y B GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclMX6J6K_1#0 clMX6J6K_1#a_9_54# D VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclMX6J6K_1#1 clMX6J6K_1#Y C clMX6J6K_1#a_9_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclMX6J6K_1#2 clMX6J6K_1#Y D GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclMX6J6K_1#3 GND C clMX6J6K_1#Y GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclMX6J6K_2#0 VCC clMX6J6K_0#Y clMX6J6K_2#a_2_64# VCC pmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclMX6J6K_2#1 clMX6J6K_2#a_2_64# clMX6J6K_0#Y VCC VCC pmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclMX6J6K_2#2 clMX6J6K_2#a_25_64# A clMX6J6K_2#a_2_64# VCC pmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclMX6J6K_2#3 clMX6J6K_2#a_2_64# A clMX6J6K_2#a_25_64# VCC pmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclMX6J6K_2#4 Y clMX6J6K_1#Y clMX6J6K_2#a_25_64# VCC pmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclMX6J6K_2#5 clMX6J6K_2#a_25_64# clMX6J6K_1#Y Y VCC pmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclMX6J6K_2#6 Y clMX6J6K_0#Y GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclMX6J6K_2#7 GND A Y GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclMX6J6K_2#8 Y clMX6J6K_1#Y GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS 
* pattern code: 3|4|NOR3X1|INVX1=1|NOR2X1=1|INPUT:Y-INVX1:A=1|INPUT:Y-NOR2X1:A,B=2|INPUT:Y-NOR3X1:A,B,C=1|INVX1:Y-NOR3X1:A,B,C=1|NOR2X1:Y-NOR3X1:A,B,C=1|1111110
* 74 occurrences in design
* each contains 3 cells
* pin map: {'n368': 'A', 'x133': 'B', 'n400': 'C', 'n266': 'D'} {'n2008': 'Y'}
* function: B&~A&(C|D)
* Example occurence:
*   .subckt INVX1 A=x133 Y=n267
*   .subckt NOR2X1 A=n266 B=n400 Y=n401
*   .subckt NOR3X1 A=n267 B=n368 C=n401 Y=n2008
