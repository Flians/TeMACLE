.subckt COMPLEX5 cl1#B cl1#A cl0#Y cl1#Y VCC GND
Mcl0#0 cl0#Y cl1#Y VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl0#1 cl0#Y cl1#Y GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl1#0 cl1#a_9_54# cl1#A VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl1#1 cl1#Y cl1#B cl1#a_9_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl1#2 cl1#Y cl1#A GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl1#3 GND cl1#B cl1#Y GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ends COMPLEX5
* pattern code: [INVX1,NOR2X1]
* 60 occurrences in design 
* each contains 2 cells
* Example occurence:
*   .subckt INVX1 A=n755 Y=n756
*   .subckt NOR2X1 A=n139 B=n210 Y=n755
