.SUBCKT VOTER_G0_0_12_471 B A C VDD VSS Y
MclTXE4LB_0#M0 clTXE4LB_0#Y C VSS VSS nmos_lvt w=81.0n l=20n nfin=3
MclTXE4LB_0#M1 clTXE4LB_0#Y C VDD VDD pmos_lvt w=81.0n l=20n nfin=3
MclTXE4LB_1#M7 Y clTXE4LB_1#net16 VSS VSS nmos_lvt w=81.0n l=20n nfin=3
MclTXE4LB_1#M4 clTXE4LB_1#net16 A VSS VSS nmos_lvt w=81.0n l=20n nfin=3
MclTXE4LB_1#M3 clTXE4LB_1#net16 B clTXE4LB_1#net29 VSS nmos_lvt w=81.0n l=20n nfin=3
MclTXE4LB_1#M2 clTXE4LB_1#net29 clTXE4LB_0#Y VSS VSS nmos_lvt w=81.0n l=20n nfin=3
MclTXE4LB_1#M8 Y clTXE4LB_1#net16 VDD VDD pmos_lvt w=81.0n l=20n nfin=3
MclTXE4LB_1#M5 clTXE4LB_1#net18 clTXE4LB_0#Y clTXE4LB_1#net16 VDD pmos_lvt w=81.0n l=20n nfin=3
MclTXE4LB_1#M0 VDD A clTXE4LB_1#net18 VDD pmos_lvt w=81.0n l=20n nfin=3
MclTXE4LB_1#M1 clTXE4LB_1#net18 B clTXE4LB_1#net16 VDD pmos_lvt w=81.0n l=20n nfin=3
.ENDS
* pattern code: 3|3|INVx1|AOI21x1=1|INVx1=1|AOI21x1:Y-INVx1:A=1|INPUT:Y-AOI21x1:A1,A2=1|INPUT:Y-AOI21x1:B=1|INPUT:Y-INVx1:A=1|INVx1:Y-AOI21x1:A1,A2=1|111101
* 563 occurrences in design
* each contains 3 cells
* pin map: {'n5483': 'A', 'n1100': 'B', 'x169': 'C'} {'n5485': 'Y'}
* function: A|(B&~C)
* Example occurence:
*   .subckt INVx1 A=x169 Y=n1099
*   .subckt AOI21x1 A1=n1099 A2=n1100 B=n5483 Y=n5484
*   .subckt INVx1 A=n5484 Y=n5485
