.SUBCKT BAR_G4_1_3_238 A B C VDD VSS Y
MM3#0 net16 B VSS VSS nmos_lvt w=162.00n l=20n nfin=6
MM2#0 Y1 C net16 VSS nmos_lvt w=162.00n l=20n nfin=6
MM1#0 Y1 C VDD VDD pmos_lvt w=81.0n l=20n nfin=3
MM0#0 Y1 B VDD VDD pmos_lvt w=81.0n l=20n nfin=3
MM4 Y net10 VDD VDD pmos_lvt w=162.00n l=20n nfin=6
MM1 net10 Y1 VDD VDD pmos_lvt w=54.0n l=20n nfin=2
MM0 net10 A VDD VDD pmos_lvt w=54.0n l=20n nfin=2
MM5 Y net10 VSS VSS nmos_lvt w=162.00n l=20n nfin=6
MM3 net20 A VSS VSS nmos_lvt w=81.0n l=20n nfin=3
MM2 net10 Y1 net20 VSS nmos_lvt w=81.0n l=20n nfin=3
.ENDS
* pattern code: 4|3|BAR_G0_4_5|INVx1=2|INPUT:Y-BAR_G0_4_5:A=1|INPUT:Y-INVx1:A=2|INVx1:Y-BAR_G0_4_5:B,C=2|011111
* 46 occurrences in design
* each contains 2 cells
* pin map: {'n759': 'A', 'n760': 'B', 'x125': 'C'} {'n762': 'Y'}
* function: A&(~B|~C)
* Example occurence: And(A, Nand(B,C))
*   .subckt NAND2x1 A=n760 B=x125 Y=n254
*   .subckt AND2x2 A=n759 B=n254 Y=n762
