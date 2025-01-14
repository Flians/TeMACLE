.SUBCKT CAVLC_G1_0_351 A B C VDD VSS Y
MclOHI6IR_0#M0 clOHI6IR_0#Y C VSS VSS nmos_lvt w=81.0n l=20n nfin=3
MclOHI6IR_0#M1 clOHI6IR_0#Y C VDD VDD pmos_lvt w=81.0n l=20n nfin=3
MclOHI6IR_1#M2 Y clOHI6IR_0#Y VDD VDD pmos_lvt w=162.00n l=20n nfin=6
MclOHI6IR_1#M1 Y B clOHI6IR_1#net27 VDD pmos_lvt w=162.00n l=20n nfin=6
MclOHI6IR_1#M0 clOHI6IR_1#net27 A VDD VDD pmos_lvt w=162.00n l=20n nfin=6
MclOHI6IR_1#M6 clOHI6IR_1#net11 clOHI6IR_0#Y VSS VSS nmos_lvt w=162.00n l=20n nfin=6
MclOHI6IR_1#M5 Y B clOHI6IR_1#net11 VSS nmos_lvt w=162.00n l=20n nfin=6
MclOHI6IR_1#M4 Y A clOHI6IR_1#net11 VSS nmos_lvt w=162.00n l=20n nfin=6
.ENDS
* pattern code: 2|3|OAI21x1|INVx1=1|INPUT:Y-INVx1:A=1|INPUT:Y-OAI21x1:A1,A2=2|INVx1:Y-OAI21x1:B=1|11110
* 28 occurrences in design
* each contains 2 cells
* pin map: {'n47': 'A', 'n14': 'B', 'x0': 'C'} {'n342': 'Y'}
* function: C|(~A&~B)
* Example occurence:
*   .subckt INVx1 A=x0 Y=n12
*   .subckt OAI21x1 A1=n47 A2=n14 B=n12 Y=n342
