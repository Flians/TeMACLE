.SUBCKT BAR_G1_35_36_37 C A B Y VCC GND
Mcl157Q7E_0#0 cl157Q7E_0#Y B VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl157Q7E_0#1 cl157Q7E_0#Y B GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl157Q7E_1#cl2JUR2Q_0#0 cl157Q7E_1#cl2JUR2Q_0#Y C VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl157Q7E_1#cl2JUR2Q_0#1 cl157Q7E_1#cl2JUR2Q_0#Y C GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl157Q7E_1#cl2JUR2Q_1#0 VCC cl157Q7E_0#Y cl157Q7E_1#cl2JUR2Q_1#a_2_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl157Q7E_1#cl2JUR2Q_1#1 cl157Q7E_1#cl2JUR2Q_1#a_2_54# A VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl157Q7E_1#cl2JUR2Q_1#2 Y cl157Q7E_1#cl2JUR2Q_0#Y cl157Q7E_1#cl2JUR2Q_1#a_2_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl157Q7E_1#cl2JUR2Q_1#3 cl157Q7E_1#cl2JUR2Q_1#a_12_6# cl157Q7E_0#Y GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl157Q7E_1#cl2JUR2Q_1#4 Y A cl157Q7E_1#cl2JUR2Q_1#a_12_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl157Q7E_1#cl2JUR2Q_1#5 GND cl157Q7E_1#cl2JUR2Q_0#Y Y GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS
* pattern code: 3|3|AOI21X1|INVX1=2|INPUT:Y-AOI21X1:A,B=1|INPUT:Y-INVX1:A=2|INVX1:Y-AOI21X1:A,B=1|INVX1:Y-AOI21X1:C=1|011111
* 10 occurrences in design
* each contains 3 cells
* pin map: {'x39': 'A', 'x129': 'B', 'x128': 'C'} {'n279': 'Y'}
* function: C&(B|~A)
* Example occurence:
*   .subckt INVX1 A=x129 Y=n147
*   .subckt INVX1 A=x128 Y=n146
*   .subckt AOI21X1 A=x39 B=n147 C=n146 Y=n279
