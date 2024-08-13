.SUBCKT CTRL_G0_1_57 A B C Y VCC GND
Mcl4PGJDB_0#0 cl4PGJDB_0#Y C VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl4PGJDB_0#1 cl4PGJDB_0#Y C GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl4PGJDB_1#0 VCC cl4PGJDB_0#Y cl4PGJDB_1#a_2_64# VCC pmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl4PGJDB_1#1 cl4PGJDB_1#a_2_64# cl4PGJDB_0#Y VCC VCC pmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl4PGJDB_1#2 cl4PGJDB_1#a_25_64# A cl4PGJDB_1#a_2_64# VCC pmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl4PGJDB_1#3 cl4PGJDB_1#a_2_64# A cl4PGJDB_1#a_25_64# VCC pmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl4PGJDB_1#4 Y B cl4PGJDB_1#a_25_64# VCC pmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl4PGJDB_1#5 cl4PGJDB_1#a_25_64# B Y VCC pmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl4PGJDB_1#6 Y cl4PGJDB_0#Y GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl4PGJDB_1#7 GND A Y GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl4PGJDB_1#8 Y B GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS
* pattern code: 2|3|NOR3X1|INVX1=1|INPUT:Y-INVX1:A=1|INPUT:Y-NOR3X1:A,B,C=2|INVX1:Y-NOR3X1:A,B,C=1|11110
* 11 occurrences in design
* each contains 2 cells
* pin map: {'n65': 'A', 'n66': 'B', 'x1': 'C'} {'y8': 'Y'}
* function: C&~A&~B
* Example occurence:
*   .subckt INVX1 A=x1 Y=n10
*   .subckt NOR3X1 A=n10 B=n65 C=n66 Y=y8
