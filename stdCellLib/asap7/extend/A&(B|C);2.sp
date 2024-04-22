.SUBCKT OA21x2_ASAP7_75t_L A B C VDD VSS Y
MM3 Y net25 VDD VDD pmos_lvt w=162.00n l=20n nfin=6
MM2 net25 A VDD VDD pmos_lvt w=81.0n l=20n nfin=3
MM1 net25 C net27 VDD pmos_lvt w=81.0n l=20n nfin=3
MM0 net27 B VDD VDD pmos_lvt w=81.0n l=20n nfin=3
MM7 Y net25 VSS VSS nmos_lvt w=162.00n l=20n nfin=6
MM6 net11 A VSS VSS nmos_lvt w=81.0n l=20n nfin=3
MM5 net25 C net11 VSS nmos_lvt w=81.0n l=20n nfin=3
MM4 net25 B net11 VSS nmos_lvt w=81.0n l=20n nfin=3
.ENDS
* pattern code: 2|3|AND2x2|OR2x2=1|INPUT:Y-AND2x2:A,B=1|INPUT:Y-OR2x2:A,B=2|OR2x2:Y-AND2x2:A,B=1|01111
* 253 occurrences in design
* each contains 2 cells
* function: A&(B|C)
* Example occurence:
*   .subckt OR2x2 A=x1 B=n259 Y=n262
*   .subckt AND2x2 A=n262 B=n264 Y=n265
