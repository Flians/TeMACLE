.SUBCKT ADDER_G0_1_4 A B C VDD VSS Y
MclTABA5C_0#M4 clTABA5C_0#Y clTABA5C_0#net10 VDD VDD pmos_lvt w=162.00n l=20n nfin=6
MclTABA5C_0#M1 clTABA5C_0#net10 C VDD VDD pmos_lvt w=54.0n l=20n nfin=2
MclTABA5C_0#M0 clTABA5C_0#net10 B VDD VDD pmos_lvt w=54.0n l=20n nfin=2
MclTABA5C_0#M5 clTABA5C_0#Y clTABA5C_0#net10 VSS VSS nmos_lvt w=162.00n l=20n nfin=6
MclTABA5C_0#M3 clTABA5C_0#net20 B VSS VSS nmos_lvt w=81.0n l=20n nfin=3
MclTABA5C_0#M2 clTABA5C_0#net10 C clTABA5C_0#net20 VSS nmos_lvt w=81.0n l=20n nfin=3
MclTABA5C_1#M5 VSS clTABA5C_1#net7 Y VSS nmos_lvt w=162.00n l=20n nfin=6
MclTABA5C_1#M1 VSS clTABA5C_0#Y clTABA5C_1#net7 VSS nmos_lvt w=54.0n l=20n nfin=2
MclTABA5C_1#M2 VSS A clTABA5C_1#net7 VSS nmos_lvt w=54.0n l=20n nfin=2
MclTABA5C_1#M0 VDD clTABA5C_1#net7 Y VDD pmos_lvt w=162.00n l=20n nfin=6
MclTABA5C_1#M4 clTABA5C_1#net15 clTABA5C_0#Y clTABA5C_1#net7 VDD pmos_lvt w=81.0n l=20n nfin=3
MclTABA5C_1#M3 VDD A clTABA5C_1#net15 VDD pmos_lvt w=81.0n l=20n nfin=3
.ENDS 
* pattern code: 2|3|OR2x2|AND2x2=1|AND2x2:Y-OR2x2:A,B=1|INPUT:Y-AND2x2:A,B=2|INPUT:Y-OR2x2:A,B=1|11110
* 254 occurrences in design
* each contains 2 cells
* function: A|(B&C)
* Example occurence:
*   .subckt AND2x2 A=x0 B=x128 Y=n259
*   .subckt OR2x2 A=x1 B=n259 Y=n262
