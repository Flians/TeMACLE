.SUBCKT INT2FLOAT_G4_0_5_54 A B C Y VCC GND
MclPU51KR_0#0 clPU51KR_0#Y B VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclPU51KR_0#1 clPU51KR_0#Y B GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclPU51KR_1#0 clPU51KR_1#Y C VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclPU51KR_1#1 clPU51KR_1#Y C GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclPU51KR_2#0 VCC clPU51KR_1#Y clPU51KR_2#a_2_64# VCC pmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclPU51KR_2#1 clPU51KR_2#a_2_64# clPU51KR_1#Y VCC VCC pmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclPU51KR_2#2 clPU51KR_2#a_25_64# clPU51KR_0#Y clPU51KR_2#a_2_64# VCC pmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclPU51KR_2#3 clPU51KR_2#a_2_64# clPU51KR_0#Y clPU51KR_2#a_25_64# VCC pmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclPU51KR_2#4 Y A clPU51KR_2#a_25_64# VCC pmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclPU51KR_2#5 clPU51KR_2#a_25_64# A Y VCC pmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclPU51KR_2#6 Y clPU51KR_1#Y GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclPU51KR_2#7 GND clPU51KR_0#Y Y GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclPU51KR_2#8 Y A GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS 
* pattern code: 3|3|NOR3X1|INVX1=2|INPUT:Y-INVX1:A=2|INPUT:Y-NOR3X1:A,B,C=1|INVX1:Y-NOR3X1:A,B,C=2|111110
* 9 occurrences in design
* each contains 3 cells
* pin map: {'x9': 'A', 'x10': 'B', 'x8': 'C'} {'n69': 'Y'}
* function: B&C&~A
* Example occurence:
*   .subckt INVX1 A=x10 Y=n23
*   .subckt INVX1 A=x8 Y=n21
*   .subckt NOR3X1 A=n21 B=n23 C=x9 Y=n69
