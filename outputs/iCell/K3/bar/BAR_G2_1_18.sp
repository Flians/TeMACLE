.SUBCKT BAR_G2_1_18 C A B VDD VSS Y
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
* 83 occurrences in design
* each contains 2 cells
* pin map: {'n338': 'A', 'n330': 'B', 'x131': 'C'} {'n339': 'Y'}
* function: C&(~A|~B)
* Example occurence:
*   .subckt INVx1 A=x131 Y=n143
*   .subckt AOI21x1 A1=n338 A2=n330 B=n143 Y=n339