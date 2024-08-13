.SUBCKT SQRT_G3_1_166 C A B Y VCC GND
Mcl61107H_0#0 cl61107H_0#Y B VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl61107H_0#1 cl61107H_0#Y B GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl61107H_1#clG59XTJ_0#0 cl61107H_1#clG59XTJ_0#Y C VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl61107H_1#clG59XTJ_0#1 cl61107H_1#clG59XTJ_0#Y C GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl61107H_1#clG59XTJ_1#0 VCC cl61107H_0#Y cl61107H_1#clG59XTJ_1#a_2_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl61107H_1#clG59XTJ_1#1 cl61107H_1#clG59XTJ_1#a_2_54# A VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl61107H_1#clG59XTJ_1#2 Y cl61107H_1#clG59XTJ_0#Y cl61107H_1#clG59XTJ_1#a_2_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl61107H_1#clG59XTJ_1#3 cl61107H_1#clG59XTJ_1#a_12_6# cl61107H_0#Y GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl61107H_1#clG59XTJ_1#4 Y A cl61107H_1#clG59XTJ_1#a_12_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl61107H_1#clG59XTJ_1#5 GND cl61107H_1#clG59XTJ_0#Y Y GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS
* pattern code: 3|3|SQRT_G2_1_62|INVX1=1|INPUT:Y-INVX1:A=1|INPUT:Y-SQRT_G2_1_62:A=1|INPUT:Y-SQRT_G2_1_62:C=1|INVX1:Y-SQRT_G2_1_62:B=1|11110
* 607 occurrences in design
* each contains 3 cells
* pin map: {'n377': 'A', 'n371': 'B', 'n254': 'C'} {'n378': 'Y'}
* function: C&(B|~A)
* Example occurence:
*   .subckt INVX1 A=n254 Y=y63
*   .subckt SQRT_G2_1_62 A=n377 B=y63 C=n371 Y=n378
