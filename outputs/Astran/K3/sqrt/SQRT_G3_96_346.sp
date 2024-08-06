.SUBCKT SQRT_G3_96_346 B A C Y VCC GND
Mcl8S9C77_0#0 cl8S9C77_0#Y A VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl8S9C77_0#1 cl8S9C77_0#Y A GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl8S9C77_1#0 cl8S9C77_1#Y C VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl8S9C77_1#1 cl8S9C77_1#Y C GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl8S9C77_2#0 cl8S9C77_2#a_9_54# B VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl8S9C77_2#1 Y cl8S9C77_1#Y cl8S9C77_2#a_9_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl8S9C77_2#2 VCC cl8S9C77_0#Y Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl8S9C77_2#3 GND B cl8S9C77_2#a_2_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl8S9C77_2#4 cl8S9C77_2#a_2_6# cl8S9C77_1#Y GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl8S9C77_2#5 Y cl8S9C77_0#Y cl8S9C77_2#a_2_6# GND nmos w=0.5u l=0.05u
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
