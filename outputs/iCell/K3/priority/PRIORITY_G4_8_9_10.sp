.SUBCKT PRIORITY_G4_8_9_10 B C A VDD VSS Y
MclTXE4LB_0#M0 clTXE4LB_0#Y A VSS VSS nmos_lvt w=81.0n l=20n nfin=3
MclTXE4LB_0#M1 clTXE4LB_0#Y A VDD VDD pmos_lvt w=81.0n l=20n nfin=3
MclTXE4LB_1#M7 Y clTXE4LB_1#net16 VSS VSS nmos_lvt w=81.0n l=20n nfin=3
MclTXE4LB_1#M4 clTXE4LB_1#net16 C VSS VSS nmos_lvt w=81.0n l=20n nfin=3
MclTXE4LB_1#M3 clTXE4LB_1#net16 B clTXE4LB_1#net29 VSS nmos_lvt w=81.0n l=20n nfin=3
MclTXE4LB_1#M2 clTXE4LB_1#net29 clTXE4LB_0#Y VSS VSS nmos_lvt w=81.0n l=20n nfin=3
MclTXE4LB_1#M8 Y clTXE4LB_1#net16 VDD VDD pmos_lvt w=81.0n l=20n nfin=3
MclTXE4LB_1#M5 clTXE4LB_1#net18 clTXE4LB_0#Y clTXE4LB_1#net16 VDD pmos_lvt w=81.0n l=20n nfin=3
MclTXE4LB_1#M0 VDD C clTXE4LB_1#net18 VDD pmos_lvt w=81.0n l=20n nfin=3
MclTXE4LB_1#M1 clTXE4LB_1#net18 B clTXE4LB_1#net16 VDD pmos_lvt w=81.0n l=20n nfin=3
.ENDS
* pattern code: 3|3|OAI21x1|INVx1=2|INPUT:Y-INVx1:A=2|INPUT:Y-OAI21x1:A1,A2=1|INVx1:Y-OAI21x1:A1,A2=1|INVx1:Y-OAI21x1:B=1|111110
* 3 occurrences in design
* each contains 3 cells
* pin map: {'x126': 'A', 'x125': 'B', 'x127': 'C'} {'n180': 'Y'}
* function: C|(B&~A)
* Example occurence:
*   .subckt INVx1 A=x125 Y=n177
*   .subckt INVx1 A=x127 Y=n179
*   .subckt OAI21x1 A1=x126 A2=n177 B=n179 Y=n180
