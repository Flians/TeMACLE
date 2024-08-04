.SUBCKT SQRT_G4_14_44 A B C Y VCC GND
MclANT9JU_0#0 clANT9JU_0#Y C VCC VCC PMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclANT9JU_0#1 clANT9JU_0#Y C GND GND NMOS W=0.25u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclANT9JU_1#0 VCC A clANT9JU_1#a_2_54# VCC PMOS W=1u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclANT9JU_1#1 clANT9JU_1#a_2_54# B VCC VCC PMOS W=1u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclANT9JU_1#2 Y clANT9JU_0#Y clANT9JU_1#a_2_54# VCC PMOS W=1u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclANT9JU_1#3 clANT9JU_1#a_12_6# A GND GND NMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclANT9JU_1#4 Y B clANT9JU_1#a_12_6# GND NMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclANT9JU_1#5 GND clANT9JU_0#Y Y GND NMOS W=0.25u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS
* pattern code: 2|3|AOI21X1|INVX1=1|INPUT:Y-AOI21X1:A,B=2|INPUT:Y-INVX1:A=1|INVX1:Y-AOI21X1:C=1|01111
* 681 occurrences in design
* each contains 2 cells
* pin map: {'n285': 'A', 'n287': 'B', 'x124': 'C'} {'n289': 'Y'}
* function: C&(~A|~B)
* Example occurence:
*   .subckt INVX1 A=x124 Y=n247
*   .subckt AOI21X1 A=n285 B=n287 C=n247 Y=n289
