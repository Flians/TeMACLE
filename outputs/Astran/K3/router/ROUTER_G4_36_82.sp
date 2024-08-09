.SUBCKT ROUTER_G4_36_82 A B C Y VCC GND
Mcl1L4082_0#0 cl1L4082_0#Y C VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl1L4082_0#1 cl1L4082_0#Y C GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl1L4082_1#clCO34LK_0#0 cl1L4082_1#clCO34LK_0#Y cl1L4082_0#Y VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl1L4082_1#clCO34LK_0#1 VCC A cl1L4082_1#clCO34LK_0#Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl1L4082_1#clCO34LK_0#2 cl1L4082_1#clCO34LK_0#a_9_6# cl1L4082_0#Y GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl1L4082_1#clCO34LK_0#3 cl1L4082_1#clCO34LK_0#Y A cl1L4082_1#clCO34LK_0#a_9_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl1L4082_1#clCO34LK_1#0 Y cl1L4082_1#clCO34LK_0#Y VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl1L4082_1#clCO34LK_1#1 VCC B Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl1L4082_1#clCO34LK_1#2 cl1L4082_1#clCO34LK_1#a_9_6# cl1L4082_1#clCO34LK_0#Y GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl1L4082_1#clCO34LK_1#3 Y B cl1L4082_1#clCO34LK_1#a_9_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS 
* pattern code: 3|3|ROUTER_G1_38_39|INVX1=1|INPUT:Y-INVX1:A=1|INPUT:Y-ROUTER_G1_38_39:A=1|INPUT:Y-ROUTER_G1_38_39:B,C=1|INVX1:Y-ROUTER_G1_38_39:B,C=1|11110
* 9 occurrences in design
* each contains 2 cells
* pin map: {'n98': 'A', 'x13': 'B', 'x12': 'C'} {'n134': 'Y'}
* function: ~B|(A&~C)
* Example occurence:
*   .subckt INVX1 A=x12 Y=n68
*   .subckt ROUTER_G1_38_39 A=x13 B=n98 C=n68 Y=n134
