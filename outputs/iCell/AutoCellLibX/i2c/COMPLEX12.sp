.subckt COMPLEX12 VDD cl0#B cl1#B cl1#A VSS
Mcl0#M2 VSS cl1#Y cl0#Y VSS nmos_lvt w=81.0n l=20n nfin=3
Mcl0#M1 VSS cl0#B cl0#Y VSS nmos_lvt w=81.0n l=20n nfin=3
Mcl0#M4 cl0#net16 cl0#B cl0#Y VDD pmos_lvt w=162.00n l=20n nfin=6
Mcl0#M3 VDD cl1#Y cl0#net16 VDD pmos_lvt w=162.00n l=20n nfin=6
Mcl1#M3 cl1#net16 cl1#A VSS VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl1#M2 cl1#Y cl1#B cl1#net16 VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl1#M1 cl1#Y cl1#B VDD VDD pmos_lvt w=81.0n l=20n nfin=3
Mcl1#M0 cl1#Y cl1#A VDD VDD pmos_lvt w=81.0n l=20n nfin=3
.ends COMPLEX12
* pattern code: [NOR2x1,NAND2x1]
* 31 occurrences in design 
* each contains 2 cells
* Example occurence:
*   .subckt NOR2x1 A=n397 B=x3 Y=y19
*   .subckt NAND2x1 A=n224 B=n396 Y=n397
