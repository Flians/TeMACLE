.SUBCKT PRIORITY_G2_2_449_450 A B C Y VCC GND
MclEWBYC8_0#0 clEWBYC8_0#Y C VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclEWBYC8_0#1 clEWBYC8_0#Y C GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclEWBYC8_1#cl23YPYG_0#0 clEWBYC8_1#cl23YPYG_0#Y B VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclEWBYC8_1#cl23YPYG_0#1 clEWBYC8_1#cl23YPYG_0#Y B GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclEWBYC8_1#cl23YPYG_1#0 Y clEWBYC8_1#cl23YPYG_0#Y VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclEWBYC8_1#cl23YPYG_1#1 VCC clEWBYC8_0#Y Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclEWBYC8_1#cl23YPYG_1#2 Y A VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclEWBYC8_1#cl23YPYG_1#3 clEWBYC8_1#cl23YPYG_1#a_9_6# clEWBYC8_1#cl23YPYG_0#Y GND GND nmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclEWBYC8_1#cl23YPYG_1#4 clEWBYC8_1#cl23YPYG_1#a_14_6# clEWBYC8_0#Y clEWBYC8_1#cl23YPYG_1#a_9_6# GND nmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclEWBYC8_1#cl23YPYG_1#5 Y A clEWBYC8_1#cl23YPYG_1#a_14_6# GND nmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS
* pattern code: 3|3|NAND3X1|INVX1=2|INPUT:Y-INVX1:A=2|INPUT:Y-NAND3X1:A,B,C=1|INVX1:Y-NAND3X1:A,B,C=2|111110
* 66 occurrences in design
* each contains 3 cells
* pin map: {'n572': 'A', 'x4': 'B', 'x5': 'C'} {'n580': 'Y'}
* function: B|C|~A
* Example occurence:
*   .subckt INVX1 A=x5 Y=n133
*   .subckt INVX1 A=x4 Y=n132
*   .subckt NAND3X1 A=n132 B=n133 C=n572 Y=n580
