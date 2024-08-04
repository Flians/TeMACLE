.SUBCKT ARBITER_G2_43_212_213 B C A VDD VSS Y
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
* 184 occurrences in design
* each contains 3 cells
* pin map: {'n760': 'A', 'n605': 'B', 'n763': 'C'} {'n765': 'Y'}
* function: C|(B&~A)
* Example occurence:
*   .subckt INVx1 A=n605 Y=n606
*   .subckt INVx1 A=n763 Y=n764
*   .subckt OAI21x1 A1=n606 A2=n760 B=n764 Y=n765
