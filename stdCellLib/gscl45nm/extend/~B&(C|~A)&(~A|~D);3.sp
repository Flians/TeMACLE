.SUBCKT BAR_G0_0_2023_2028 A B C D Y VCC GND
Mcl4XIL7U_0#0 cl4XIL7U_0#Y D VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl4XIL7U_0#1 cl4XIL7U_0#Y D GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl4XIL7U_1#0 cl4XIL7U_1#Y cl4XIL7U_0#Y VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl4XIL7U_1#1 VCC C cl4XIL7U_1#Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl4XIL7U_1#2 cl4XIL7U_1#a_9_6# cl4XIL7U_0#Y GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl4XIL7U_1#3 cl4XIL7U_1#Y C cl4XIL7U_1#a_9_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl4XIL7U_2#0 VCC cl4XIL7U_1#Y cl4XIL7U_2#a_2_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl4XIL7U_2#1 cl4XIL7U_2#a_2_54# A VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl4XIL7U_2#2 Y B cl4XIL7U_2#a_2_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl4XIL7U_2#3 cl4XIL7U_2#a_12_6# cl4XIL7U_1#Y GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl4XIL7U_2#4 Y A cl4XIL7U_2#a_12_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl4XIL7U_2#5 GND B Y GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS 
* pattern code: 3|4|AOI21X1|INVX1=1|NAND2X1=1|INPUT:Y-AOI21X1:A,B=1|INPUT:Y-AOI21X1:C=1|INPUT:Y-INVX1:A=1|INPUT:Y-NAND2X1:A,B=1|INVX1:Y-NAND2X1:A,B=1|NAND2X1:Y-AOI21X1:A,B=1|0111111
* 94 occurrences in design
* each contains 3 cells
* pin map: {'n2172': 'A', 'n2169': 'B', 'n1844': 'C', 'x133': 'D'} {'n2173': 'Y'}
* function: ~B&(C|~A)&(~A|~D)
* Example occurence:
*   .subckt INVX1 A=x133 Y=n267
*   .subckt NAND2X1 A=n267 B=n1844 Y=n2170
*   .subckt AOI21X1 A=n2170 B=n2172 C=n2169 Y=n2173
