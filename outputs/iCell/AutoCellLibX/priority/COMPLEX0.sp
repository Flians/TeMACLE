.subckt COMPLEX0 cl2#Y VDD cl2#B cl1#Y cl1#B cl1#A VSS cl2#A cl0#Y
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
.ends COMPLEX0
* pattern code: [NAND2x1,NAND2x1,NAND2x1]
* 146 occurrences in design 
* each contains 3 cells
* Example occurence:
*   .subckt NAND2x1 A=n231 B=n226 Y=n232
*   .subckt NAND2x1 A=n229 B=n230 Y=n231
*   .subckt NAND2x1 A=n210 B=x121 Y=n226
