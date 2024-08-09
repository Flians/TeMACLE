.SUBCKT DEC_G0_15_38 A B Y VCC GND
MclZKEDPP_0#0 clZKEDPP_0#Y B VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclZKEDPP_0#1 clZKEDPP_0#Y B GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclZKEDPP_1#0 clZKEDPP_1#a_9_54# clZKEDPP_0#Y VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclZKEDPP_1#1 Y A clZKEDPP_1#a_9_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclZKEDPP_1#2 Y clZKEDPP_0#Y GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclZKEDPP_1#3 GND A Y GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS 
* pattern code: 2|2|NOR2X1|INVX1=1|INPUT:Y-INVX1:A=1|INPUT:Y-NOR2X1:A,B=1|INVX1:Y-NOR2X1:A,B=1|1110
* 3 occurrences in design
* each contains 2 cells
* pin map: {'n13': 'A', 'x2': 'B'} {'n50': 'Y'}
* function: B&~A
* Example occurence:
*   .subckt INVX1 A=x2 Y=n12
*   .subckt NOR2X1 A=n12 B=n13 Y=n50
