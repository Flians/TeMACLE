.SUBCKT ROUTER_G2_28_104 A B C Y VCC GND
MclWJATFP_0#0 clWJATFP_0#Y C VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclWJATFP_0#1 clWJATFP_0#Y C GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclWJATFP_1#clH399CS_0#0 clWJATFP_1#clH399CS_0#Y A VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclWJATFP_1#clH399CS_0#1 clWJATFP_1#clH399CS_0#Y A GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclWJATFP_1#clH399CS_1#0 Y clWJATFP_0#Y VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclWJATFP_1#clH399CS_1#1 VCC clWJATFP_1#clH399CS_0#Y Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclWJATFP_1#clH399CS_1#2 Y B VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclWJATFP_1#clH399CS_1#3 clWJATFP_1#clH399CS_1#a_9_6# clWJATFP_0#Y GND GND nmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclWJATFP_1#clH399CS_1#4 clWJATFP_1#clH399CS_1#a_14_6# clWJATFP_1#clH399CS_0#Y clWJATFP_1#clH399CS_1#a_9_6# GND nmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclWJATFP_1#clH399CS_1#5 Y B clWJATFP_1#clH399CS_1#a_14_6# GND nmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS 
* pattern code: 3|3|ROUTER_G0_28_121|INVX1=1|INPUT:Y-INVX1:A=1|INPUT:Y-ROUTER_G0_28_121:A,B=1|INPUT:Y-ROUTER_G0_28_121:C=1|INVX1:Y-ROUTER_G0_28_121:A,B=1|11110
* 12 occurrences in design
* each contains 2 cells
* pin map: {'x2': 'A', 'n64': 'B', 'x3': 'C'} {'n151': 'Y'}
* function: A|C|~B
* Example occurence:
*   .subckt INVX1 A=x3 Y=n63
*   .subckt ROUTER_G0_28_121 A=n63 B=n64 C=x2 Y=n151
