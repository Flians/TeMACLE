.subckt COMPLEX1 cl2#Y VDD cl2#B cl1#A VSS cl2#A cl0#Y cl3#Y
Mcl0#M5 VSS cl0#net7 cl0#Y VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl0#M1 VSS cl2#Y cl0#net7 VSS nmos_lvt w=54.0n l=20n nfin=2
Mcl0#M2 VSS cl1#Y cl0#net7 VSS nmos_lvt w=54.0n l=20n nfin=2
Mcl0#M0 VDD cl0#net7 cl0#Y VDD pmos_lvt w=162.00n l=20n nfin=6
Mcl0#M4 cl0#net15 cl2#Y cl0#net7 VDD pmos_lvt w=81.0n l=20n nfin=3
Mcl0#M3 VDD cl1#Y cl0#net15 VDD pmos_lvt w=81.0n l=20n nfin=3
Mcl1#M0 cl1#Y cl1#A VSS VSS nmos_lvt w=81.0n l=20n nfin=3
Mcl1#M1 cl1#Y cl1#A VDD VDD pmos_lvt w=81.0n l=20n nfin=3
Mcl2#M4 cl2#Y cl2#net10 VDD VDD pmos_lvt w=162.00n l=20n nfin=6
Mcl2#M1 cl2#net10 cl2#B VDD VDD pmos_lvt w=54.0n l=20n nfin=2
Mcl2#M0 cl2#net10 cl2#A VDD VDD pmos_lvt w=54.0n l=20n nfin=2
Mcl2#M5 cl2#Y cl2#net10 VSS VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl2#M3 cl2#net20 cl2#A VSS VSS nmos_lvt w=81.0n l=20n nfin=3
Mcl2#M2 cl2#net10 cl2#B cl2#net20 VSS nmos_lvt w=81.0n l=20n nfin=3
Mcl3#M3 cl3#net16 cl1#Y VSS VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl3#M2 cl3#Y cl2#Y cl3#net16 VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl3#M1 cl3#Y cl2#Y VDD VDD pmos_lvt w=81.0n l=20n nfin=3
Mcl3#M0 cl3#Y cl1#Y VDD VDD pmos_lvt w=81.0n l=20n nfin=3
.ends COMPLEX1
* pattern code: [OR2x2,INVx1,AND2x2]+NAND2x1_c1o0c2o0
* 126 occurrences in design 
* each contains 4 cells
* Example occurence:
*   .subckt OR2x2 A=n260 B=n394 Y=n395
*   .subckt INVx1 A=x2 Y=n260
*   .subckt AND2x2 A=n391 B=n393 Y=n394
*   .subckt NAND2x1 A=n260 B=n394 Y=n396
