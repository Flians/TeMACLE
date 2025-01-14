.SUBCKT VOTER_G3_1_2 B C A VDD VSS Y
MclOHI6IR_0#M0 clOHI6IR_0#Y A VSS VSS nmos_lvt w=81.0n l=20n nfin=3
MclOHI6IR_0#M1 clOHI6IR_0#Y A VDD VDD pmos_lvt w=81.0n l=20n nfin=3
MclOHI6IR_1#M2 Y clOHI6IR_0#Y VDD VDD pmos_lvt w=162.00n l=20n nfin=6
MclOHI6IR_1#M1 Y C clOHI6IR_1#net27 VDD pmos_lvt w=162.00n l=20n nfin=6
MclOHI6IR_1#M0 clOHI6IR_1#net27 B VDD VDD pmos_lvt w=162.00n l=20n nfin=6
MclOHI6IR_1#M6 clOHI6IR_1#net11 clOHI6IR_0#Y VSS VSS nmos_lvt w=162.00n l=20n nfin=6
MclOHI6IR_1#M5 Y C clOHI6IR_1#net11 VSS nmos_lvt w=162.00n l=20n nfin=6
MclOHI6IR_1#M4 Y B clOHI6IR_1#net11 VSS nmos_lvt w=162.00n l=20n nfin=6
.ENDS
* pattern code: 4|3|VOTER_G0_0_12_471|INVx1=1|INPUT:Y-INVx1:A=1|INPUT:Y-VOTER_G0_0_12_471:A=1|INPUT:Y-VOTER_G0_0_12_471:C=1|INVx1:Y-VOTER_G0_0_12_471:B=1|11110
* 217 occurrences in design
* each contains 4 cells
* pin map: {'n3883': 'A', 'x460': 'B', 'x461': 'C'} {'n3885': 'Y'}
* function: A|(~B&~C)
* Example occurence:
*   .subckt INVx1 A=x461 Y=n1196
*   .subckt VOTER_G0_0_12_471 A=n3883 B=n1196 C=x460 Y=n3885
