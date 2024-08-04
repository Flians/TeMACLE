.SUBCKT BAR_G1_35_36_37 C A B Y VCC GND
MclIYFT58_0#0 clIYFT58_0#Y B VCC VCC PMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclIYFT58_0#1 clIYFT58_0#Y B GND GND NMOS W=0.25u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclIYFT58_1#clANT9JU_0#0 clIYFT58_1#clANT9JU_0#Y C VCC VCC PMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclIYFT58_1#clANT9JU_0#1 clIYFT58_1#clANT9JU_0#Y C GND GND NMOS W=0.25u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclIYFT58_1#clANT9JU_1#0 VCC clIYFT58_0#Y clIYFT58_1#clANT9JU_1#a_2_54# VCC PMOS W=1u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclIYFT58_1#clANT9JU_1#1 clIYFT58_1#clANT9JU_1#a_2_54# A VCC VCC PMOS W=1u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclIYFT58_1#clANT9JU_1#2 Y clIYFT58_1#clANT9JU_0#Y clIYFT58_1#clANT9JU_1#a_2_54# VCC PMOS W=1u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclIYFT58_1#clANT9JU_1#3 clIYFT58_1#clANT9JU_1#a_12_6# clIYFT58_0#Y GND GND NMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclIYFT58_1#clANT9JU_1#4 Y A clIYFT58_1#clANT9JU_1#a_12_6# GND NMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclIYFT58_1#clANT9JU_1#5 GND clIYFT58_1#clANT9JU_0#Y Y GND NMOS W=0.25u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS
* pattern code: 3|3|AOI21X1|INVX1=2|INPUT:Y-AOI21X1:A,B=1|INPUT:Y-INVX1:A=2|INVX1:Y-AOI21X1:A,B=1|INVX1:Y-AOI21X1:C=1|011111
* 10 occurrences in design
* each contains 3 cells
* pin map: {'x39': 'A', 'x129': 'B', 'x128': 'C'} {'n279': 'Y'}
* function: C&(B|~A)
* Example occurence:
*   .subckt INVX1 A=x129 Y=n147
*   .subckt INVX1 A=x128 Y=n146
*   .subckt AOI21X1 A=x39 B=n147 C=n146 Y=n279
