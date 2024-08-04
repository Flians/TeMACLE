.SUBCKT CTRL_G2_1_13_87 C B A VDD VSS Y
MclTXE4LB_0#M0 clTXE4LB_0#Y A VSS VSS nmos_lvt w=81.0n l=20n nfin=3
MclTXE4LB_0#M1 clTXE4LB_0#Y A VDD VDD pmos_lvt w=81.0n l=20n nfin=3
MclTXE4LB_1#M7 Y clTXE4LB_1#net16 VSS VSS nmos_lvt w=81.0n l=20n nfin=3
MclTXE4LB_1#M4 clTXE4LB_1#net16 B VSS VSS nmos_lvt w=81.0n l=20n nfin=3
MclTXE4LB_1#M3 clTXE4LB_1#net16 C clTXE4LB_1#net29 VSS nmos_lvt w=81.0n l=20n nfin=3
MclTXE4LB_1#M2 clTXE4LB_1#net29 clTXE4LB_0#Y VSS VSS nmos_lvt w=81.0n l=20n nfin=3
MclTXE4LB_1#M8 Y clTXE4LB_1#net16 VDD VDD pmos_lvt w=81.0n l=20n nfin=3
MclTXE4LB_1#M5 clTXE4LB_1#net18 clTXE4LB_0#Y clTXE4LB_1#net16 VDD pmos_lvt w=81.0n l=20n nfin=3
MclTXE4LB_1#M0 VDD B clTXE4LB_1#net18 VDD pmos_lvt w=81.0n l=20n nfin=3
MclTXE4LB_1#M1 clTXE4LB_1#net18 C clTXE4LB_1#net16 VDD pmos_lvt w=81.0n l=20n nfin=3
.ENDS
* pattern code: 3|3|OAI21x1|INVx1=2|INPUT:Y-INVx1:A=2|INPUT:Y-OAI21x1:A1,A2=1|INVx1:Y-OAI21x1:A1,A2=1|INVx1:Y-OAI21x1:B=1|111110
* 4 occurrences in design
* each contains 3 cells
* pin map: {'n93': 'A', 'x2': 'B', 'x0': 'C'} {'n94': 'Y'}
* function: B|(C&~A)
* Example occurence:
*   .subckt INVx1 A=x2 Y=n11
*   .subckt INVx1 A=x0 Y=n9
*   .subckt OAI21x1 A1=n9 A2=n93 B=n11 Y=n94
