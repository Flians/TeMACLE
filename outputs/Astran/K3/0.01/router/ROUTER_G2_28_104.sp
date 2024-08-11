.SUBCKT ROUTER_G2_28_104 B A C Y VCC GND
MclEWBYC8_0#0 clEWBYC8_0#Y C VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclEWBYC8_0#1 clEWBYC8_0#Y C GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclEWBYC8_1#cl23YPYG_0#0 clEWBYC8_1#cl23YPYG_0#Y A VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclEWBYC8_1#cl23YPYG_0#1 clEWBYC8_1#cl23YPYG_0#Y A GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclEWBYC8_1#cl23YPYG_1#0 Y clEWBYC8_1#cl23YPYG_0#Y VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclEWBYC8_1#cl23YPYG_1#1 VCC clEWBYC8_0#Y Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclEWBYC8_1#cl23YPYG_1#2 Y B VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclEWBYC8_1#cl23YPYG_1#3 clEWBYC8_1#cl23YPYG_1#a_9_6# clEWBYC8_1#cl23YPYG_0#Y GND GND nmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclEWBYC8_1#cl23YPYG_1#4 clEWBYC8_1#cl23YPYG_1#a_14_6# clEWBYC8_0#Y clEWBYC8_1#cl23YPYG_1#a_9_6# GND nmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclEWBYC8_1#cl23YPYG_1#5 Y B clEWBYC8_1#cl23YPYG_1#a_14_6# GND nmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS
* pattern code: 3|3|ROUTER_G0_28_121|INVX1=1|INPUT:Y-INVX1:A=1|INPUT:Y-ROUTER_G0_28_121:A,B=1|INPUT:Y-ROUTER_G0_28_121:C=1|INVX1:Y-ROUTER_G0_28_121:A,B=1|11110
* 11 occurrences in design
* each contains 3 cells
* pin map: {'x2': 'A', 'n64': 'B', 'x3': 'C'} {'n151': 'Y'}
* function: A|C|~B
* Example occurence:
*   .subckt INVX1 A=x3 Y=n63
*   .subckt ROUTER_G0_28_121 A=n63 B=n64 C=x2 Y=n151
