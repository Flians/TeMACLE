.SUBCKT ROUTER_G3_28_87 A B C Y VCC GND
Mcl7J9YQ0_0#0 cl7J9YQ0_0#Y C VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl7J9YQ0_0#1 cl7J9YQ0_0#Y C GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl7J9YQ0_1#0 VCC cl7J9YQ0_0#Y cl7J9YQ0_1#a_2_64# VCC pmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl7J9YQ0_1#1 cl7J9YQ0_1#a_2_64# cl7J9YQ0_0#Y VCC VCC pmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl7J9YQ0_1#2 cl7J9YQ0_1#a_25_64# B cl7J9YQ0_1#a_2_64# VCC pmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl7J9YQ0_1#3 cl7J9YQ0_1#a_2_64# B cl7J9YQ0_1#a_25_64# VCC pmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl7J9YQ0_1#4 Y A cl7J9YQ0_1#a_25_64# VCC pmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl7J9YQ0_1#5 cl7J9YQ0_1#a_25_64# A Y VCC pmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl7J9YQ0_1#6 Y cl7J9YQ0_0#Y GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl7J9YQ0_1#7 GND B Y GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl7J9YQ0_1#8 Y A GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS 
* pattern code: 2|3|NOR3X1|INVX1=1|INPUT:Y-INVX1:A=1|INPUT:Y-NOR3X1:A,B,C=2|INVX1:Y-NOR3X1:A,B,C=1|11110
* 11 occurrences in design
* each contains 2 cells
* pin map: {'n146': 'A', 'n64': 'B', 'x3': 'C'} {'n147': 'Y'}
* function: C&~A&~B
* Example occurence:
*   .subckt INVX1 A=x3 Y=n63
*   .subckt NOR3X1 A=n63 B=n64 C=n146 Y=n147
