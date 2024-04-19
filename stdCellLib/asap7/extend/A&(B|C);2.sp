.SUBCKT ADDER_G0_4_7 A B C VDD VSS Y
MclK5GWV4_0#M5 VSS clK5GWV4_0#net7 clK5GWV4_0#Y VSS nmos_lvt w=162.00n l=20n nfin=6
MclK5GWV4_0#M1 VSS B clK5GWV4_0#net7 VSS nmos_lvt w=54.0n l=20n nfin=2
MclK5GWV4_0#M2 VSS C clK5GWV4_0#net7 VSS nmos_lvt w=54.0n l=20n nfin=2
MclK5GWV4_0#M0 VDD clK5GWV4_0#net7 clK5GWV4_0#Y VDD pmos_lvt w=162.00n l=20n nfin=6
MclK5GWV4_0#M4 clK5GWV4_0#net15 B clK5GWV4_0#net7 VDD pmos_lvt w=81.0n l=20n nfin=3
MclK5GWV4_0#M3 VDD C clK5GWV4_0#net15 VDD pmos_lvt w=81.0n l=20n nfin=3
MclK5GWV4_1#M4 Y clK5GWV4_1#net10 VDD VDD pmos_lvt w=162.00n l=20n nfin=6
MclK5GWV4_1#M1 clK5GWV4_1#net10 A VDD VDD pmos_lvt w=54.0n l=20n nfin=2
MclK5GWV4_1#M0 clK5GWV4_1#net10 clK5GWV4_0#Y VDD VDD pmos_lvt w=54.0n l=20n nfin=2
MclK5GWV4_1#M5 Y clK5GWV4_1#net10 VSS VSS nmos_lvt w=162.00n l=20n nfin=6
MclK5GWV4_1#M3 clK5GWV4_1#net20 clK5GWV4_0#Y VSS VSS nmos_lvt w=81.0n l=20n nfin=3
MclK5GWV4_1#M2 clK5GWV4_1#net10 A clK5GWV4_1#net20 VSS nmos_lvt w=81.0n l=20n nfin=3
.ENDS 
* pattern code: 2|3|AND2x2|OR2x2=1|INPUT:Y-AND2x2:A,B=1|INPUT:Y-OR2x2:A,B=2|OR2x2:Y-AND2x2:A,B=1|01111
* 253 occurrences in design
* each contains 2 cells
* function: A&(B|C)
* Example occurence:
*   .subckt OR2x2 A=x1 B=n259 Y=n262
*   .subckt AND2x2 A=n262 B=n264 Y=n265
