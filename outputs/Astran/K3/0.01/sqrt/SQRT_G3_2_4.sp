.SUBCKT SQRT_G3_2_4 A B C Y VCC GND
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
* pattern code: 3|3|SQRT_G0_0_264|INVX1=1|INPUT:Y-INVX1:A=1|INPUT:Y-SQRT_G0_0_264:A,B=1|INPUT:Y-SQRT_G0_0_264:C=1|INVX1:Y-SQRT_G0_0_264:A,B=1|11110
* 697 occurrences in design
* each contains 2 cells
* pin map: {'n251': 'A', 'x125': 'B', 'x126': 'C'} {'n256': 'Y'}
* function: B|C|~A
* Example occurence:
*   .subckt INVX1 A=x126 Y=n252
*   .subckt SQRT_G0_0_264 A=n252 B=n251 C=x125 Y=n256
