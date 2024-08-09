.SUBCKT SQRT_G3_96_346 A B C Y VCC GND
MclHX2CSO_0#clLC2WYB_0#0 clHX2CSO_0#clLC2WYB_0#Y B VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclHX2CSO_0#clLC2WYB_0#1 clHX2CSO_0#clLC2WYB_0#Y B GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclHX2CSO_0#clLC2WYB_1#0 clHX2CSO_0#Y clHX2CSO_0#clLC2WYB_0#Y VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclHX2CSO_0#clLC2WYB_1#1 VCC C clHX2CSO_0#Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclHX2CSO_0#clLC2WYB_1#2 clHX2CSO_0#clLC2WYB_1#a_9_6# clHX2CSO_0#clLC2WYB_0#Y GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclHX2CSO_0#clLC2WYB_1#3 clHX2CSO_0#Y C clHX2CSO_0#clLC2WYB_1#a_9_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclHX2CSO_1#clLC2WYB_0#0 clHX2CSO_1#clLC2WYB_0#Y A VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclHX2CSO_1#clLC2WYB_0#1 clHX2CSO_1#clLC2WYB_0#Y A GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclHX2CSO_1#clLC2WYB_1#0 Y clHX2CSO_1#clLC2WYB_0#Y VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclHX2CSO_1#clLC2WYB_1#1 VCC clHX2CSO_0#Y Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclHX2CSO_1#clLC2WYB_1#2 clHX2CSO_1#clLC2WYB_1#a_9_6# clHX2CSO_1#clLC2WYB_0#Y GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclHX2CSO_1#clLC2WYB_1#3 Y clHX2CSO_0#Y clHX2CSO_1#clLC2WYB_1#a_9_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS 
* pattern code: 4|3|SQRT_G1_1_67|SQRT_G1_1_67=1|INPUT:Y-SQRT_G1_1_67:A=1|INPUT:Y-SQRT_G1_1_67:B=2|SQRT_G1_1_67:Y-SQRT_G1_1_67:A=1|11101
* 261 occurrences in design
* each contains 2 cells
* pin map: {'n578': 'A', 'n345': 'B', 'n338': 'C'} {'n579': 'Y'}
* function: A|(C&~B)
* Example occurence:
*   .subckt SQRT_G1_1_67 A=n338 B=n345 Y=y59
*   .subckt SQRT_G1_1_67 A=y59 B=n578 Y=n579
