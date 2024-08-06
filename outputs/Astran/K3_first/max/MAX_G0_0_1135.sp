.SUBCKT MAX_G0_0_1135 B A C Y VCC GND
Mcl2YY3I0_0#0 cl2YY3I0_0#Y C VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl2YY3I0_0#1 cl2YY3I0_0#Y C GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl2YY3I0_1#0 cl2YY3I0_1#a_9_54# B VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl2YY3I0_1#1 Y cl2YY3I0_0#Y cl2YY3I0_1#a_9_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl2YY3I0_1#2 VCC A Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl2YY3I0_1#3 GND B cl2YY3I0_1#a_2_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl2YY3I0_1#4 cl2YY3I0_1#a_2_6# cl2YY3I0_0#Y GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl2YY3I0_1#5 Y A cl2YY3I0_1#a_2_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS
* pattern code: 2|3|OAI21X1|INVX1=1|INPUT:Y-INVX1:A=1|INPUT:Y-OAI21X1:A,B=1|INPUT:Y-OAI21X1:C=1|INVX1:Y-OAI21X1:A,B=1|11110
* 341 occurrences in design
* each contains 2 cells
* pin map: {'n2896': 'A', 'n1668': 'B', 'x504': 'C'} {'n2897': 'Y'}
* function: ~A|(C&~B)
* Example occurence:
*   .subckt INVX1 A=x504 Y=n831
*   .subckt OAI21X1 A=n831 B=n1668 C=n2896 Y=n2897
