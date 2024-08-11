.SUBCKT BAR_G0_331_332 A B C D Y VCC GND
MclP9ZN72_0#0 VCC C clP9ZN72_0#a_2_64# VCC pmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclP9ZN72_0#1 clP9ZN72_0#a_2_64# C VCC VCC pmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclP9ZN72_0#2 clP9ZN72_0#a_25_64# D clP9ZN72_0#a_2_64# VCC pmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclP9ZN72_0#3 clP9ZN72_0#a_2_64# D clP9ZN72_0#a_25_64# VCC pmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclP9ZN72_0#4 clP9ZN72_0#Y B clP9ZN72_0#a_25_64# VCC pmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclP9ZN72_0#5 clP9ZN72_0#a_25_64# B clP9ZN72_0#Y VCC pmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclP9ZN72_0#6 clP9ZN72_0#Y C GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclP9ZN72_0#7 GND D clP9ZN72_0#Y GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclP9ZN72_0#8 clP9ZN72_0#Y B GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclP9ZN72_1#0 VCC C clP9ZN72_1#a_2_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclP9ZN72_1#1 clP9ZN72_1#a_2_54# A VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclP9ZN72_1#2 Y clP9ZN72_0#Y clP9ZN72_1#a_2_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclP9ZN72_1#3 clP9ZN72_1#a_12_6# C GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclP9ZN72_1#4 Y A clP9ZN72_1#a_12_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclP9ZN72_1#5 GND clP9ZN72_0#Y Y GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS 
* pattern code: 2|4|AOI21X1|NOR3X1=1|INPUT:Y-AOI21X1:A,B=2|INPUT:Y-NOR3X1:A,B,C=3|NOR3X1:Y-AOI21X1:C=1|011121
* 97 occurrences in design
* each contains 2 cells
* pin map: {'n536': 'A', 'n402': 'B', 'x134': 'C', 'n335': 'D'} {'y0': 'Y'}
* function: (B&~C)|(C&~A)|(D&~C)
* Example occurence:
*   .subckt NOR3X1 A=x134 B=n335 C=n402 Y=n403
*   .subckt AOI21X1 A=x134 B=n536 C=n403 Y=y0
