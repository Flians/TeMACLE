.SUBCKT ADDER_G3_0_410 A B Y VCC GND
Mcl3XJSC9_0#0 cl3XJSC9_0#Y B VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl3XJSC9_0#1 cl3XJSC9_0#Y B GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl3XJSC9_1#0 cl3XJSC9_1#a_9_54# cl3XJSC9_0#Y VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl3XJSC9_1#1 Y A cl3XJSC9_1#a_9_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl3XJSC9_1#2 Y cl3XJSC9_0#Y GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl3XJSC9_1#3 GND A Y GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS
* pattern code: 2|2|NOR2X1|INVX1=1|INPUT:Y-INVX1:A=1|INPUT:Y-NOR2X1:A,B=1|INVX1:Y-NOR2X1:A,B=1|1110
* 32 occurrences in design
* each contains 2 cells
* pin map: {'n732': 'A', 'x126': 'B'} {'n733': 'Y'}
* function: B&~A
* Example occurence:
*   .subckt INVX1 A=x126 Y=n322
*   .subckt NOR2X1 A=n322 B=n732 Y=n733
