.SUBCKT PRIORITY_G4_305_306 C B A VDD VSS Y
MclYWUK5L_0#M3 clYWUK5L_0#net16 B VSS VSS nmos_lvt w=162.00n l=20n nfin=6
MclYWUK5L_0#M2 clYWUK5L_0#Y A clYWUK5L_0#net16 VSS nmos_lvt w=162.00n l=20n nfin=6
MclYWUK5L_0#M1 clYWUK5L_0#Y A VDD VDD pmos_lvt w=81.0n l=20n nfin=3
MclYWUK5L_0#M0 clYWUK5L_0#Y B VDD VDD pmos_lvt w=81.0n l=20n nfin=3
MclYWUK5L_1#clT8WJ6P_0#M0 clYWUK5L_1#clT8WJ6P_0#Y C VSS VSS nmos_lvt w=81.0n l=20n nfin=3
MclYWUK5L_1#clT8WJ6P_0#M1 clYWUK5L_1#clT8WJ6P_0#Y C VDD VDD pmos_lvt w=81.0n l=20n nfin=3
MclYWUK5L_1#clT8WJ6P_1#M2 Y clYWUK5L_0#Y VDD VDD pmos_lvt w=162.00n l=20n nfin=6
MclYWUK5L_1#clT8WJ6P_1#M1 Y clYWUK5L_1#clT8WJ6P_0#Y clYWUK5L_1#clT8WJ6P_1#net27 VDD pmos_lvt w=162.00n l=20n nfin=6
MclYWUK5L_1#clT8WJ6P_1#M0 clYWUK5L_1#clT8WJ6P_1#net27 B VDD VDD pmos_lvt w=162.00n l=20n nfin=6
MclYWUK5L_1#clT8WJ6P_1#M6 clYWUK5L_1#clT8WJ6P_1#net11 clYWUK5L_0#Y VSS VSS nmos_lvt w=162.00n l=20n nfin=6
MclYWUK5L_1#clT8WJ6P_1#M5 Y clYWUK5L_1#clT8WJ6P_0#Y clYWUK5L_1#clT8WJ6P_1#net11 VSS nmos_lvt w=162.00n l=20n nfin=6
MclYWUK5L_1#clT8WJ6P_1#M4 Y B clYWUK5L_1#clT8WJ6P_1#net11 VSS nmos_lvt w=162.00n l=20n nfin=6
.ENDS
* pattern code: 3|3|PRIORITY_G1_678_679|INVx1=1|INPUT:Y-INVx1:A=1|INPUT:Y-PRIORITY_G1_678_679:B=1|INPUT:Y-PRIORITY_G1_678_679:C=1|INVx1:Y-PRIORITY_G1_678_679:A=1|11110
* 5 occurrences in design
* each contains 3 cells
* pin map: {'n435': 'A', 'n432': 'B', 'n430': 'C'} {'n437': 'Y'}
* function: (A&B)|(C&~B)
* Example occurence:
*   .subckt INVx1 A=n430 Y=n431
*   .subckt PRIORITY_G1_678_679 A=n431 B=n435 C=n432 Y=n437
