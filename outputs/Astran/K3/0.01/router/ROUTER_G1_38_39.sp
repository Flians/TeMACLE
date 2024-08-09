.SUBCKT ROUTER_G1_38_39 A B C Y VCC GND
MclJC9XRX_0#0 clJC9XRX_0#Y C VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclJC9XRX_0#1 VCC B clJC9XRX_0#Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclJC9XRX_0#2 clJC9XRX_0#a_9_6# C GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclJC9XRX_0#3 clJC9XRX_0#Y B clJC9XRX_0#a_9_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclJC9XRX_1#0 Y clJC9XRX_0#Y VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclJC9XRX_1#1 VCC A Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclJC9XRX_1#2 clJC9XRX_1#a_9_6# clJC9XRX_0#Y GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclJC9XRX_1#3 Y A clJC9XRX_1#a_9_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS 
* pattern code: 2|3|NAND2X1|NAND2X1=1|INPUT:Y-NAND2X1:A,B=3|NAND2X1:Y-NAND2X1:A,B=1|11101
* 18 occurrences in design
* each contains 2 cells
* pin map: {'x13': 'A', 'n106': 'B', 'n68': 'C'} {'n147': 'Y'}
* function: ~A|(B&C)
* Example occurence:
*   .subckt NAND2X1 A=n68 B=n106 Y=n107
*   .subckt NAND2X1 A=n107 B=x13 Y=n147
