.SUBCKT ADDER_G3_0_411 A B C Y VCC GND
Mcl157Q7E_0#0 cl157Q7E_0#Y C VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl157Q7E_0#1 cl157Q7E_0#Y C GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl157Q7E_1#cl2JUR2Q_0#0 cl157Q7E_1#cl2JUR2Q_0#Y A VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl157Q7E_1#cl2JUR2Q_0#1 cl157Q7E_1#cl2JUR2Q_0#Y A GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl157Q7E_1#cl2JUR2Q_1#0 VCC cl157Q7E_0#Y cl157Q7E_1#cl2JUR2Q_1#a_2_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl157Q7E_1#cl2JUR2Q_1#1 cl157Q7E_1#cl2JUR2Q_1#a_2_54# B VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl157Q7E_1#cl2JUR2Q_1#2 Y cl157Q7E_1#cl2JUR2Q_0#Y cl157Q7E_1#cl2JUR2Q_1#a_2_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl157Q7E_1#cl2JUR2Q_1#3 cl157Q7E_1#cl2JUR2Q_1#a_12_6# cl157Q7E_0#Y GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl157Q7E_1#cl2JUR2Q_1#4 Y B cl157Q7E_1#cl2JUR2Q_1#a_12_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl157Q7E_1#cl2JUR2Q_1#5 GND cl157Q7E_1#cl2JUR2Q_0#Y Y GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS
* pattern code: 3|3|ADDER_G1_1_439|INVX1=1|INPUT:Y-ADDER_G1_1_439:A,B=1|INPUT:Y-ADDER_G1_1_439:C=1|INPUT:Y-INVX1:A=1|INVX1:Y-ADDER_G1_1_439:A,B=1|01111
* 32 occurrences in design
* each contains 3 cells
* pin map: {'x254': 'A', 'n732': 'B', 'x126': 'C'} {'n734': 'Y'}
* function: A&(C|~B)
* Example occurence:
*   .subckt INVX1 A=x126 Y=n322
*   .subckt ADDER_G1_1_439 A=n322 B=n732 C=x254 Y=n734
