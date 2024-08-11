.SUBCKT ROUTER_G2_28_104 B A C Y VCC GND
Mcl45O89Q_0#0 cl45O89Q_0#Y A VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl45O89Q_0#1 cl45O89Q_0#Y A GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl45O89Q_1#0 cl45O89Q_1#Y C VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl45O89Q_1#1 cl45O89Q_1#Y C GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl45O89Q_2#0 Y cl45O89Q_0#Y VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl45O89Q_2#1 VCC cl45O89Q_1#Y Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl45O89Q_2#2 Y B VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl45O89Q_2#3 cl45O89Q_2#a_9_6# cl45O89Q_0#Y GND GND nmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl45O89Q_2#4 cl45O89Q_2#a_14_6# cl45O89Q_1#Y cl45O89Q_2#a_9_6# GND nmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl45O89Q_2#5 Y B cl45O89Q_2#a_14_6# GND nmos w=0.75u l=0.05u
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
