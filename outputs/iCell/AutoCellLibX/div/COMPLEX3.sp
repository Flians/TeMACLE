.subckt COMPLEX3 cl2#Y VDD cl2#B cl1#Y cl1#B cl1#A VSS cl2#A cl0#Y
Mcl0#M3 cl0#net16 cl1#Y VSS VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl0#M2 cl0#Y cl2#Y cl0#net16 VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl0#M1 cl0#Y cl2#Y VDD VDD pmos_lvt w=81.0n l=20n nfin=3
Mcl0#M0 cl0#Y cl1#Y VDD VDD pmos_lvt w=81.0n l=20n nfin=3
Mcl1#M3 cl1#net16 cl1#A VSS VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl1#M2 cl1#Y cl1#B cl1#net16 VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl1#M1 cl1#Y cl1#B VDD VDD pmos_lvt w=81.0n l=20n nfin=3
Mcl1#M0 cl1#Y cl1#A VDD VDD pmos_lvt w=81.0n l=20n nfin=3
Mcl2#M5 VSS cl2#net7 cl2#Y VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl2#M1 VSS cl2#B cl2#net7 VSS nmos_lvt w=54.0n l=20n nfin=2
Mcl2#M2 VSS cl2#A cl2#net7 VSS nmos_lvt w=54.0n l=20n nfin=2
Mcl2#M0 VDD cl2#net7 cl2#Y VDD pmos_lvt w=162.00n l=20n nfin=6
Mcl2#M4 cl2#net15 cl2#B cl2#net7 VDD pmos_lvt w=81.0n l=20n nfin=3
Mcl2#M3 VDD cl2#A cl2#net15 VDD pmos_lvt w=81.0n l=20n nfin=3
.ends COMPLEX3
* pattern code: [NAND2x1,NAND2x1,OR2x2]
* 62 occurrences in design 
* each contains 3 cells
* Example occurence:
*   .subckt NAND2x1 A=n469 B=n471 Y=n472
*   .subckt NAND2x1 A=n449 B=n467 Y=n469
*   .subckt OR2x2 A=x66 B=n447 Y=n471
