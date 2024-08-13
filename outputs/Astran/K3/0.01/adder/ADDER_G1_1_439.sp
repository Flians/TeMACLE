.SUBCKT ADDER_G1_1_439 A B C Y VCC GND
MclQW0D3O_0#0 clQW0D3O_0#Y C VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclQW0D3O_0#1 clQW0D3O_0#Y C GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclQW0D3O_1#0 VCC A clQW0D3O_1#a_2_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclQW0D3O_1#1 clQW0D3O_1#a_2_54# B VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclQW0D3O_1#2 Y clQW0D3O_0#Y clQW0D3O_1#a_2_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclQW0D3O_1#3 clQW0D3O_1#a_12_6# A GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclQW0D3O_1#4 Y B clQW0D3O_1#a_12_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclQW0D3O_1#5 GND clQW0D3O_0#Y Y GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS
* pattern code: 2|3|AOI21X1|INVX1=1|INPUT:Y-AOI21X1:A,B=2|INPUT:Y-INVX1:A=1|INVX1:Y-AOI21X1:C=1|01111
* 63 occurrences in design
* each contains 2 cells
* pin map: {'n759': 'A', 'n760': 'B', 'x125': 'C'} {'n762': 'Y'}
* function: C&(~A|~B)
* Example occurence:
*   .subckt INVX1 A=x125 Y=n321
*   .subckt AOI21X1 A=n759 B=n760 C=n321 Y=n762