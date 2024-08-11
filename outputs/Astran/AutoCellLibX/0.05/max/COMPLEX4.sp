.subckt COMPLEX4 VCC cl1#A cl1#Y cl2#A cl2#Y GND cl0#Y cl0#A
Mcl0#0 VCC cl0#A cl0#a_2_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl0#1 cl0#a_2_54# cl1#Y VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl0#2 cl0#Y cl2#Y cl0#a_2_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl0#3 cl0#a_12_6# cl0#A GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl0#4 cl0#Y cl1#Y cl0#a_12_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl0#5 GND cl2#Y cl0#Y GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl1#0 cl1#Y cl1#A VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl1#1 cl1#Y cl1#A GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl2#0 cl2#Y cl2#A VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl2#1 cl2#Y cl2#A GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ends COMPLEX4
* pattern code: [AOI21X1,INVX1,INVX1]
* 34 occurrences in design 
* each contains 3 cells
* Example occurence:
*   .subckt AOI21X1 A=x372 B=n827 C=n828 Y=n1636
*   .subckt INVX1 A=x500 Y=n827
*   .subckt INVX1 A=x501 Y=n828
