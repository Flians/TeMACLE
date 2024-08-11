.subckt COMPLEX2 VCC cl0#B cl1#A cl1#Y cl0#C GND cl0#Y
Mcl0#0 VCC cl1#Y cl0#a_2_64# VCC pmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl0#1 cl0#a_2_64# cl1#Y VCC VCC pmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl0#2 cl0#a_25_64# cl0#B cl0#a_2_64# VCC pmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl0#3 cl0#a_2_64# cl0#B cl0#a_25_64# VCC pmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl0#4 cl0#Y cl0#C cl0#a_25_64# VCC pmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl0#5 cl0#a_25_64# cl0#C cl0#Y VCC pmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl0#6 cl0#Y cl1#Y GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl0#7 GND cl0#B cl0#Y GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl0#8 cl0#Y cl0#C GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl1#0 cl1#Y cl1#A VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl1#1 cl1#Y cl1#A GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ends COMPLEX2
* pattern code: [NOR3X1,INVX1]
* 4 occurrences in design 
* each contains 2 cells
* Example occurence:
*   .subckt NOR3X1 A=n17 B=x6 C=x5 Y=n18
*   .subckt INVX1 A=x7 Y=n17
