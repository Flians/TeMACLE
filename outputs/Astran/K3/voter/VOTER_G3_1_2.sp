.SUBCKT VOTER_G3_1_2 A B C Y VCC GND
MclWKV071_0#0 clWKV071_0#Y C VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclWKV071_0#1 clWKV071_0#Y C GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclWKV071_1#cl6H3LUI_0#0 clWKV071_1#cl6H3LUI_0#Y B VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclWKV071_1#cl6H3LUI_0#1 clWKV071_1#cl6H3LUI_0#Y B GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclWKV071_1#cl6H3LUI_1#0 VCC clWKV071_1#cl6H3LUI_0#Y clWKV071_1#cl6H3LUI_1#a_2_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclWKV071_1#cl6H3LUI_1#1 clWKV071_1#cl6H3LUI_1#a_2_54# clWKV071_0#Y VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclWKV071_1#cl6H3LUI_1#2 Y A clWKV071_1#cl6H3LUI_1#a_2_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclWKV071_1#cl6H3LUI_1#3 clWKV071_1#cl6H3LUI_1#a_12_6# clWKV071_1#cl6H3LUI_0#Y GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclWKV071_1#cl6H3LUI_1#4 Y clWKV071_0#Y clWKV071_1#cl6H3LUI_1#a_12_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclWKV071_1#cl6H3LUI_1#5 GND A Y GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS 
* pattern code: 3|3|VOTER_G2_2_5|INVX1=1|INPUT:Y-INVX1:A=1|INPUT:Y-VOTER_G2_2_5:B=1|INPUT:Y-VOTER_G2_2_5:C=1|INVX1:Y-VOTER_G2_2_5:A=1|11110
* 349 occurrences in design
* each contains 2 cells
* pin map: {'n6401': 'A', 'x725': 'B', 'x724': 'C'} {'n6402': 'Y'}
* function: ~A&(B|C)
* Example occurence:
*   .subckt INVX1 A=x724 Y=n1244
*   .subckt VOTER_G2_2_5 A=n1244 B=n6401 C=x725 Y=n6402
