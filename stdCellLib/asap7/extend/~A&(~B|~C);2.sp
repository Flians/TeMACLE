.SUBCKT AOI21x1_ASAP7_75t_L A B C VDD VSS Y
MM4 Y A VSS VSS nmos_lvt w=108.00n l=20n nfin=4
MM3 Y B net29 VSS nmos_lvt w=162.00n l=20n nfin=6
MM2 net29 C VSS VSS nmos_lvt w=162.00n l=20n nfin=6
MM5 net18 C VDD VDD pmos_lvt w=162.00n l=20n nfin=6
MM0 Y A net18 VDD pmos_lvt w=162.00n l=20n nfin=6
MM1 net18 B VDD VDD pmos_lvt w=162.00n l=20n nfin=6
.ENDS
* pattern code: 2|3|NOR2x1|AND2x2=1|AND2x2:Y-NOR2x1:A,B=1|INPUT:Y-AND2x2:A,B=2|INPUT:Y-NOR2x1:A,B=1|11110
* 112 occurrences in design
* each contains 2 cells
* function: ~A&(~B|~C)
* Example occurence:
*   .subckt AND2x2 A=n268 B=n408 Y=n409
*   .subckt NOR2x1 A=n409 B=n554 Y=y0
