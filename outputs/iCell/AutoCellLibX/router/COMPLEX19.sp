.subckt COMPLEX19 cl3#B VDD cl2#B cl1#A cl4#B VSS cl2#A cl4#Y
Mcl0#M5 VSS cl0#net7 cl0#Y VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl0#M1 VSS cl2#Y cl0#net7 VSS nmos_lvt w=54.0n l=20n nfin=2
Mcl0#M2 VSS cl1#Y cl0#net7 VSS nmos_lvt w=54.0n l=20n nfin=2
Mcl0#M0 VDD cl0#net7 cl0#Y VDD pmos_lvt w=162.00n l=20n nfin=6
Mcl0#M4 cl0#net15 cl2#Y cl0#net7 VDD pmos_lvt w=81.0n l=20n nfin=3
Mcl0#M3 VDD cl1#Y cl0#net15 VDD pmos_lvt w=81.0n l=20n nfin=3
Mcl1#M0 cl1#Y cl1#A VSS VSS nmos_lvt w=81.0n l=20n nfin=3
Mcl1#M1 cl1#Y cl1#A VDD VDD pmos_lvt w=81.0n l=20n nfin=3
Mcl2#M3 cl2#net16 cl2#A VSS VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl2#M2 cl2#Y cl2#B cl2#net16 VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl2#M1 cl2#Y cl2#B VDD VDD pmos_lvt w=81.0n l=20n nfin=3
Mcl2#M0 cl2#Y cl2#A VDD VDD pmos_lvt w=81.0n l=20n nfin=3
Mcl3#M3 cl3#net16 cl0#Y VSS VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl3#M2 cl3#Y cl3#B cl3#net16 VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl3#M1 cl3#Y cl3#B VDD VDD pmos_lvt w=81.0n l=20n nfin=3
Mcl3#M0 cl3#Y cl0#Y VDD VDD pmos_lvt w=81.0n l=20n nfin=3
Mcl4#M4 cl4#Y cl4#net10 VDD VDD pmos_lvt w=162.00n l=20n nfin=6
Mcl4#M1 cl4#net10 cl4#B VDD VDD pmos_lvt w=54.0n l=20n nfin=2
Mcl4#M0 cl4#net10 cl3#Y VDD VDD pmos_lvt w=54.0n l=20n nfin=2
Mcl4#M5 cl4#Y cl4#net10 VSS VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl4#M3 cl4#net20 cl3#Y VSS VSS nmos_lvt w=81.0n l=20n nfin=3
Mcl4#M2 cl4#net10 cl4#B cl4#net20 VSS nmos_lvt w=81.0n l=20n nfin=3
.ends COMPLEX19
* pattern code: [OR2x2,INVx1,NAND2x1]+NAND2x1_c0o0+AND2x2_c3o0
* 10 occurrences in design 
* each contains 5 cells
* Example occurence:
*   .subckt OR2x2 A=n64 B=n155 Y=n156
*   .subckt INVx1 A=x10 Y=n64
*   .subckt NAND2x1 A=n65 B=x9 Y=n155
*   .subckt NAND2x1 A=n156 B=n158 Y=n159
*   .subckt AND2x2 A=n159 B=n154 Y=n160
