.subckt COMPLEX30 cl3#B VDD cl2#B cl1#B cl1#A VSS cl2#A cl3#Y
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
Mcl3#M2 VSS cl0#Y cl3#Y VSS nmos_lvt w=81.0n l=20n nfin=3
Mcl3#M1 VSS cl3#B cl3#Y VSS nmos_lvt w=81.0n l=20n nfin=3
Mcl3#M4 cl3#net16 cl3#B cl3#Y VDD pmos_lvt w=162.00n l=20n nfin=6
Mcl3#M3 VDD cl0#Y cl3#net16 VDD pmos_lvt w=162.00n l=20n nfin=6
.ends COMPLEX30
* pattern code: [NAND2x1,NAND2x1,NAND2x1]+NOR2x1_c0o0
* 1191 occurrences in design 
* each contains 4 cells
* Example occurence:
*   .subckt NAND2x1 A=n491 B=n492 Y=n493
*   .subckt NAND2x1 A=n328 B=x68 Y=n491
*   .subckt NAND2x1 A=n369 B=x67 Y=n492
*   .subckt NOR2x1 A=n493 B=n494 Y=n495
