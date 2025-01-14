.SUBCKT MULTIPLIER_G0_3_128 A B C VDD VSS Y
MclWKDZNC_0#M0 clWKDZNC_0#Y C VSS VSS nmos_lvt w=81.0n l=20n nfin=3
MclWKDZNC_0#M1 clWKDZNC_0#Y C VDD VDD pmos_lvt w=81.0n l=20n nfin=3
MclWKDZNC_1#M2 Y B VDD VDD pmos_lvt w=162.00n l=20n nfin=6
MclWKDZNC_1#M1 Y clWKDZNC_0#Y clWKDZNC_1#net27 VDD pmos_lvt w=162.00n l=20n nfin=6
MclWKDZNC_1#M0 clWKDZNC_1#net27 A VDD VDD pmos_lvt w=162.00n l=20n nfin=6
MclWKDZNC_1#M6 clWKDZNC_1#net11 B VSS VSS nmos_lvt w=162.00n l=20n nfin=6
MclWKDZNC_1#M5 Y clWKDZNC_0#Y clWKDZNC_1#net11 VSS nmos_lvt w=162.00n l=20n nfin=6
MclWKDZNC_1#M4 Y A clWKDZNC_1#net11 VSS nmos_lvt w=162.00n l=20n nfin=6
.ENDS
* pattern code: 2|3|OAI21x1|INVx1=1|INPUT:Y-INVx1:A=1|INPUT:Y-OAI21x1:A1,A2=1|INPUT:Y-OAI21x1:B=1|INVx1:Y-OAI21x1:A1,A2=1|11110
* 2747 occurrences in design
* each contains 2 cells
* pin map: {'n384': 'A', 'n377': 'B', 'x64': 'C'} {'n387': 'Y'}
* function: ~B|(C&~A)
* Example occurence:
*   .subckt INVx1 A=x64 Y=n193
*   .subckt OAI21x1 A1=n384 A2=n193 B=n377 Y=n387
