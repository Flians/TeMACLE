.SUBCKT BAR_G0_0_1758 A B C Y VCC GND
Mcl0TIQAZ_0#0 cl0TIQAZ_0#Y C VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl0TIQAZ_0#1 cl0TIQAZ_0#Y C GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl0TIQAZ_1#0 cl0TIQAZ_1#a_9_54# A VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl0TIQAZ_1#1 Y B cl0TIQAZ_1#a_9_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl0TIQAZ_1#2 VCC cl0TIQAZ_0#Y Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl0TIQAZ_1#3 GND A cl0TIQAZ_1#a_2_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl0TIQAZ_1#4 cl0TIQAZ_1#a_2_6# B GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl0TIQAZ_1#5 Y cl0TIQAZ_0#Y cl0TIQAZ_1#a_2_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS
* pattern code: 2|3|OAI21X1|INVX1=1|INPUT:Y-INVX1:A=1|INPUT:Y-OAI21X1:A,B=2|INVX1:Y-OAI21X1:C=1|11110
* 115 occurrences in design
* each contains 2 cells
* pin map: {'n1537': 'A', 'n1538': 'B', 'x133': 'C'} {'n1905': 'Y'}
* function: C|(~A&~B)
* Example occurence:
*   .subckt INVX1 A=x133 Y=n267
*   .subckt OAI21X1 A=n1537 B=n1538 C=n267 Y=n1905
