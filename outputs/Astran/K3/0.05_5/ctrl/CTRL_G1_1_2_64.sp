.SUBCKT CTRL_G1_1_2_64 B A C Y VCC GND
Mcl61107H_0#0 cl61107H_0#Y C VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl61107H_0#1 cl61107H_0#Y C GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl61107H_1#clG59XTJ_0#0 cl61107H_1#clG59XTJ_0#Y B VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl61107H_1#clG59XTJ_0#1 cl61107H_1#clG59XTJ_0#Y B GND GND nmos w=0.25u l=0.05u
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
* pattern code: 3|3|AOI21X1|INVX1=2|INPUT:Y-AOI21X1:A,B=1|INPUT:Y-INVX1:A=2|INVX1:Y-AOI21X1:A,B=1|INVX1:Y-AOI21X1:C=1|011111
* 4 occurrences in design
* each contains 3 cells
* pin map: {'n60': 'A', 'x1': 'B', 'x3': 'C'} {'n73': 'Y'}
* function: B&(C|~A)
* Example occurence:
*   .subckt INVX1 A=x1 Y=n10
*   .subckt INVX1 A=x3 Y=n12
*   .subckt AOI21X1 A=n12 B=n60 C=n10 Y=n73
