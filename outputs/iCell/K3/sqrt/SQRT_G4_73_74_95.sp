.SUBCKT SQRT_G4_73_74_95 A B C VDD VSS Y
MclS5BRPW_0#M4 clS5BRPW_0#Y clS5BRPW_0#net10 VDD VDD pmos_lvt w=162.00n l=20n nfin=6
MclS5BRPW_0#M1 clS5BRPW_0#net10 C VDD VDD pmos_lvt w=54.0n l=20n nfin=2
MclS5BRPW_0#M0 clS5BRPW_0#net10 B VDD VDD pmos_lvt w=54.0n l=20n nfin=2
MclS5BRPW_0#M5 clS5BRPW_0#Y clS5BRPW_0#net10 VSS VSS nmos_lvt w=162.00n l=20n nfin=6
MclS5BRPW_0#M3 clS5BRPW_0#net20 B VSS VSS nmos_lvt w=81.0n l=20n nfin=3
MclS5BRPW_0#M2 clS5BRPW_0#net10 C clS5BRPW_0#net20 VSS nmos_lvt w=81.0n l=20n nfin=3
MclS5BRPW_1#M5 VSS clS5BRPW_1#net7 clS5BRPW_1#Y VSS nmos_lvt w=162.00n l=20n nfin=6
MclS5BRPW_1#M1 VSS C clS5BRPW_1#net7 VSS nmos_lvt w=54.0n l=20n nfin=2
MclS5BRPW_1#M2 VSS B clS5BRPW_1#net7 VSS nmos_lvt w=54.0n l=20n nfin=2
MclS5BRPW_1#M0 VDD clS5BRPW_1#net7 clS5BRPW_1#Y VDD pmos_lvt w=162.00n l=20n nfin=6
MclS5BRPW_1#M4 clS5BRPW_1#net15 C clS5BRPW_1#net7 VDD pmos_lvt w=81.0n l=20n nfin=3
MclS5BRPW_1#M3 VDD B clS5BRPW_1#net15 VDD pmos_lvt w=81.0n l=20n nfin=3
MclS5BRPW_2#cl6JGVFP_0#M3 clS5BRPW_2#cl6JGVFP_0#net16 clS5BRPW_1#Y VSS VSS nmos_lvt w=162.00n l=20n nfin=6
MclS5BRPW_2#cl6JGVFP_0#M2 clS5BRPW_2#cl6JGVFP_0#Y A clS5BRPW_2#cl6JGVFP_0#net16 VSS nmos_lvt w=162.00n l=20n nfin=6
MclS5BRPW_2#cl6JGVFP_0#M1 clS5BRPW_2#cl6JGVFP_0#Y A VDD VDD pmos_lvt w=81.0n l=20n nfin=3
MclS5BRPW_2#cl6JGVFP_0#M0 clS5BRPW_2#cl6JGVFP_0#Y clS5BRPW_1#Y VDD VDD pmos_lvt w=81.0n l=20n nfin=3
MclS5BRPW_2#cl6JGVFP_1#M5 VSS clS5BRPW_2#cl6JGVFP_1#net7 Y VSS nmos_lvt w=162.00n l=20n nfin=6
MclS5BRPW_2#cl6JGVFP_1#M1 VSS clS5BRPW_0#Y clS5BRPW_2#cl6JGVFP_1#net7 VSS nmos_lvt w=54.0n l=20n nfin=2
MclS5BRPW_2#cl6JGVFP_1#M2 VSS clS5BRPW_2#cl6JGVFP_0#Y clS5BRPW_2#cl6JGVFP_1#net7 VSS nmos_lvt w=54.0n l=20n nfin=2
MclS5BRPW_2#cl6JGVFP_1#M0 VDD clS5BRPW_2#cl6JGVFP_1#net7 Y VDD pmos_lvt w=162.00n l=20n nfin=6
MclS5BRPW_2#cl6JGVFP_1#M4 clS5BRPW_2#cl6JGVFP_1#net15 clS5BRPW_0#Y clS5BRPW_2#cl6JGVFP_1#net7 VDD pmos_lvt w=81.0n l=20n nfin=3
MclS5BRPW_2#cl6JGVFP_1#M3 VDD clS5BRPW_2#cl6JGVFP_0#Y clS5BRPW_2#cl6JGVFP_1#net15 VDD pmos_lvt w=81.0n l=20n nfin=3
.ENDS 
* pattern code: 4|3|SQRT_G2_3_227|AND2x2=1|OR2x2=1|AND2x2:Y-SQRT_G2_3_227:C=1|INPUT:Y-AND2x2:A,B=2|INPUT:Y-OR2x2:A,B=2|INPUT:Y-SQRT_G2_3_227:A,B=1|OR2x2:Y-SQRT_G2_3_227:A,B=1|112210
* 686 occurrences in design
* each contains 3 cells
* pin map: {'y59': 'A', 'n298': 'B', 'y62': 'C'} {'n356': 'Y'}
* function: ~A|(B&C)|(~B&~C)
* Example occurence:
*   .subckt AND2x2 A=n298 B=y62 Y=n299
*   .subckt OR2x2 A=n298 B=y62 Y=n301
*   .subckt SQRT_G2_3_227 A=n301 B=y59 C=n299 Y=n356
