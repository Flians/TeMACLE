.subckt COMPLEX2 cl1#B cl1#A VDD cl0#Y cl1#Y VSS
Mcl0#M0 cl0#Y cl1#Y VSS VSS nmos_lvt w=81.0n l=20n nfin=3
Mcl0#M1 cl0#Y cl1#Y VDD VDD pmos_lvt w=81.0n l=20n nfin=3
Mcl1#M3 cl1#net16 cl1#A VSS VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl1#M2 cl1#Y cl1#B cl1#net16 VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl1#M1 cl1#Y cl1#B VDD VDD pmos_lvt w=81.0n l=20n nfin=3
Mcl1#M0 cl1#Y cl1#A VDD VDD pmos_lvt w=81.0n l=20n nfin=3
.ends COMPLEX2
* pattern code: [INVx1,NAND2x1]
* 94 occurrences in design 
* each contains 2 cells
* Example occurence:
*   .subckt INVx1 A=n1872 Y=n1873
*   .subckt NAND2x1 A=n859 B=x367 Y=n1872
