.SUBCKT ADDER_G2_0_411 B C A VDD VSS Y
MclQDMEFL_0#M0 clQDMEFL_0#Y C VSS VSS nmos_lvt w=81.0n l=20n nfin=3
MclQDMEFL_0#M1 clQDMEFL_0#Y C VDD VDD pmos_lvt w=81.0n l=20n nfin=3
MclQDMEFL_1#M0 clQDMEFL_1#Y A VSS VSS nmos_lvt w=81.0n l=20n nfin=3
MclQDMEFL_1#M1 clQDMEFL_1#Y A VDD VDD pmos_lvt w=81.0n l=20n nfin=3
MclQDMEFL_2#M4 Y clQDMEFL_1#Y VSS VSS nmos_lvt w=108.00n l=20n nfin=4
MclQDMEFL_2#M3 Y clQDMEFL_0#Y clQDMEFL_2#net29 VSS nmos_lvt w=162.00n l=20n nfin=6
MclQDMEFL_2#M2 clQDMEFL_2#net29 B VSS VSS nmos_lvt w=162.00n l=20n nfin=6
MclQDMEFL_2#M5 clQDMEFL_2#net18 B VDD VDD pmos_lvt w=162.00n l=20n nfin=6
MclQDMEFL_2#M0 Y clQDMEFL_1#Y clQDMEFL_2#net18 VDD pmos_lvt w=162.00n l=20n nfin=6
MclQDMEFL_2#M1 clQDMEFL_2#net18 clQDMEFL_0#Y VDD VDD pmos_lvt w=162.00n l=20n nfin=6
.ENDS
* pattern code: 3|3|ADDER_G1_1_439|INVx1=1|INPUT:Y-ADDER_G1_1_439:A,B=1|INPUT:Y-ADDER_G1_1_439:C=1|INPUT:Y-INVx1:A=1|INVx1:Y-ADDER_G1_1_439:A,B=1|01111
* 32 occurrences in design
* each contains 3 cells
* pin map: {'x254': 'A', 'n732': 'B', 'x126': 'C'} {'n734': 'Y'}
* function: A&(C|~B)
* Example occurence:
*   .subckt INVx1 A=x126 Y=n322
*   .subckt ADDER_G1_1_439 A=n322 B=n732 C=x254 Y=n734
