.SUBCKT ROUTER_G4_35_96 A B C Y VCC GND
Mcl7NKWEQ_0#0 cl7NKWEQ_0#Y A VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl7NKWEQ_0#1 cl7NKWEQ_0#Y A GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl7NKWEQ_1#0 cl7NKWEQ_1#Y B VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl7NKWEQ_1#1 cl7NKWEQ_1#Y B GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl7NKWEQ_2#0 cl7NKWEQ_2#Y C VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl7NKWEQ_2#1 cl7NKWEQ_2#Y C GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl7NKWEQ_3#0 Y cl7NKWEQ_1#Y VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl7NKWEQ_3#1 VCC cl7NKWEQ_0#Y Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl7NKWEQ_3#2 Y cl7NKWEQ_2#Y VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl7NKWEQ_3#3 cl7NKWEQ_3#a_9_6# cl7NKWEQ_1#Y GND GND nmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl7NKWEQ_3#4 cl7NKWEQ_3#a_14_6# cl7NKWEQ_0#Y cl7NKWEQ_3#a_9_6# GND nmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl7NKWEQ_3#5 Y cl7NKWEQ_2#Y cl7NKWEQ_3#a_14_6# GND nmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS
* pattern code: 4|3|ROUTER_G2_28_104|INVX1=1|INPUT:Y-INVX1:A=1|INPUT:Y-ROUTER_G2_28_104:A,C=2|INVX1:Y-ROUTER_G2_28_104:B=1|11110
* 4 occurrences in design
* each contains 4 cells
* pin map: {'x20': 'A', 'n106': 'B', 'x19': 'C'} {'n166': 'Y'}
* function: A|B|C
* Example occurence:
*   .subckt INVX1 A=x19 Y=n72
*   .subckt ROUTER_G2_28_104 A=x20 B=n72 C=n106 Y=n166
