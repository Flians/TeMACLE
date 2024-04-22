.SUBCKT AO21x1_ASAP7_75t_L A B C VDD VSS Y
MM7 Y net16 VSS VSS nmos_lvt w=81.0n l=20n nfin=3
MM4 net16 A VSS VSS nmos_lvt w=81.0n l=20n nfin=3
MM3 net16 B net29 VSS nmos_lvt w=81.0n l=20n nfin=3
MM2 net29 C VSS VSS nmos_lvt w=81.0n l=20n nfin=3
MM8 Y net16 VDD VDD pmos_lvt w=81.0n l=20n nfin=3
MM5 net18 C net16 VDD pmos_lvt w=81.0n l=20n nfin=3
MM0 VDD A net18 VDD pmos_lvt w=81.0n l=20n nfin=3
MM1 net18 B net16 VDD pmos_lvt w=81.0n l=20n nfin=3
.ENDS
* pattern code: 2|3|OR2x2|AND2x2=1|AND2x2:Y-OR2x2:A,B=1|INPUT:Y-AND2x2:A,B=2|INPUT:Y-OR2x2:A,B=1|11110
* 254 occurrences in design
* each contains 2 cells
* pin map: {'A_4': 'A', 'A_1': 'B', 'B_1': 'C'}
* function: A|(B&C)
* Example occurence:
*   .subckt AND2x2 A=x0 B=x128 Y=n259
*   .subckt OR2x2 A=x1 B=n259 Y=n262
