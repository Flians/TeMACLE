.SUBCKT ADDER_G3_2_399_400_600 A B C Y VCC GND
MclAF82LI_0#0 clAF82LI_0#Y C VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclAF82LI_0#1 clAF82LI_0#Y C GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclAF82LI_1#0 clAF82LI_1#a_9_54# clAF82LI_0#Y VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclAF82LI_1#1 clAF82LI_1#Y A clAF82LI_1#a_9_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclAF82LI_1#2 clAF82LI_1#Y clAF82LI_0#Y GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclAF82LI_1#3 GND A clAF82LI_1#Y GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclAF82LI_2#clG59XTJ_0#0 clAF82LI_2#clG59XTJ_0#Y B VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclAF82LI_2#clG59XTJ_0#1 clAF82LI_2#clG59XTJ_0#Y B GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclAF82LI_2#clG59XTJ_1#0 VCC clAF82LI_0#Y clAF82LI_2#clG59XTJ_1#a_2_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclAF82LI_2#clG59XTJ_1#1 clAF82LI_2#clG59XTJ_1#a_2_54# A VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclAF82LI_2#clG59XTJ_1#2 clAF82LI_2#Y clAF82LI_2#clG59XTJ_0#Y clAF82LI_2#clG59XTJ_1#a_2_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclAF82LI_2#clG59XTJ_1#3 clAF82LI_2#clG59XTJ_1#a_12_6# clAF82LI_0#Y GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclAF82LI_2#clG59XTJ_1#4 clAF82LI_2#Y A clAF82LI_2#clG59XTJ_1#a_12_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclAF82LI_2#clG59XTJ_1#5 GND clAF82LI_2#clG59XTJ_0#Y clAF82LI_2#Y GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclAF82LI_3#0 clAF82LI_3#a_9_54# clAF82LI_1#Y clAF82LI_3#a_2_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclAF82LI_3#1 VCC clAF82LI_2#Y clAF82LI_3#a_9_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclAF82LI_3#2 Y clAF82LI_3#a_2_54# VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclAF82LI_3#3 clAF82LI_3#a_2_54# clAF82LI_1#Y GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclAF82LI_3#4 GND clAF82LI_2#Y clAF82LI_3#a_2_54# GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclAF82LI_3#5 Y clAF82LI_3#a_2_54# GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS
* pattern code: 5|3|OR2X2|ADDER_G1_1_439=1|INVX1=1|NOR2X1=1|ADDER_G1_1_439:Y-OR2X2:A,B=1|INPUT:Y-ADDER_G1_1_439:A,B=1|INPUT:Y-ADDER_G1_1_439:C=1|INPUT:Y-INVX1:A=1|INPUT:Y-NOR2X1:A,B=1|INVX1:Y-ADDER_G1_1_439:A,B=1|INVX1:Y-NOR2X1:A,B=1|NOR2X1:Y-OR2X2:A,B=1|1112210
* 31 occurrences in design
* each contains 5 cells
* pin map: {'n720': 'A', 'x250': 'B', 'x122': 'C'} {'n723': 'Y'}
* function: (B&C)|(B&~A)|(C&~A)
* Example occurence:
*   .subckt INVX1 A=x122 Y=n320
*   .subckt NOR2X1 A=n320 B=n720 Y=n721
*   .subckt ADDER_G1_1_439 A=n320 B=n720 C=x250 Y=n722
*   .subckt OR2X2 A=n721 B=n722 Y=n723
