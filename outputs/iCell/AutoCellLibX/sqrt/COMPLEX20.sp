.subckt COMPLEX20 cl3#B cl2#Y VDD cl3#A cl1#B VSS cl2#A cl0#Y cl3#Y
Mcl0#M5 VSS cl0#net7 cl0#Y VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl0#M1 VSS cl2#Y cl0#net7 VSS nmos_lvt w=54.0n l=20n nfin=2
Mcl0#M2 VSS cl1#Y cl0#net7 VSS nmos_lvt w=54.0n l=20n nfin=2
Mcl0#M0 VDD cl0#net7 cl0#Y VDD pmos_lvt w=162.00n l=20n nfin=6
Mcl0#M4 cl0#net15 cl2#Y cl0#net7 VDD pmos_lvt w=81.0n l=20n nfin=3
Mcl0#M3 VDD cl1#Y cl0#net15 VDD pmos_lvt w=81.0n l=20n nfin=3
Mcl1#M3 cl1#net16 cl3#Y VSS VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl1#M2 cl1#Y cl1#B cl1#net16 VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl1#M1 cl1#Y cl1#B VDD VDD pmos_lvt w=81.0n l=20n nfin=3
Mcl1#M0 cl1#Y cl3#Y VDD VDD pmos_lvt w=81.0n l=20n nfin=3
Mcl2#M0 cl2#Y cl2#A VSS VSS nmos_lvt w=81.0n l=20n nfin=3
Mcl2#M1 cl2#Y cl2#A VDD VDD pmos_lvt w=81.0n l=20n nfin=3
Mcl3#M3 cl3#net16 cl3#A VSS VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl3#M2 cl3#Y cl3#B cl3#net16 VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl3#M1 cl3#Y cl3#B VDD VDD pmos_lvt w=81.0n l=20n nfin=3
Mcl3#M0 cl3#Y cl3#A VDD VDD pmos_lvt w=81.0n l=20n nfin=3
.ends COMPLEX20
* pattern code: [OR2x2,NAND2x1,INVx1]+NAND2x1_c1i0
* 1722 occurrences in design 
* each contains 4 cells
* Example occurence:
*   .subckt OR2x2 A=n312 B=n288 Y=n313
*   .subckt NAND2x1 A=n298 B=n304 Y=n312
*   .subckt INVx1 A=n287 Y=n288
*   .subckt NAND2x1 A=n289 B=n296 Y=n298
