.SUBCKT ADDER_G3_69_70_420 A B C Y VCC GND
MclSKSEJ3_0#0 clSKSEJ3_0#a_9_54# C VCC VCC PMOS W=1u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclSKSEJ3_0#1 clSKSEJ3_0#Y B clSKSEJ3_0#a_9_54# VCC PMOS W=1u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclSKSEJ3_0#2 clSKSEJ3_0#Y C GND GND NMOS W=0.25u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclSKSEJ3_0#3 GND B clSKSEJ3_0#Y GND NMOS W=0.25u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclSKSEJ3_1#clANT9JU_0#0 clSKSEJ3_1#clANT9JU_0#Y A VCC VCC PMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclSKSEJ3_1#clANT9JU_0#1 clSKSEJ3_1#clANT9JU_0#Y A GND GND NMOS W=0.25u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclSKSEJ3_1#clANT9JU_1#0 VCC C clSKSEJ3_1#clANT9JU_1#a_2_54# VCC PMOS W=1u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclSKSEJ3_1#clANT9JU_1#1 clSKSEJ3_1#clANT9JU_1#a_2_54# B VCC VCC PMOS W=1u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclSKSEJ3_1#clANT9JU_1#2 clSKSEJ3_1#Y clSKSEJ3_1#clANT9JU_0#Y clSKSEJ3_1#clANT9JU_1#a_2_54# VCC PMOS W=1u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclSKSEJ3_1#clANT9JU_1#3 clSKSEJ3_1#clANT9JU_1#a_12_6# C GND GND NMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclSKSEJ3_1#clANT9JU_1#4 clSKSEJ3_1#Y B clSKSEJ3_1#clANT9JU_1#a_12_6# GND NMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclSKSEJ3_1#clANT9JU_1#5 GND clSKSEJ3_1#clANT9JU_0#Y clSKSEJ3_1#Y GND NMOS W=0.25u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclSKSEJ3_2#0 clSKSEJ3_2#a_9_54# clSKSEJ3_0#Y clSKSEJ3_2#a_2_54# VCC PMOS W=1u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclSKSEJ3_2#1 VCC clSKSEJ3_1#Y clSKSEJ3_2#a_9_54# VCC PMOS W=1u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclSKSEJ3_2#2 Y clSKSEJ3_2#a_2_54# VCC VCC PMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclSKSEJ3_2#3 clSKSEJ3_2#a_2_54# clSKSEJ3_0#Y GND GND NMOS W=0.25u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclSKSEJ3_2#4 GND clSKSEJ3_1#Y clSKSEJ3_2#a_2_54# GND NMOS W=0.25u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclSKSEJ3_2#5 Y clSKSEJ3_2#a_2_54# GND GND NMOS W=0.25u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS
* pattern code: 4|3|OR2X2|ADDER_G1_1_439=1|NOR2X1=1|ADDER_G1_1_439:Y-OR2X2:A,B=1|INPUT:Y-ADDER_G1_1_439:A,B=2|INPUT:Y-ADDER_G1_1_439:C=1|INPUT:Y-NOR2X1:A,B=2|NOR2X1:Y-OR2X2:A,B=1|112210
* 31 occurrences in design
* each contains 4 cells
* pin map: {'x130': 'A', 'n360': 'B', 'n260': 'C'} {'n363': 'Y'}
* function: (A&~B)|(A&~C)|(~B&~C)
* Example occurence:
*   .subckt NOR2X1 A=n260 B=n360 Y=n361
*   .subckt ADDER_G1_1_439 A=n260 B=n360 C=x130 Y=n362
*   .subckt OR2X2 A=n361 B=n362 Y=n363
