.SUBCKT BAR_G0_3_339 B A C Y VCC GND
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
* 326 occurrences in design
* each contains 2 cells
* pin map: {'n262': 'A', 'n246': 'B', 'x129': 'C'} {'n642': 'Y'}
* function: ~A|(C&~B)
* Example occurence:
*   .subckt INVX1 A=x129 Y=n263
*   .subckt OAI21X1 A=n246 B=n263 C=n262 Y=n642
