.SUBCKT BAR_G1_35_36_371 A B C Y VCC GND
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
* 14 occurrences in design
* each contains 3 cells
* pin map: {'x1': 'A', 'x129': 'B', 'x128': 'C'} {'n353': 'Y'}
* function: B|C|~A
* Example occurence:
*   .subckt INVX1 A=x129 Y=n147
*   .subckt INVX1 A=x128 Y=n146
*   .subckt NAND3X1 A=n146 B=n147 C=x1 Y=n353
