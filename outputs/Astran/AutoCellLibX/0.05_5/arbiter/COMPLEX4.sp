.subckt COMPLEX4 GND cl1#A cl2#Y cl2#A cl0#Y VCC cl0#A cl1#Y
Mcl0#0 cl0#a_9_54# cl0#A VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl0#1 cl0#Y cl1#Y cl0#a_9_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl0#2 VCC cl2#Y cl0#Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl0#3 GND cl0#A cl0#a_2_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl0#4 cl0#a_2_6# cl1#Y GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl0#5 cl0#Y cl2#Y cl0#a_2_6# GND nmos w=0.5u l=0.05u
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
* pattern code: [OAI21X1,INVX1,INVX1]
* 45 occurrences in design 
* each contains 3 cells
* Example occurence:
*   .subckt OAI21X1 A=x248 B=n378 C=n380 Y=n525
*   .subckt INVX1 A=x120 Y=n378
*   .subckt INVX1 A=x122 Y=n380
