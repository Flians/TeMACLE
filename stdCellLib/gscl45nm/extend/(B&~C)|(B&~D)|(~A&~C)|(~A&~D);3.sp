.SUBCKT BAR_G3_36_134_135 A B C D Y VCC GND
MclVKKP68_0#0 clVKKP68_0#Y B VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclVKKP68_0#1 clVKKP68_0#Y B GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclVKKP68_1#0 clVKKP68_1#a_2_6# D VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclVKKP68_1#1 VCC C clVKKP68_1#a_2_6# VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclVKKP68_1#2 clVKKP68_1#Y clVKKP68_1#a_2_6# VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclVKKP68_1#3 clVKKP68_1#a_9_6# D clVKKP68_1#a_2_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclVKKP68_1#4 GND C clVKKP68_1#a_9_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclVKKP68_1#5 clVKKP68_1#Y clVKKP68_1#a_2_6# GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclVKKP68_2#0 VCC clVKKP68_0#Y clVKKP68_2#a_2_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclVKKP68_2#1 clVKKP68_2#a_2_54# A VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclVKKP68_2#2 Y clVKKP68_1#Y clVKKP68_2#a_2_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclVKKP68_2#3 clVKKP68_2#a_12_6# clVKKP68_0#Y GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclVKKP68_2#4 Y A clVKKP68_2#a_12_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclVKKP68_2#5 GND clVKKP68_1#Y Y GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS 
* pattern code: 3|4|AOI21X1|AND2X2=1|INVX1=1|AND2X2:Y-AOI21X1:C=1|INPUT:Y-AND2X2:A,B=2|INPUT:Y-AOI21X1:A,B=1|INPUT:Y-INVX1:A=1|INVX1:Y-AOI21X1:A,B=1|1011111
* 60 occurrences in design
* each contains 3 cells
* pin map: {'x37': 'A', 'x128': 'B', 'x129': 'C', 'x34': 'D'} {'n438': 'Y'}
* function: (B&~C)|(B&~D)|(~A&~C)|(~A&~D)
* Example occurence:
*   .subckt INVX1 A=x128 Y=n137
*   .subckt AND2X2 A=x34 B=x129 Y=n437
*   .subckt AOI21X1 A=n137 B=x37 C=n437 Y=n438
