.subckt COMPLEX1 cl3#B VDD cl2#B cl1#B cl1#A VSS cl2#A cl0#Y cl3#Y
Mcl0#M3 cl0#net16 cl1#Y VSS VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl0#M2 cl0#Y cl2#Y cl0#net16 VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl0#M1 cl0#Y cl2#Y VDD VDD pmos_lvt w=81.0n l=20n nfin=3
Mcl0#M0 cl0#Y cl1#Y VDD VDD pmos_lvt w=81.0n l=20n nfin=3
Mcl1#M3 cl1#net16 cl1#A VSS VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl1#M2 cl1#Y cl1#B cl1#net16 VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl1#M1 cl1#Y cl1#B VDD VDD pmos_lvt w=81.0n l=20n nfin=3
Mcl1#M0 cl1#Y cl1#A VDD VDD pmos_lvt w=81.0n l=20n nfin=3
Mcl2#M3 cl2#net16 cl2#A VSS VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl2#M2 cl2#Y cl2#B cl2#net16 VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl2#M1 cl2#Y cl2#B VDD VDD pmos_lvt w=81.0n l=20n nfin=3
Mcl2#M0 cl2#Y cl2#A VDD VDD pmos_lvt w=81.0n l=20n nfin=3
Mcl3#M5 VSS cl3#net7 cl3#Y VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl3#M1 VSS cl3#B cl3#net7 VSS nmos_lvt w=54.0n l=20n nfin=2
Mcl3#M2 VSS cl0#Y cl3#net7 VSS nmos_lvt w=54.0n l=20n nfin=2
Mcl3#M0 VDD cl3#net7 cl3#Y VDD pmos_lvt w=162.00n l=20n nfin=6
Mcl3#M4 cl3#net15 cl3#B cl3#net7 VDD pmos_lvt w=81.0n l=20n nfin=3
Mcl3#M3 VDD cl0#Y cl3#net15 VDD pmos_lvt w=81.0n l=20n nfin=3
.ends COMPLEX1
* pattern code: [NAND2x1,NAND2x1,NAND2x1]+OR2x2_c0o0
* 73 occurrences in design 
* each contains 4 cells
* Example occurence:
*   .subckt NAND2x1 A=n111 B=n113 Y=n114
*   .subckt NAND2x1 A=n42 B=n110 Y=n111
*   .subckt NAND2x1 A=n112 B=x18 Y=n113
*   .subckt OR2x2 A=n114 B=n168 Y=n194
