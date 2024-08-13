.SUBCKT ROUTER_G2_28_104 B A C Y VCC GND
MclLHC1UZ_0#0 clLHC1UZ_0#a_9_54# A VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclLHC1UZ_0#1 clLHC1UZ_0#Y C clLHC1UZ_0#a_9_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclLHC1UZ_0#2 clLHC1UZ_0#Y A GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclLHC1UZ_0#3 GND C clLHC1UZ_0#Y GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclLHC1UZ_1#0 Y B VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclLHC1UZ_1#1 VCC clLHC1UZ_0#Y Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclLHC1UZ_1#2 clLHC1UZ_1#a_9_6# B GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclLHC1UZ_1#3 Y clLHC1UZ_0#Y clLHC1UZ_1#a_9_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS
* pattern code: 3|3|ROUTER_G0_28_121|INVX1=1|INPUT:Y-INVX1:A=1|INPUT:Y-ROUTER_G0_28_121:A,B=1|INPUT:Y-ROUTER_G0_28_121:C=1|INVX1:Y-ROUTER_G0_28_121:A,B=1|11110
* 12 occurrences in design
* each contains 3 cells
* pin map: {'x2': 'A', 'n64': 'B', 'x3': 'C'} {'n151': 'Y'}
* function: A|C|~B
* Example occurence:
*   .subckt INVX1 A=x3 Y=n63
*   .subckt ROUTER_G0_28_121 A=n63 B=n64 C=x2 Y=n151
