.SUBCKT ADDER_G0_454_455 A B C Y VCC GND
Mcl7AM7QI_0#0 VCC C cl7AM7QI_0#a_2_6# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl7AM7QI_0#1 cl7AM7QI_0#a_18_54# cl7AM7QI_0#a_12_41# VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl7AM7QI_0#2 cl7AM7QI_0#Y cl7AM7QI_0#a_2_6# cl7AM7QI_0#a_18_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl7AM7QI_0#3 cl7AM7QI_0#a_35_54# C cl7AM7QI_0#Y VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl7AM7QI_0#4 VCC B cl7AM7QI_0#a_35_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl7AM7QI_0#5 cl7AM7QI_0#a_12_41# B VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl7AM7QI_0#6 GND C cl7AM7QI_0#a_2_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl7AM7QI_0#7 cl7AM7QI_0#a_18_6# cl7AM7QI_0#a_12_41# GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl7AM7QI_0#8 cl7AM7QI_0#Y C cl7AM7QI_0#a_18_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl7AM7QI_0#9 cl7AM7QI_0#a_35_6# cl7AM7QI_0#a_2_6# cl7AM7QI_0#Y GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl7AM7QI_0#10 GND B cl7AM7QI_0#a_35_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl7AM7QI_0#11 cl7AM7QI_0#a_12_41# B GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl7AM7QI_1#0 VCC cl7AM7QI_0#Y cl7AM7QI_1#a_2_6# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl7AM7QI_1#1 cl7AM7QI_1#a_18_54# cl7AM7QI_1#a_12_41# VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl7AM7QI_1#2 Y cl7AM7QI_1#a_2_6# cl7AM7QI_1#a_18_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl7AM7QI_1#3 cl7AM7QI_1#a_35_54# cl7AM7QI_0#Y Y VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl7AM7QI_1#4 VCC A cl7AM7QI_1#a_35_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl7AM7QI_1#5 cl7AM7QI_1#a_12_41# A VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl7AM7QI_1#6 GND cl7AM7QI_0#Y cl7AM7QI_1#a_2_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl7AM7QI_1#7 cl7AM7QI_1#a_18_6# cl7AM7QI_1#a_12_41# GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl7AM7QI_1#8 Y cl7AM7QI_0#Y cl7AM7QI_1#a_18_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl7AM7QI_1#9 cl7AM7QI_1#a_35_6# cl7AM7QI_1#a_2_6# Y GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl7AM7QI_1#10 GND A cl7AM7QI_1#a_35_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl7AM7QI_1#11 cl7AM7QI_1#a_12_41# A GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS 
* pattern code: 2|3|XNOR2X1|XNOR2X1=1|INPUT:Y-XNOR2X1:A,B=3|XNOR2X1:Y-XNOR2X1:A,B=1|11101
* 125 occurrences in design
* each contains 2 cells
* pin map: {'x2': 'A', 'n392': 'B', 'n324': 'C'} {'y3': 'Y'}
* function: (A&B&C)|(A&~B&~C)|(B&~A&~C)|(C&~A&~B)
* Example occurence:
*   .subckt XNOR2X1 A=n324 B=n392 Y=n775
*   .subckt XNOR2X1 A=n775 B=x2 Y=y3
