.subckt COMPLEX6 cl2#Y VDD cl2#B cl3#A cl1#B cl1#A VSS cl2#A cl0#Y cl3#Y
Mcl0#M3 cl0#net16 cl1#Y VSS VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl0#M2 cl0#Y cl2#Y cl0#net16 VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl0#M1 cl0#Y cl2#Y VDD VDD pmos_lvt w=81.0n l=20n nfin=3
Mcl0#M0 cl0#Y cl1#Y VDD VDD pmos_lvt w=81.0n l=20n nfin=3
Mcl1#M3 cl1#net16 cl1#A VSS VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl1#M2 cl1#Y cl1#B cl1#net16 VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl1#M1 cl1#Y cl1#B VDD VDD pmos_lvt w=81.0n l=20n nfin=3
Mcl1#M0 cl1#Y cl1#A VDD VDD pmos_lvt w=81.0n l=20n nfin=3
Mcl2#M2 VSS cl2#A cl2#Y VSS nmos_lvt w=81.0n l=20n nfin=3
Mcl2#M1 VSS cl2#B cl2#Y VSS nmos_lvt w=81.0n l=20n nfin=3
Mcl2#M4 cl2#net16 cl2#B cl2#Y VDD pmos_lvt w=162.00n l=20n nfin=6
Mcl2#M3 VDD cl2#A cl2#net16 VDD pmos_lvt w=162.00n l=20n nfin=6
Mcl3#M3 cl3#net16 cl3#A VSS VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl3#M2 cl3#Y cl2#Y cl3#net16 VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl3#M1 cl3#Y cl2#Y VDD VDD pmos_lvt w=81.0n l=20n nfin=3
Mcl3#M0 cl3#Y cl3#A VDD VDD pmos_lvt w=81.0n l=20n nfin=3
.ends COMPLEX6
* pattern code: [NAND2x1,NAND2x1,NOR2x1]+NAND2x1_c2o0
* 128 occurrences in design 
* each contains 4 cells
* Example occurence:
*   .subckt NAND2x1 A=n683 B=n674 Y=n684
*   .subckt NAND2x1 A=n682 B=n677 Y=n683
*   .subckt NOR2x1 A=n673 B=x133 Y=n674
*   .subckt NAND2x1 A=n2073 B=n674 Y=n2074
