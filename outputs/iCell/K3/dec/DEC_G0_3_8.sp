.SUBCKT DEC_G0_3_8 A B C VDD VSS Y
MM6 Y net61 VDD VDD pmos_lvt w=81.0n l=20n nfin=3
MM5 net61 C VDD VDD pmos_lvt w=81.0n l=20n nfin=3
MM4 net61 B VDD VDD pmos_lvt w=81.0n l=20n nfin=3
MM3 net61 A VDD VDD pmos_lvt w=81.0n l=20n nfin=3
MM7 Y net61 VSS VSS nmos_lvt w=81.0n l=20n nfin=3
MM0 net61 A net72 VSS nmos_lvt w=81.0n l=20n nfin=3
MM1 net72 B net71 VSS nmos_lvt w=81.0n l=20n nfin=3
MM2 net71 C VSS VSS nmos_lvt w=81.0n l=20n nfin=3
.ENDS
* pattern code: 2|3|AND2x2|AND2x2=1|AND2x2:Y-AND2x2:A,B=1|INPUT:Y-AND2x2:A,B=3|01111
* 319 occurrences in design
* each contains 2 cells
* pin map: {'n22': 'A', 'n14': 'B', 'n18': 'C'} {'y0': 'Y'}
* function: A&B&C
* Example occurence:
*   .subckt AND2x2 A=n14 B=n18 Y=n19
*   .subckt AND2x2 A=n19 B=n22 Y=y0
