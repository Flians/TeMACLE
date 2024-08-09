.SUBCKT DEC_G0_1_101 A B Y VCC GND
MclR7V3UO_0#0 clR7V3UO_0#Y B VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclR7V3UO_0#1 clR7V3UO_0#Y B GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclR7V3UO_1#0 clR7V3UO_1#a_9_54# A VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclR7V3UO_1#1 Y clR7V3UO_0#Y clR7V3UO_1#a_9_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclR7V3UO_1#2 Y A GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclR7V3UO_1#3 GND clR7V3UO_0#Y Y GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS 
* pattern code: 2|2|NOR2X1|INVX1=1|INPUT:Y-INVX1:A=1|INPUT:Y-NOR2X1:A,B=1|INVX1:Y-NOR2X1:A,B=1|1110
* 3 occurrences in design
* each contains 2 cells
* pin map: {'n16': 'A', 'x7': 'B'} {'n111': 'Y'}
* function: B&~A
* Example occurence:
*   .subckt INVX1 A=x7 Y=n17
*   .subckt NOR2X1 A=n16 B=n17 Y=n111
