.SUBCKT DIV_G4_4_13358_13359_13360 C A B VDD VSS Y
MclEPVTMX_0#M2 VSS B clEPVTMX_0#Y VSS nmos_lvt w=81.0n l=20n nfin=3
MclEPVTMX_0#M1 VSS A clEPVTMX_0#Y VSS nmos_lvt w=81.0n l=20n nfin=3
MclEPVTMX_0#M4 clEPVTMX_0#net16 A clEPVTMX_0#Y VDD pmos_lvt w=162.00n l=20n nfin=6
MclEPVTMX_0#M3 VDD B clEPVTMX_0#net16 VDD pmos_lvt w=162.00n l=20n nfin=6
MclEPVTMX_1#M3#0 clEPVTMX_1#net16 B VSS VSS nmos_lvt w=162.00n l=20n nfin=6
MclEPVTMX_1#M2#0 clEPVTMX_1#Y1 A clEPVTMX_1#net16 VSS nmos_lvt w=162.00n l=20n nfin=6
MclEPVTMX_1#M1#0 clEPVTMX_1#Y1 A VDD VDD pmos_lvt w=81.0n l=20n nfin=3
MclEPVTMX_1#M0#0 clEPVTMX_1#Y1 B VDD VDD pmos_lvt w=81.0n l=20n nfin=3
MclEPVTMX_1#M4 clEPVTMX_1#Y clEPVTMX_1#net10 VDD VDD pmos_lvt w=162.00n l=20n nfin=6
MclEPVTMX_1#M1 clEPVTMX_1#net10 clEPVTMX_1#Y1 VDD VDD pmos_lvt w=54.0n l=20n nfin=2
MclEPVTMX_1#M0 clEPVTMX_1#net10 C VDD VDD pmos_lvt w=54.0n l=20n nfin=2
MclEPVTMX_1#M5 clEPVTMX_1#Y clEPVTMX_1#net10 VSS VSS nmos_lvt w=162.00n l=20n nfin=6
MclEPVTMX_1#M3 clEPVTMX_1#net20 C VSS VSS nmos_lvt w=81.0n l=20n nfin=3
MclEPVTMX_1#M2 clEPVTMX_1#net10 clEPVTMX_1#Y1 clEPVTMX_1#net20 VSS nmos_lvt w=81.0n l=20n nfin=3
MclEPVTMX_2#M5 VSS clEPVTMX_2#net7 Y VSS nmos_lvt w=162.00n l=20n nfin=6
MclEPVTMX_2#M1 VSS clEPVTMX_1#Y clEPVTMX_2#net7 VSS nmos_lvt w=54.0n l=20n nfin=2
MclEPVTMX_2#M2 VSS clEPVTMX_0#Y clEPVTMX_2#net7 VSS nmos_lvt w=54.0n l=20n nfin=2
MclEPVTMX_2#M0 VDD clEPVTMX_2#net7 Y VDD pmos_lvt w=162.00n l=20n nfin=6
MclEPVTMX_2#M4 clEPVTMX_2#net15 clEPVTMX_1#Y clEPVTMX_2#net7 VDD pmos_lvt w=81.0n l=20n nfin=3
MclEPVTMX_2#M3 VDD clEPVTMX_0#Y clEPVTMX_2#net15 VDD pmos_lvt w=81.0n l=20n nfin=3
.ENDS
* pattern code: 4|3|AOI21x1|AND2x2=1|INVx1=1|XNOR2x1=1|AND2x2:Y-AOI21x1:B=1|INPUT:Y-AND2x2:A,B=1|INPUT:Y-AOI21x1:A1,A2=1|INPUT:Y-INVx1:A=1|INPUT:Y-XNOR2x1:A,B=2|INVx1:Y-AND2x2:A,B=1|XNOR2x1:Y-AOI21x1:A1,A2=1|1012211
* 935 occurrences in design
* each contains 4 cells
* pin map: {'n13538': 'A', 'n13232': 'B', 'x124': 'C'} {'n13539': 'Y'}
* function: (C&~A)|(C&~B)|(~A&~B)
* Example occurence:
*   .subckt INVx1 A=x124 Y=n237
*   .subckt AND2x2 A=n237 B=n13232 Y=n13237
*   .subckt XNOR2x1 A=n13232 B=x124 Y=n13238
*   .subckt AOI21x1 A1=n13538 A2=n13238 B=n13237 Y=n13539
