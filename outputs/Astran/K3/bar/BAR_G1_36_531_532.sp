.SUBCKT BAR_G1_36_531_532 A B C Y VCC GND
MclJIPW4I_0#0 clJIPW4I_0#Y C VCC VCC PMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclJIPW4I_0#1 VCC B clJIPW4I_0#Y VCC PMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclJIPW4I_0#2 clJIPW4I_0#a_9_6# C GND GND NMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclJIPW4I_0#3 clJIPW4I_0#Y B clJIPW4I_0#a_9_6# GND NMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclJIPW4I_1#cl25EIRC_0#0 clJIPW4I_1#cl25EIRC_0#Y A VCC VCC PMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclJIPW4I_1#cl25EIRC_0#1 clJIPW4I_1#cl25EIRC_0#Y A GND GND NMOS W=0.25u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclJIPW4I_1#cl25EIRC_1#0 Y clJIPW4I_1#cl25EIRC_0#Y VCC VCC PMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclJIPW4I_1#cl25EIRC_1#1 VCC clJIPW4I_0#Y Y VCC PMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclJIPW4I_1#cl25EIRC_1#2 clJIPW4I_1#cl25EIRC_1#a_9_6# clJIPW4I_1#cl25EIRC_0#Y GND GND NMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclJIPW4I_1#cl25EIRC_1#3 Y clJIPW4I_0#Y clJIPW4I_1#cl25EIRC_1#a_9_6# GND NMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS
* pattern code: 3|3|NAND2X1|INVX1=1|NAND2X1=1|INPUT:Y-INVX1:A=1|INPUT:Y-NAND2X1:A,B=2|INVX1:Y-NAND2X1:A,B=1|NAND2X1:Y-NAND2X1:A,B=1|111101
* 7 occurrences in design
* each contains 3 cells
* pin map: {'x128': 'A', 'x129': 'B', 'x41': 'C'} {'n812': 'Y'}
* function: A|(B&C)
* Example occurence:
*   .subckt INVX1 A=x128 Y=n146
*   .subckt NAND2X1 A=x41 B=x129 Y=n811
*   .subckt NAND2X1 A=n146 B=n811 Y=n812
