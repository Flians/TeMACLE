.SUBCKT MULTIPLIER_G2_6_128 C A B VDD VSS Y
MM3#0 net16 A VSS VSS nmos_lvt w=162.00n l=20n nfin=6
MM2#0 Y1 B net16 VSS nmos_lvt w=162.00n l=20n nfin=6
MM1#0 Y1 B VDD VDD pmos_lvt w=81.0n l=20n nfin=3
MM0#0 Y1 A VDD VDD pmos_lvt w=81.0n l=20n nfin=3
MM4 Y net10 VDD VDD pmos_lvt w=162.00n l=20n nfin=6
MM1 net10 Y1 VDD VDD pmos_lvt w=54.0n l=20n nfin=2
MM0 net10 C VDD VDD pmos_lvt w=54.0n l=20n nfin=2
MM5 Y net10 VSS VSS nmos_lvt w=162.00n l=20n nfin=6
MM3 net20 C VSS VSS nmos_lvt w=81.0n l=20n nfin=3
MM2 net10 Y1 net20 VSS nmos_lvt w=81.0n l=20n nfin=3
.ENDS
* pattern code: 2|3|AOI21x1|INVx1=1|INPUT:Y-AOI21x1:A1,A2=2|INPUT:Y-INVx1:A=1|INVx1:Y-AOI21x1:B=1|01111
* 709 occurrences in design
* each contains 2 cells
* pin map: {'n362': 'A', 'n359': 'B', 'x65': 'C'} {'n381': 'Y'}
* function: C&(~A|~B)
* Example occurence:
*   .subckt INVx1 A=x65 Y=n194
*   .subckt AOI21x1 A1=n362 A2=n359 B=n194 Y=n381
