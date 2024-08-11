.SUBCKT BAR_G2_36_41 A B C D Y VCC GND
Mcl5JISDN_0#0 cl5JISDN_0#Y D VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl5JISDN_0#1 cl5JISDN_0#Y D GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl5JISDN_1#clA82T5C_0#0 VCC A cl5JISDN_1#clA82T5C_0#a_2_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl5JISDN_1#clA82T5C_0#1 cl5JISDN_1#clA82T5C_0#a_2_54# B VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl5JISDN_1#clA82T5C_0#2 cl5JISDN_1#clA82T5C_0#Y cl5JISDN_0#Y cl5JISDN_1#clA82T5C_0#a_2_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl5JISDN_1#clA82T5C_0#3 cl5JISDN_1#clA82T5C_0#a_12_6# A GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl5JISDN_1#clA82T5C_0#4 cl5JISDN_1#clA82T5C_0#Y B cl5JISDN_1#clA82T5C_0#a_12_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl5JISDN_1#clA82T5C_0#5 GND cl5JISDN_0#Y cl5JISDN_1#clA82T5C_0#Y GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl5JISDN_1#clA82T5C_1#0 cl5JISDN_1#clA82T5C_1#a_9_54# cl5JISDN_1#clA82T5C_0#Y cl5JISDN_1#clA82T5C_1#a_2_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl5JISDN_1#clA82T5C_1#1 VCC C cl5JISDN_1#clA82T5C_1#a_9_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl5JISDN_1#clA82T5C_1#2 Y cl5JISDN_1#clA82T5C_1#a_2_54# VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl5JISDN_1#clA82T5C_1#3 cl5JISDN_1#clA82T5C_1#a_2_54# cl5JISDN_1#clA82T5C_0#Y GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl5JISDN_1#clA82T5C_1#4 GND C cl5JISDN_1#clA82T5C_1#a_2_54# GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl5JISDN_1#clA82T5C_1#5 Y cl5JISDN_1#clA82T5C_1#a_2_54# GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS 
* pattern code: 3|4|BAR_G1_138_752|INVX1=1|INPUT:Y-BAR_G1_138_752:A=1|INPUT:Y-BAR_G1_138_752:B,C=2|INPUT:Y-INVX1:A=1|INVX1:Y-BAR_G1_138_752:D=1|011111
* 72 occurrences in design
* each contains 2 cells
* pin map: {'n138': 'A', 'x39': 'B', 'n266': 'C', 'x128': 'D'} {'n267': 'Y'}
* function: C|(D&~A)|(D&~B)
* Example occurence:
*   .subckt INVX1 A=x128 Y=n137
*   .subckt BAR_G1_138_752 A=n266 B=n138 C=x39 D=n137 Y=n267
