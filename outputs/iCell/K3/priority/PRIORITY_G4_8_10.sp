.SUBCKT PRIORITY_G4_8_10 B A C VDD VSS Y
MclT8WJ6P_0#M0 clT8WJ6P_0#Y C VSS VSS nmos_lvt w=81.0n l=20n nfin=3
MclT8WJ6P_0#M1 clT8WJ6P_0#Y C VDD VDD pmos_lvt w=81.0n l=20n nfin=3
MclT8WJ6P_1#M2 Y A VDD VDD pmos_lvt w=162.00n l=20n nfin=6
MclT8WJ6P_1#M1 Y clT8WJ6P_0#Y clT8WJ6P_1#net27 VDD pmos_lvt w=162.00n l=20n nfin=6
MclT8WJ6P_1#M0 clT8WJ6P_1#net27 B VDD VDD pmos_lvt w=162.00n l=20n nfin=6
MclT8WJ6P_1#M6 clT8WJ6P_1#net11 A VSS VSS nmos_lvt w=162.00n l=20n nfin=6
MclT8WJ6P_1#M5 Y clT8WJ6P_0#Y clT8WJ6P_1#net11 VSS nmos_lvt w=162.00n l=20n nfin=6
MclT8WJ6P_1#M4 Y B clT8WJ6P_1#net11 VSS nmos_lvt w=162.00n l=20n nfin=6
.ENDS
* pattern code: 2|3|OAI21x1|INVx1=1|INPUT:Y-INVx1:A=1|INPUT:Y-OAI21x1:A1,A2=1|INPUT:Y-OAI21x1:B=1|INVx1:Y-OAI21x1:A1,A2=1|11110
* 4 occurrences in design
* each contains 2 cells
* pin map: {'n179': 'A', 'x126': 'B', 'x125': 'C'} {'n180': 'Y'}
* function: ~A|(C&~B)
* Example occurence:
*   .subckt INVx1 A=x125 Y=n177
*   .subckt OAI21x1 A1=x126 A2=n177 B=n179 Y=n180
