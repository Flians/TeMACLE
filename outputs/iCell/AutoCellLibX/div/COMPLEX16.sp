.subckt COMPLEX16 cl1#B cl1#A VDD cl2#Y cl0#Y cl2#A cl1#Y VSS
Mcl0#M3 cl0#net16 cl1#Y VSS VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl0#M2 cl0#Y cl2#Y cl0#net16 VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl0#M1 cl0#Y cl2#Y VDD VDD pmos_lvt w=81.0n l=20n nfin=3
Mcl0#M0 cl0#Y cl1#Y VDD VDD pmos_lvt w=81.0n l=20n nfin=3
Mcl1#M3 cl1#net16 cl1#A VSS VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl1#M2 cl1#Y cl1#B cl1#net16 VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl1#M1 cl1#Y cl1#B VDD VDD pmos_lvt w=81.0n l=20n nfin=3
Mcl1#M0 cl1#Y cl1#A VDD VDD pmos_lvt w=81.0n l=20n nfin=3
Mcl2#M0 cl2#Y cl2#A VSS VSS nmos_lvt w=81.0n l=20n nfin=3
Mcl2#M1 cl2#Y cl2#A VDD VDD pmos_lvt w=81.0n l=20n nfin=3
.ends COMPLEX16
* pattern code: [NAND2x1,NAND2x1,INVx1]
* 497 occurrences in design 
* each contains 3 cells
* Example occurence:
*   .subckt NAND2x1 A=n1167 B=n1059 Y=n1180
*   .subckt NAND2x1 A=n1065 B=n1166 Y=n1167
*   .subckt INVx1 A=n1058 Y=n1059
