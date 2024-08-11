.SUBCKT VOTER_G4_29_36_37_64 A B C Y VCC GND
MclO9TCTQ_0#0 clO9TCTQ_0#Y C VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclO9TCTQ_0#1 clO9TCTQ_0#Y C GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclO9TCTQ_1#0 VCC A clO9TCTQ_1#a_2_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclO9TCTQ_1#1 clO9TCTQ_1#a_2_54# C VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclO9TCTQ_1#2 clO9TCTQ_1#Y B clO9TCTQ_1#a_2_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclO9TCTQ_1#3 clO9TCTQ_1#a_12_6# A GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclO9TCTQ_1#4 clO9TCTQ_1#Y C clO9TCTQ_1#a_12_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclO9TCTQ_1#5 GND B clO9TCTQ_1#Y GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclO9TCTQ_2#clYEN5V0_0#0 clO9TCTQ_2#clYEN5V0_0#Y A VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclO9TCTQ_2#clYEN5V0_0#1 clO9TCTQ_2#clYEN5V0_0#Y A GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclO9TCTQ_2#clYEN5V0_1#0 VCC clO9TCTQ_2#clYEN5V0_0#Y clO9TCTQ_2#clYEN5V0_1#a_2_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclO9TCTQ_2#clYEN5V0_1#1 clO9TCTQ_2#clYEN5V0_1#a_2_54# clO9TCTQ_0#Y VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclO9TCTQ_2#clYEN5V0_1#2 clO9TCTQ_2#Y clO9TCTQ_1#Y clO9TCTQ_2#clYEN5V0_1#a_2_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclO9TCTQ_2#clYEN5V0_1#3 clO9TCTQ_2#clYEN5V0_1#a_12_6# clO9TCTQ_2#clYEN5V0_0#Y GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclO9TCTQ_2#clYEN5V0_1#4 clO9TCTQ_2#Y clO9TCTQ_0#Y clO9TCTQ_2#clYEN5V0_1#a_12_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclO9TCTQ_2#clYEN5V0_1#5 GND clO9TCTQ_1#Y clO9TCTQ_2#Y GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclO9TCTQ_3#0 Y clO9TCTQ_2#Y VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclO9TCTQ_3#1 Y clO9TCTQ_2#Y GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS 
* pattern code: 5|3|INVX1|AOI21X1=1|INVX1=1|VOTER_G2_2_5=1|AOI21X1:Y-VOTER_G2_2_5:B=1|INPUT:Y-AOI21X1:A,B=2|INPUT:Y-AOI21X1:C=1|INPUT:Y-INVX1:A=1|INPUT:Y-VOTER_G2_2_5:C=1|INVX1:Y-VOTER_G2_2_5:A=1|VOTER_G2_2_5:Y-INVX1:A=1|1122011
* 94 occurrences in design
* each contains 4 cells
* pin map: {'x709': 'A', 'x711': 'B', 'x710': 'C'} {'n6178': 'Y'}
* function: (~A&~B)|(~A&~C)|(~B&~C)
* Example occurence:
*   .subckt INVX1 A=x710 Y=n1239
*   .subckt AOI21X1 A=x709 B=x710 C=x711 Y=n6176
*   .subckt VOTER_G2_2_5 A=n1239 B=n6176 C=x709 Y=n6177
*   .subckt INVX1 A=n6177 Y=n6178
