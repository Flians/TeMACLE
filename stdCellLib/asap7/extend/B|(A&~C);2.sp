.SUBCKT ADDER_G1_5_15 A B C VDD VSS Y
MclTXE4LB_0#M0 clTXE4LB_0#Y C VSS VSS nmos_lvt w=81.0n l=20n nfin=3
MclTXE4LB_0#M1 clTXE4LB_0#Y C VDD VDD pmos_lvt w=81.0n l=20n nfin=3
MclTXE4LB_1#M7 Y clTXE4LB_1#net16 VSS VSS nmos_lvt w=81.0n l=20n nfin=3
MclTXE4LB_1#M4 clTXE4LB_1#net16 B VSS VSS nmos_lvt w=81.0n l=20n nfin=3
MclTXE4LB_1#M3 clTXE4LB_1#net16 A clTXE4LB_1#net29 VSS nmos_lvt w=81.0n l=20n nfin=3
MclTXE4LB_1#M2 clTXE4LB_1#net29 clTXE4LB_0#Y VSS VSS nmos_lvt w=81.0n l=20n nfin=3
MclTXE4LB_1#M8 Y clTXE4LB_1#net16 VDD VDD pmos_lvt w=81.0n l=20n nfin=3
MclTXE4LB_1#M5 clTXE4LB_1#net18 clTXE4LB_0#Y clTXE4LB_1#net16 VDD pmos_lvt w=81.0n l=20n nfin=3
MclTXE4LB_1#M0 VDD B clTXE4LB_1#net18 VDD pmos_lvt w=81.0n l=20n nfin=3
MclTXE4LB_1#M1 clTXE4LB_1#net18 A clTXE4LB_1#net16 VDD pmos_lvt w=81.0n l=20n nfin=3
.ENDS 
* pattern code: 3|3|AO21x1|INVx1=1|INPUT:Y-AO21x1:A=1|INPUT:Y-AO21x1:B,C=1|INPUT:Y-INVx1:A=1|INVx1:Y-AO21x1:B,C=1|01111
* 126 occurrences in design
* each contains 2 cells
* pin map: {'n516': 'A', 'n385': 'B', 'x2': 'C'} {'n520': 'Y'}
* function: B|(A&~C)
* Example occurence:
*   .subckt INVx1 A=x2 Y=n259
*   .subckt AO21x1 A1=n516 A2=n259 B=n385 Y=n520
