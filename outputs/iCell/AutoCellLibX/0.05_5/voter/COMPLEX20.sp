.subckt COMPLEX20 cl0#Y VDD cl1#A2 cl2#Y cl1#Y cl1#A1 cl1#B VSS cl2#A
Mcl0#M0 cl0#Y cl1#Y VSS VSS nmos_lvt w=81.0n l=20n nfin=3
Mcl0#M1 cl0#Y cl1#Y VDD VDD pmos_lvt w=81.0n l=20n nfin=3
Mcl1#M4 cl1#Y cl1#B VSS VSS nmos_lvt w=108.00n l=20n nfin=4
Mcl1#M3 cl1#Y cl1#A1 cl1#net29 VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl1#M2 cl1#net29 cl1#A2 VSS VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl1#M5 cl1#net18 cl1#A2 VDD VDD pmos_lvt w=162.00n l=20n nfin=6
Mcl1#M0 cl1#Y cl1#B cl1#net18 VDD pmos_lvt w=162.00n l=20n nfin=6
Mcl1#M1 cl1#net18 cl1#A1 VDD VDD pmos_lvt w=162.00n l=20n nfin=6
Mcl2#M4 cl2#net015 cl2#A VSS VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl2#M5 cl2#net015 cl1#Y VSS VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl2#M6 cl2#Y cl2#net29 cl2#net015 VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl2#M2 cl2#net29 cl1#Y cl2#net43 VSS nmos_lvt w=81.0n l=20n nfin=3
Mcl2#M3 cl2#net43 cl2#A VSS VSS nmos_lvt w=81.0n l=20n nfin=3
Mcl2#M11 cl2#net041 cl2#A VDD VDD pmos_lvt w=162.00n l=20n nfin=6
Mcl2#M10 cl2#Y cl1#Y cl2#net041 VDD pmos_lvt w=162.00n l=20n nfin=6
Mcl2#M9 cl2#Y cl2#net29 VDD VDD pmos_lvt w=162.00n l=20n nfin=6
Mcl2#M0 cl2#net29 cl2#A VDD VDD pmos_lvt w=81.0n l=20n nfin=3
Mcl2#M1 cl2#net29 cl1#Y VDD VDD pmos_lvt w=81.0n l=20n nfin=3
.ends COMPLEX20
* pattern code: [INVx1,AOI21x1]+XNOR2x1_c1o0
* 88 occurrences in design 
* each contains 3 cells
* Example occurence:
*   .subckt INVx1 A=n4713 Y=n4714
*   .subckt AOI21x1 A1=n4631 A2=n4624 B=n4644 Y=n4713
*   .subckt XNOR2x1 A=n4711 B=n4713 Y=n4715
