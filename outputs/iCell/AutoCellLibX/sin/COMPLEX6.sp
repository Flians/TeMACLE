.subckt COMPLEX6 cl1#B cl1#A VDD cl0#Y cl1#Y cl1#C VSS
Mcl0#M0 cl0#Y cl1#Y VSS VSS nmos_lvt w=81.0n l=20n nfin=3
Mcl0#M1 cl0#Y cl1#Y VDD VDD pmos_lvt w=81.0n l=20n nfin=3
Mcl1#M0 cl1#Y cl1#A cl1#net22 VSS nmos_lvt w=243.00n l=20n nfin=9
Mcl1#M1 cl1#net22 cl1#B cl1#net21 VSS nmos_lvt w=243.00n l=20n nfin=9
Mcl1#M2 cl1#net21 cl1#C VSS VSS nmos_lvt w=243.00n l=20n nfin=9
Mcl1#M3 cl1#Y cl1#A VDD VDD pmos_lvt w=81.0n l=20n nfin=3
Mcl1#M4 cl1#Y cl1#B VDD VDD pmos_lvt w=81.0n l=20n nfin=3
Mcl1#M5 cl1#Y cl1#C VDD VDD pmos_lvt w=81.0n l=20n nfin=3
.ends COMPLEX6
* pattern code: [INVx1,NAND3x1]
* 45 occurrences in design 
* each contains 2 cells
* Example occurence:
*   .subckt INVx1 A=n242 Y=n243
*   .subckt NAND3x1 A=n236 B=n239 C=n240 Y=n242
