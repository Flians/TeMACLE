.SUBCKT INT2FLOAT_G3_0_3 A B C Y VCC GND
Mcl0NUD0E_0#0 cl0NUD0E_0#Y C VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl0NUD0E_0#1 cl0NUD0E_0#Y C GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl0NUD0E_1#0 cl0NUD0E_1#a_9_54# cl0NUD0E_0#Y VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl0NUD0E_1#1 Y A cl0NUD0E_1#a_9_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl0NUD0E_1#2 VCC B Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl0NUD0E_1#3 GND cl0NUD0E_0#Y cl0NUD0E_1#a_2_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl0NUD0E_1#4 cl0NUD0E_1#a_2_6# A GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl0NUD0E_1#5 Y B cl0NUD0E_1#a_2_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS 
* pattern code: 2|3|OAI21X1|INVX1=1|INPUT:Y-INVX1:A=1|INPUT:Y-OAI21X1:A,B=1|INPUT:Y-OAI21X1:C=1|INVX1:Y-OAI21X1:A,B=1|11110
* 15 occurrences in design
* each contains 2 cells
* pin map: {'n23': 'A', 'n19': 'B', 'x7': 'C'} {'n24': 'Y'}
* function: ~B|(C&~A)
* Example occurence:
*   .subckt INVX1 A=x7 Y=n20
*   .subckt OAI21X1 A=n20 B=n23 C=n19 Y=n24
