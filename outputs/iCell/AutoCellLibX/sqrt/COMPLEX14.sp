.subckt COMPLEX14 cl2#B cl1#B cl1#A VDD cl2#Y cl0#Y cl1#Y VSS
Mcl0#M0 cl0#Y cl1#Y VSS VSS nmos_lvt w=81.0n l=20n nfin=3
Mcl0#M1 cl0#Y cl1#Y VDD VDD pmos_lvt w=81.0n l=20n nfin=3
Mcl1#M4 cl1#net015 cl1#A VSS VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl1#M5 cl1#net015 cl1#B VSS VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl1#M6 cl1#Y cl1#net29 cl1#net015 VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl1#M2 cl1#net29 cl1#B cl1#net43 VSS nmos_lvt w=81.0n l=20n nfin=3
Mcl1#M3 cl1#net43 cl1#A VSS VSS nmos_lvt w=81.0n l=20n nfin=3
Mcl1#M11 cl1#net041 cl1#A VDD VDD pmos_lvt w=162.00n l=20n nfin=6
Mcl1#M10 cl1#Y cl1#B cl1#net041 VDD pmos_lvt w=162.00n l=20n nfin=6
Mcl1#M9 cl1#Y cl1#net29 VDD VDD pmos_lvt w=162.00n l=20n nfin=6
Mcl1#M0 cl1#net29 cl1#A VDD VDD pmos_lvt w=81.0n l=20n nfin=3
Mcl1#M1 cl1#net29 cl1#B VDD VDD pmos_lvt w=81.0n l=20n nfin=3
Mcl2#M4 cl2#net015 cl1#Y VSS VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl2#M5 cl2#net015 cl2#B VSS VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl2#M6 cl2#Y cl2#net29 cl2#net015 VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl2#M2 cl2#net29 cl2#B cl2#net43 VSS nmos_lvt w=81.0n l=20n nfin=3
Mcl2#M3 cl2#net43 cl1#Y VSS VSS nmos_lvt w=81.0n l=20n nfin=3
Mcl2#M11 cl2#net041 cl1#Y VDD VDD pmos_lvt w=162.00n l=20n nfin=6
Mcl2#M10 cl2#Y cl2#B cl2#net041 VDD pmos_lvt w=162.00n l=20n nfin=6
Mcl2#M9 cl2#Y cl2#net29 VDD VDD pmos_lvt w=162.00n l=20n nfin=6
Mcl2#M0 cl2#net29 cl1#Y VDD VDD pmos_lvt w=81.0n l=20n nfin=3
Mcl2#M1 cl2#net29 cl2#B VDD VDD pmos_lvt w=81.0n l=20n nfin=3
.ends COMPLEX14
* pattern code: [INVx1,XNOR2x1]+XNOR2x1_c1o0
* 850 occurrences in design 
* each contains 3 cells
* Example occurence:
*   .subckt INVx1 A=n439 Y=n440
*   .subckt XNOR2x1 A=n364 B=n438 Y=n439
*   .subckt XNOR2x1 A=n439 B=n520 Y=n521
