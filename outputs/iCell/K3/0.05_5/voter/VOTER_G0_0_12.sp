.SUBCKT VOTER_G0_0_12 B A C VDD VSS Y
MclA28NB3_0#M0 clA28NB3_0#Y C VSS VSS nmos_lvt w=81.0n l=20n nfin=3
MclA28NB3_0#M1 clA28NB3_0#Y C VDD VDD pmos_lvt w=81.0n l=20n nfin=3
MclA28NB3_1#M4 Y A VSS VSS nmos_lvt w=108.00n l=20n nfin=4
MclA28NB3_1#M3 Y clA28NB3_0#Y clA28NB3_1#net29 VSS nmos_lvt w=162.00n l=20n nfin=6
MclA28NB3_1#M2 clA28NB3_1#net29 B VSS VSS nmos_lvt w=162.00n l=20n nfin=6
MclA28NB3_1#M5 clA28NB3_1#net18 B VDD VDD pmos_lvt w=162.00n l=20n nfin=6
MclA28NB3_1#M0 Y A clA28NB3_1#net18 VDD pmos_lvt w=162.00n l=20n nfin=6
MclA28NB3_1#M1 clA28NB3_1#net18 clA28NB3_0#Y VDD VDD pmos_lvt w=162.00n l=20n nfin=6
.ENDS
* pattern code: 2|3|AOI21x1|INVx1=1|INPUT:Y-AOI21x1:A1,A2=1|INPUT:Y-AOI21x1:B=1|INPUT:Y-INVx1:A=1|INVx1:Y-AOI21x1:A1,A2=1|01111
* 724 occurrences in design
* each contains 2 cells
* pin map: {'n5483': 'A', 'n1100': 'B', 'x169': 'C'} {'n5484': 'Y'}
* function: ~A&(C|~B)
* Example occurence:
*   .subckt INVx1 A=x169 Y=n1099
*   .subckt AOI21x1 A1=n1099 A2=n1100 B=n5483 Y=n5484
