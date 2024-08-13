.subckt COMPLEX1 VCC cl1#B cl1#A cl1#Y cl1#C GND cl0#Y
Mcl0#0 cl0#Y cl1#Y VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl0#1 cl0#Y cl1#Y GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl1#0 VCC cl1#A cl1#a_2_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl1#1 cl1#a_2_54# cl1#B VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl1#2 cl1#Y cl1#C cl1#a_2_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl1#3 cl1#a_12_6# cl1#A GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl1#4 cl1#Y cl1#B cl1#a_12_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl1#5 GND cl1#C cl1#Y GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ends COMPLEX1
* pattern code: [INVX1,AOI21X1]
* 357 occurrences in design 
* each contains 2 cells
* Example occurence:
*   .subckt INVX1 A=n4637 Y=n4638
*   .subckt AOI21X1 A=n1277 B=n1278 C=n4636 Y=n4637