.subckt COMPLEX0 VDD cl2#B cl1#B cl1#A VSS cl2#A cl0#Y
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
.ends COMPLEX0
* pattern code: [NAND2x1,NAND2x1,NOR2x1]
* 67 occurrences in design 
* each contains 3 cells
* Example occurence:
*   .subckt NAND2x1 A=n1019 B=n1020 Y=n1021
*   .subckt NAND2x1 A=n261 B=n1018 Y=n1019
*   .subckt NOR2x1 A=x131 B=x132 Y=n1020