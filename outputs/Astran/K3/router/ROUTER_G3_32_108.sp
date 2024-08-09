.SUBCKT ROUTER_G3_32_108 A B Y VCC GND
MclH7ZQPM_0#0 clH7ZQPM_0#Y B VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclH7ZQPM_0#1 clH7ZQPM_0#Y B GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclH7ZQPM_1#0 Y clH7ZQPM_0#Y VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclH7ZQPM_1#1 VCC A Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclH7ZQPM_1#2 clH7ZQPM_1#a_9_6# clH7ZQPM_0#Y GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclH7ZQPM_1#3 Y A clH7ZQPM_1#a_9_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS 
* pattern code: 2|2|NAND2X1|INVX1=1|INPUT:Y-INVX1:A=1|INPUT:Y-NAND2X1:A,B=1|INVX1:Y-NAND2X1:A,B=1|1110
* 12 occurrences in design
* each contains 2 cells
* pin map: {'n66': 'A', 'x9': 'B'} {'n98': 'Y'}
* function: B|~A
* Example occurence:
*   .subckt INVX1 A=x9 Y=n65
*   .subckt NAND2X1 A=n65 B=n66 Y=n98
