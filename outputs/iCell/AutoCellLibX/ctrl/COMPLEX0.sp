.subckt COMPLEX0 VDD cl0#B cl1#A VSS cl0#Y cl1#Y
Mcl0#M3 cl0#net16 cl1#Y VSS VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl0#M2 cl0#Y cl0#B cl0#net16 VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl0#M1 cl0#Y cl0#B VDD VDD pmos_lvt w=81.0n l=20n nfin=3
Mcl0#M0 cl0#Y cl1#Y VDD VDD pmos_lvt w=81.0n l=20n nfin=3
Mcl1#M0 cl1#Y cl1#A VSS VSS nmos_lvt w=81.0n l=20n nfin=3
Mcl1#M1 cl1#Y cl1#A VDD VDD pmos_lvt w=81.0n l=20n nfin=3
.ends COMPLEX0
* pattern code: [NAND2x1,INVx1]
* 3 occurrences in design 
* each contains 2 cells
* Example occurence:
*   .subckt NAND2x1 A=n10 B=x3 Y=n26
*   .subckt INVx1 A=x1 Y=n10
