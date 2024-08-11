.SUBCKT BAR_G0_288_289 A B C D Y VCC GND
MclQEVUUY_0#0 clQEVUUY_0#a_9_54# C VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclQEVUUY_0#1 clQEVUUY_0#Y D clQEVUUY_0#a_9_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclQEVUUY_0#2 clQEVUUY_0#Y C GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclQEVUUY_0#3 GND D clQEVUUY_0#Y GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclQEVUUY_1#0 VCC B clQEVUUY_1#a_2_64# VCC pmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclQEVUUY_1#1 clQEVUUY_1#a_2_64# B VCC VCC pmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclQEVUUY_1#2 clQEVUUY_1#a_25_64# A clQEVUUY_1#a_2_64# VCC pmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclQEVUUY_1#3 clQEVUUY_1#a_2_64# A clQEVUUY_1#a_25_64# VCC pmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclQEVUUY_1#4 Y clQEVUUY_0#Y clQEVUUY_1#a_25_64# VCC pmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclQEVUUY_1#5 clQEVUUY_1#a_25_64# clQEVUUY_0#Y Y VCC pmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclQEVUUY_1#6 Y B GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclQEVUUY_1#7 GND A Y GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclQEVUUY_1#8 Y clQEVUUY_0#Y GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS 
* pattern code: 2|4|NOR3X1|NOR2X1=1|INPUT:Y-NOR2X1:A,B=2|INPUT:Y-NOR3X1:A,B,C=2|NOR2X1:Y-NOR3X1:A,B,C=1|111110
* 120 occurrences in design
* each contains 2 cells
* pin map: {'n351': 'A', 'x132': 'B', 'n265': 'C', 'n366': 'D'} {'n368': 'Y'}
* function: ~A&~B&(C|D)
* Example occurence:
*   .subckt NOR2X1 A=n265 B=n366 Y=n367
*   .subckt NOR3X1 A=x132 B=n351 C=n367 Y=n368
