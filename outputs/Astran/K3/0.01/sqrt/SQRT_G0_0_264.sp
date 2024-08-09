.SUBCKT SQRT_G0_0_264 A B C Y VCC GND
Mcl23YPYG_0#0 cl23YPYG_0#Y C VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl23YPYG_0#1 cl23YPYG_0#Y C GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl23YPYG_1#0 Y cl23YPYG_0#Y VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl23YPYG_1#1 VCC A Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl23YPYG_1#2 Y B VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl23YPYG_1#3 cl23YPYG_1#a_9_6# cl23YPYG_0#Y GND GND nmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl23YPYG_1#4 cl23YPYG_1#a_14_6# A cl23YPYG_1#a_9_6# GND nmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl23YPYG_1#5 Y B cl23YPYG_1#a_14_6# GND nmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS 
* pattern code: 2|3|NAND3X1|INVX1=1|INPUT:Y-INVX1:A=1|INPUT:Y-NAND3X1:A,B,C=2|INVX1:Y-NAND3X1:A,B,C=1|11110
* 1116 occurrences in design
* each contains 2 cells
* pin map: {'n255': 'A', 'n495': 'B', 'x126': 'C'} {'n497': 'Y'}
* function: C|~A|~B
* Example occurence:
*   .subckt INVX1 A=x126 Y=n254
*   .subckt NAND3X1 A=n254 B=n255 C=n495 Y=n497
