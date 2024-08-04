.SUBCKT ADDER_G2_69_70_420 A B C VDD VSS Y
MclEPVTMX_0#M2 VSS C clEPVTMX_0#Y VSS nmos_lvt w=81.0n l=20n nfin=3
MclEPVTMX_0#M1 VSS B clEPVTMX_0#Y VSS nmos_lvt w=81.0n l=20n nfin=3
MclEPVTMX_0#M4 clEPVTMX_0#net16 B clEPVTMX_0#Y VDD pmos_lvt w=162.00n l=20n nfin=6
MclEPVTMX_0#M3 VDD C clEPVTMX_0#net16 VDD pmos_lvt w=162.00n l=20n nfin=6
MclEPVTMX_1#M3#0 clEPVTMX_1#net16 C VSS VSS nmos_lvt w=162.00n l=20n nfin=6
MclEPVTMX_1#M2#0 clEPVTMX_1#Y1 B clEPVTMX_1#net16 VSS nmos_lvt w=162.00n l=20n nfin=6
MclEPVTMX_1#M1#0 clEPVTMX_1#Y1 B VDD VDD pmos_lvt w=81.0n l=20n nfin=3
MclEPVTMX_1#M0#0 clEPVTMX_1#Y1 C VDD VDD pmos_lvt w=81.0n l=20n nfin=3
MclEPVTMX_1#M4 clEPVTMX_1#Y clEPVTMX_1#net10 VDD VDD pmos_lvt w=162.00n l=20n nfin=6
MclEPVTMX_1#M1 clEPVTMX_1#net10 clEPVTMX_1#Y1 VDD VDD pmos_lvt w=54.0n l=20n nfin=2
MclEPVTMX_1#M0 clEPVTMX_1#net10 A VDD VDD pmos_lvt w=54.0n l=20n nfin=2
MclEPVTMX_1#M5 clEPVTMX_1#Y clEPVTMX_1#net10 VSS VSS nmos_lvt w=162.00n l=20n nfin=6
MclEPVTMX_1#M3 clEPVTMX_1#net20 A VSS VSS nmos_lvt w=81.0n l=20n nfin=3
MclEPVTMX_1#M2 clEPVTMX_1#net10 clEPVTMX_1#Y1 clEPVTMX_1#net20 VSS nmos_lvt w=81.0n l=20n nfin=3
MclEPVTMX_2#M5 VSS clEPVTMX_2#net7 Y VSS nmos_lvt w=162.00n l=20n nfin=6
MclEPVTMX_2#M1 VSS clEPVTMX_1#Y clEPVTMX_2#net7 VSS nmos_lvt w=54.0n l=20n nfin=2
MclEPVTMX_2#M2 VSS clEPVTMX_0#Y clEPVTMX_2#net7 VSS nmos_lvt w=54.0n l=20n nfin=2
MclEPVTMX_2#M0 VDD clEPVTMX_2#net7 Y VDD pmos_lvt w=162.00n l=20n nfin=6
MclEPVTMX_2#M4 clEPVTMX_2#net15 clEPVTMX_1#Y clEPVTMX_2#net7 VDD pmos_lvt w=81.0n l=20n nfin=3
MclEPVTMX_2#M3 VDD clEPVTMX_0#Y clEPVTMX_2#net15 VDD pmos_lvt w=81.0n l=20n nfin=3
.ENDS
* pattern code: 4|3|OR2x2|ADDER_G1_1_439=1|NOR2x1=1|ADDER_G1_1_439:Y-OR2x2:A,B=1|INPUT:Y-ADDER_G1_1_439:A,B=2|INPUT:Y-ADDER_G1_1_439:C=1|INPUT:Y-NOR2x1:A,B=2|NOR2x1:Y-OR2x2:A,B=1|112210
* 31 occurrences in design
* each contains 4 cells
* pin map: {'x130': 'A', 'n360': 'B', 'n260': 'C'} {'n363': 'Y'}
* function: (A&~B)|(A&~C)|(~B&~C)
* Example occurence:
*   .subckt NOR2x1 A=n260 B=n360 Y=n361
*   .subckt ADDER_G1_1_439 A=n260 B=n360 C=x130 Y=n362
*   .subckt OR2x2 A=n361 B=n362 Y=n363
