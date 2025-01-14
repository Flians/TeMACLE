.SUBCKT BAR_G1_0_2058 A B C VDD VSS Y
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
* 117 occurrences in design
* each contains 2 cells
* pin map: {'n358': 'A', 'n430': 'B', 'x134': 'C'} {'n2195': 'Y'}
* function: C|(~A&~B)
* Example occurence:
*   .subckt INVx1 A=x134 Y=n147
*   .subckt OAI21x1 A1=n358 A2=n430 B=n147 Y=n2195
