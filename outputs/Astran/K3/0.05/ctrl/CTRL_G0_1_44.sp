.SUBCKT CTRL_G0_1_44 A B C Y VCC GND
MclN7PBGW_0#0 clN7PBGW_0#Y C VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclN7PBGW_0#1 clN7PBGW_0#Y C GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclN7PBGW_1#0 VCC A clN7PBGW_1#a_2_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclN7PBGW_1#1 clN7PBGW_1#a_2_54# B VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclN7PBGW_1#2 Y clN7PBGW_0#Y clN7PBGW_1#a_2_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclN7PBGW_1#3 clN7PBGW_1#a_12_6# A GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclN7PBGW_1#4 Y B clN7PBGW_1#a_12_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclN7PBGW_1#5 GND clN7PBGW_0#Y Y GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS
* pattern code: 2|3|AOI21X1|INVX1=1|INPUT:Y-AOI21X1:A,B=2|INPUT:Y-INVX1:A=1|INVX1:Y-AOI21X1:C=1|01111
* 9 occurrences in design
* each contains 2 cells
* pin map: {'n50': 'A', 'n52': 'B', 'x1': 'C'} {'y5': 'Y'}
* function: C&(~A|~B)
* Example occurence:
*   .subckt INVX1 A=x1 Y=n10
*   .subckt AOI21X1 A=n50 B=n52 C=n10 Y=y5
