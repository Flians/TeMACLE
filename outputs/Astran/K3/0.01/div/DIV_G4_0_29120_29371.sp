.SUBCKT DIV_G4_0_29120_29371 A B C Y VCC GND
MclDUY0Q8_0#0 clDUY0Q8_0#Y C VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclDUY0Q8_0#1 clDUY0Q8_0#Y C GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclDUY0Q8_1#0 clDUY0Q8_1#Y clDUY0Q8_0#Y VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclDUY0Q8_1#1 VCC B clDUY0Q8_1#Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclDUY0Q8_1#2 clDUY0Q8_1#a_9_6# clDUY0Q8_0#Y GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclDUY0Q8_1#3 clDUY0Q8_1#Y B clDUY0Q8_1#a_9_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclDUY0Q8_2#0 Y clDUY0Q8_1#Y VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclDUY0Q8_2#1 VCC A Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclDUY0Q8_2#2 clDUY0Q8_2#a_9_6# clDUY0Q8_1#Y GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclDUY0Q8_2#3 Y A clDUY0Q8_2#a_9_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS 
* pattern code: 3|3|NAND2X1|INVX1=1|NAND2X1=1|INPUT:Y-INVX1:A=1|INPUT:Y-NAND2X1:A,B=2|INVX1:Y-NAND2X1:A,B=1|NAND2X1:Y-NAND2X1:A,B=1|111101
* 1344 occurrences in design
* each contains 3 cells
* pin map: {'n29314': 'A', 'n28903': 'B', 'x123': 'C'} {'n29315': 'Y'}
* function: ~A|(B&~C)
* Example occurence:
*   .subckt INVX1 A=x123 Y=n234
*   .subckt NAND2X1 A=n234 B=n28903 Y=n28904
*   .subckt NAND2X1 A=n28904 B=n29314 Y=n29315
