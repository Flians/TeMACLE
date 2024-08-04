.subckt COMPLEX16 cl3#B VDD cl2#B cl1#B cl1#A VSS cl4#B cl2#A cl4#Y cl5#B cl0#Y cl5#Y
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
Mcl3#M3 cl3#net16 cl0#Y VSS VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl3#M2 cl3#Y cl3#B cl3#net16 VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl3#M1 cl3#Y cl3#B VDD VDD pmos_lvt w=81.0n l=20n nfin=3
Mcl3#M0 cl3#Y cl0#Y VDD VDD pmos_lvt w=81.0n l=20n nfin=3
Mcl4#M3 cl4#net16 cl3#Y VSS VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl4#M2 cl4#Y cl4#B cl4#net16 VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl4#M1 cl4#Y cl4#B VDD VDD pmos_lvt w=81.0n l=20n nfin=3
Mcl4#M0 cl4#Y cl3#Y VDD VDD pmos_lvt w=81.0n l=20n nfin=3
Mcl5#M3 cl5#net16 cl4#Y VSS VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl5#M2 cl5#Y cl5#B cl5#net16 VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl5#M1 cl5#Y cl5#B VDD VDD pmos_lvt w=81.0n l=20n nfin=3
Mcl5#M0 cl5#Y cl4#Y VDD VDD pmos_lvt w=81.0n l=20n nfin=3
.ends COMPLEX16
* pattern code: [NAND2x1,NAND2x1,NAND2x1]+NAND2x1_c0o0+NAND2x1_c3o0+NAND2x1_c4o0
* 124 occurrences in design 
* each contains 6 cells
* Example occurence:
*   .subckt NAND2x1 A=n144 B=n145 Y=n146
*   .subckt NAND2x1 A=x77 B=x128 Y=n144
*   .subckt NAND2x1 A=n137 B=x78 Y=n145
*   .subckt NAND2x1 A=n146 B=x129 Y=n147
*   .subckt NAND2x1 A=n147 B=n151 Y=n152
*   .subckt NAND2x1 A=n152 B=x130 Y=n1547
