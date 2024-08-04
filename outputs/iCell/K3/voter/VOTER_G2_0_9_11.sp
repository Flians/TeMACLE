.SUBCKT VOTER_G2_0_9_11 B C A VDD VSS Y
MclTNWA0E_0#M0 clTNWA0E_0#Y A VSS VSS nmos_lvt w=81.0n l=20n nfin=3
MclTNWA0E_0#M1 clTNWA0E_0#Y A VDD VDD pmos_lvt w=81.0n l=20n nfin=3
MclTNWA0E_1#M3 Y clTNWA0E_1#net25 VDD VDD pmos_lvt w=162.00n l=20n nfin=6
MclTNWA0E_1#M2 clTNWA0E_1#net25 clTNWA0E_0#Y VDD VDD pmos_lvt w=81.0n l=20n nfin=3
MclTNWA0E_1#M1 clTNWA0E_1#net25 C clTNWA0E_1#net27 VDD pmos_lvt w=81.0n l=20n nfin=3
MclTNWA0E_1#M0 clTNWA0E_1#net27 B VDD VDD pmos_lvt w=81.0n l=20n nfin=3
MclTNWA0E_1#M7 Y clTNWA0E_1#net25 VSS VSS nmos_lvt w=162.00n l=20n nfin=6
MclTNWA0E_1#M6 clTNWA0E_1#net11 clTNWA0E_0#Y VSS VSS nmos_lvt w=81.0n l=20n nfin=3
MclTNWA0E_1#M5 clTNWA0E_1#net25 C clTNWA0E_1#net11 VSS nmos_lvt w=81.0n l=20n nfin=3
MclTNWA0E_1#M4 clTNWA0E_1#net25 B clTNWA0E_1#net11 VSS nmos_lvt w=81.0n l=20n nfin=3
.ENDS
* pattern code: 3|3|AOI21x1|INVx1=2|INPUT:Y-AOI21x1:B=1|INPUT:Y-INVx1:A=2|INVx1:Y-AOI21x1:A1,A2=2|011111
* 282 occurrences in design
* each contains 3 cells
* pin map: {'n6337': 'A', 'x470': 'B', 'x469': 'C'} {'n6338': 'Y'}
* function: ~A&(B|C)
* Example occurence:
*   .subckt INVx1 A=x470 Y=n1232
*   .subckt INVx1 A=x469 Y=n1231
*   .subckt AOI21x1 A1=n1231 A2=n1232 B=n6337 Y=n6338
