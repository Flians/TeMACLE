.SUBCKT MEM_CTRL_G3_164_9503 C A B VDD VSS Y
MclYWUK5L_0#M3 clYWUK5L_0#net16 A VSS VSS nmos_lvt w=162.00n l=20n nfin=6
MclYWUK5L_0#M2 clYWUK5L_0#Y B clYWUK5L_0#net16 VSS nmos_lvt w=162.00n l=20n nfin=6
MclYWUK5L_0#M1 clYWUK5L_0#Y B VDD VDD pmos_lvt w=81.0n l=20n nfin=3
MclYWUK5L_0#M0 clYWUK5L_0#Y A VDD VDD pmos_lvt w=81.0n l=20n nfin=3
MclYWUK5L_1#clT8WJ6P_0#M0 clYWUK5L_1#clT8WJ6P_0#Y C VSS VSS nmos_lvt w=81.0n l=20n nfin=3
MclYWUK5L_1#clT8WJ6P_0#M1 clYWUK5L_1#clT8WJ6P_0#Y C VDD VDD pmos_lvt w=81.0n l=20n nfin=3
MclYWUK5L_1#clT8WJ6P_1#M2 Y clYWUK5L_0#Y VDD VDD pmos_lvt w=162.00n l=20n nfin=6
MclYWUK5L_1#clT8WJ6P_1#M1 Y clYWUK5L_1#clT8WJ6P_0#Y clYWUK5L_1#clT8WJ6P_1#net27 VDD pmos_lvt w=162.00n l=20n nfin=6
MclYWUK5L_1#clT8WJ6P_1#M0 clYWUK5L_1#clT8WJ6P_1#net27 A VDD VDD pmos_lvt w=162.00n l=20n nfin=6
MclYWUK5L_1#clT8WJ6P_1#M6 clYWUK5L_1#clT8WJ6P_1#net11 clYWUK5L_0#Y VSS VSS nmos_lvt w=162.00n l=20n nfin=6
MclYWUK5L_1#clT8WJ6P_1#M5 Y clYWUK5L_1#clT8WJ6P_0#Y clYWUK5L_1#clT8WJ6P_1#net11 VSS nmos_lvt w=162.00n l=20n nfin=6
MclYWUK5L_1#clT8WJ6P_1#M4 Y A clYWUK5L_1#clT8WJ6P_1#net11 VSS nmos_lvt w=162.00n l=20n nfin=6
.ENDS
* pattern code: 3|3|MEM_CTRL_G2_246_346|INVx1=1|INPUT:Y-INVx1:A=1|INPUT:Y-MEM_CTRL_G2_246_346:B=1|INPUT:Y-MEM_CTRL_G2_246_346:C=1|INVx1:Y-MEM_CTRL_G2_246_346:A=1|11110
* 1700 occurrences in design
* each contains 3 cells
* pin map: {'x39': 'A', 'n10945': 'B', 'x137': 'C'} {'y294': 'Y'}
* function: (A&B)|(C&~A)
* Example occurence:
*   .subckt INVx1 A=x137 Y=n1299
*   .subckt MEM_CTRL_G2_246_346 A=n1299 B=x39 C=n10945 Y=y294
