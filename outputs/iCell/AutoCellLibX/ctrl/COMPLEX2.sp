.subckt COMPLEX2 cl3#B VDD cl2#B cl3#A cl0#B cl1#B VSS cl3#Y
Mcl0#M3 cl0#net16 cl1#Y VSS VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl0#M2 cl0#Y cl0#B cl0#net16 VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl0#M1 cl0#Y cl0#B VDD VDD pmos_lvt w=81.0n l=20n nfin=3
Mcl0#M0 cl0#Y cl1#Y VDD VDD pmos_lvt w=81.0n l=20n nfin=3
Mcl1#M3 cl1#net16 cl3#Y VSS VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl1#M2 cl1#Y cl1#B cl1#net16 VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl1#M1 cl1#Y cl1#B VDD VDD pmos_lvt w=81.0n l=20n nfin=3
Mcl1#M0 cl1#Y cl3#Y VDD VDD pmos_lvt w=81.0n l=20n nfin=3
Mcl2#M3 cl2#net16 cl0#Y VSS VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl2#M2 cl2#Y cl2#B cl2#net16 VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl2#M1 cl2#Y cl2#B VDD VDD pmos_lvt w=81.0n l=20n nfin=3
Mcl2#M0 cl2#Y cl0#Y VDD VDD pmos_lvt w=81.0n l=20n nfin=3
Mcl3#M3 cl3#net16 cl3#A VSS VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl3#M2 cl3#Y cl3#B cl3#net16 VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl3#M1 cl3#Y cl3#B VDD VDD pmos_lvt w=81.0n l=20n nfin=3
Mcl3#M0 cl3#Y cl3#A VDD VDD pmos_lvt w=81.0n l=20n nfin=3
.ends COMPLEX2
* pattern code: [NAND2x1,NAND2x1]+NAND2x1_c0o0+NAND2x1_c1i0
* 4 occurrences in design 
* each contains 4 cells
* Example occurence:
*   .subckt NAND2x1 A=n18 B=x2 Y=n19
*   .subckt NAND2x1 A=n15 B=n17 Y=n18
*   .subckt NAND2x1 A=n19 B=n23 Y=y0
*   .subckt NAND2x1 A=x3 B=x4 Y=n15
