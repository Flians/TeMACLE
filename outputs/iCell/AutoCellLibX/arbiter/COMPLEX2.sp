.subckt COMPLEX2 VDD cl0#B cl1#Y cl1#A VSS cl0#Y
Mcl0#M3 cl0#net16 cl1#Y VSS VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl0#M2 cl0#Y cl0#B cl0#net16 VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl0#M1 cl0#Y cl0#B VDD VDD pmos_lvt w=81.0n l=20n nfin=3
Mcl0#M0 cl0#Y cl1#Y VDD VDD pmos_lvt w=81.0n l=20n nfin=3
Mcl1#M0 cl1#Y cl1#A VSS VSS nmos_lvt w=81.0n l=20n nfin=3
Mcl1#M1 cl1#Y cl1#A VDD VDD pmos_lvt w=81.0n l=20n nfin=3
.ends COMPLEX2
* pattern code: [NAND2x1,INVx1]
* 255 occurrences in design 
* each contains 2 cells
* Example occurence:
*   .subckt NAND2x1 A=n386 B=x1 Y=n678
*   .subckt INVx1 A=x129 Y=n386
