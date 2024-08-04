.subckt COMPLEX1 cl2#Y VDD cl2#B cl0#B cl1#B cl1#A VSS
Mcl0#M5 VSS cl0#net7 cl0#Y VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl0#M1 VSS cl0#B cl0#net7 VSS nmos_lvt w=54.0n l=20n nfin=2
Mcl0#M2 VSS cl1#Y cl0#net7 VSS nmos_lvt w=54.0n l=20n nfin=2
Mcl0#M0 VDD cl0#net7 cl0#Y VDD pmos_lvt w=162.00n l=20n nfin=6
Mcl0#M4 cl0#net15 cl0#B cl0#net7 VDD pmos_lvt w=81.0n l=20n nfin=3
Mcl0#M3 VDD cl1#Y cl0#net15 VDD pmos_lvt w=81.0n l=20n nfin=3
Mcl1#M3 cl1#net16 cl1#A VSS VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl1#M2 cl1#Y cl1#B cl1#net16 VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl1#M1 cl1#Y cl1#B VDD VDD pmos_lvt w=81.0n l=20n nfin=3
Mcl1#M0 cl1#Y cl1#A VDD VDD pmos_lvt w=81.0n l=20n nfin=3
Mcl2#M5 VSS cl2#net7 cl2#Y VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl2#M1 VSS cl2#B cl2#net7 VSS nmos_lvt w=54.0n l=20n nfin=2
Mcl2#M2 VSS cl0#Y cl2#net7 VSS nmos_lvt w=54.0n l=20n nfin=2
Mcl2#M0 VDD cl2#net7 cl2#Y VDD pmos_lvt w=162.00n l=20n nfin=6
Mcl2#M4 cl2#net15 cl2#B cl2#net7 VDD pmos_lvt w=81.0n l=20n nfin=3
Mcl2#M3 VDD cl0#Y cl2#net15 VDD pmos_lvt w=81.0n l=20n nfin=3
.ends COMPLEX1
* pattern code: [OR2x2,NAND2x1]+OR2x2_c0o0
* 11 occurrences in design 
* each contains 3 cells
* Example occurence:
*   .subckt OR2x2 A=n55 B=x7 Y=n56
*   .subckt NAND2x1 A=n51 B=n54 Y=n55
*   .subckt OR2x2 A=n56 B=x6 Y=n57
