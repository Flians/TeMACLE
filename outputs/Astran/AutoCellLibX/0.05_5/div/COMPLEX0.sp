.subckt COMPLEX0 cl1#A cl1#B cl0#Y cl1#Y VCC GND
Mcl0#0 cl0#Y cl1#Y VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl0#1 cl0#Y cl1#Y GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl1#0 VCC cl1#A cl1#a_2_6# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl1#1 cl1#a_18_54# cl1#a_12_41# VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl1#2 cl1#Y cl1#a_2_6# cl1#a_18_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl1#3 cl1#a_35_54# cl1#A cl1#Y VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl1#4 VCC cl1#B cl1#a_35_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl1#5 cl1#a_12_41# cl1#B VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl1#6 GND cl1#A cl1#a_2_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl1#7 cl1#a_18_6# cl1#a_12_41# GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl1#8 cl1#Y cl1#A cl1#a_18_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl1#9 cl1#a_35_6# cl1#a_2_6# cl1#Y GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl1#10 GND cl1#B cl1#a_35_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl1#11 cl1#a_12_41# cl1#B GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ends COMPLEX0
* pattern code: [INVX1,XNOR2X1]
* 951 occurrences in design 
* each contains 2 cells
* Example occurence:
*   .subckt INVX1 A=n600 Y=n601
*   .subckt XNOR2X1 A=n599 B=x69 Y=n600
