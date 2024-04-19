.SUBCKT ARBITER_G1_0_900 A B C VDD VSS Y
Mcl3SB347_0#M0 cl3SB347_0#Y C VSS VSS nmos_lvt w=81.0n l=20n nfin=3
Mcl3SB347_0#M1 cl3SB347_0#Y C VDD VDD pmos_lvt w=81.0n l=20n nfin=3
Mcl3SB347_1#clWPEC49_0#M5 VSS cl3SB347_1#clWPEC49_0#net7 cl3SB347_1#clWPEC49_0#Y VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl3SB347_1#clWPEC49_0#M1 VSS cl3SB347_0#Y cl3SB347_1#clWPEC49_0#net7 VSS nmos_lvt w=54.0n l=20n nfin=2
Mcl3SB347_1#clWPEC49_0#M2 VSS B cl3SB347_1#clWPEC49_0#net7 VSS nmos_lvt w=54.0n l=20n nfin=2
Mcl3SB347_1#clWPEC49_0#M0 VDD cl3SB347_1#clWPEC49_0#net7 cl3SB347_1#clWPEC49_0#Y VDD pmos_lvt w=162.00n l=20n nfin=6
Mcl3SB347_1#clWPEC49_0#M4 cl3SB347_1#clWPEC49_0#net15 cl3SB347_0#Y cl3SB347_1#clWPEC49_0#net7 VDD pmos_lvt w=81.0n l=20n nfin=3
Mcl3SB347_1#clWPEC49_0#M3 VDD B cl3SB347_1#clWPEC49_0#net15 VDD pmos_lvt w=81.0n l=20n nfin=3
Mcl3SB347_1#clWPEC49_1#M4 Y cl3SB347_1#clWPEC49_1#net10 VDD VDD pmos_lvt w=162.00n l=20n nfin=6
Mcl3SB347_1#clWPEC49_1#M1 cl3SB347_1#clWPEC49_1#net10 A VDD VDD pmos_lvt w=54.0n l=20n nfin=2
Mcl3SB347_1#clWPEC49_1#M0 cl3SB347_1#clWPEC49_1#net10 cl3SB347_1#clWPEC49_0#Y VDD VDD pmos_lvt w=54.0n l=20n nfin=2
Mcl3SB347_1#clWPEC49_1#M5 Y cl3SB347_1#clWPEC49_1#net10 VSS VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl3SB347_1#clWPEC49_1#M3 cl3SB347_1#clWPEC49_1#net20 cl3SB347_1#clWPEC49_0#Y VSS VSS nmos_lvt w=81.0n l=20n nfin=3
Mcl3SB347_1#clWPEC49_1#M2 cl3SB347_1#clWPEC49_1#net10 A cl3SB347_1#clWPEC49_1#net20 VSS nmos_lvt w=81.0n l=20n nfin=3
.ENDS 
* pattern code: 3|3|ARBITER_G0_2_11957|INVx1=1|INPUT:Y-ARBITER_G0_2_11957:A=1|INPUT:Y-ARBITER_G0_2_11957:B,C=1|INPUT:Y-INVx1:A=1|INVx1:Y-ARBITER_G0_2_11957:B,C=1|01111
* 256 occurrences in design
* each contains 2 cells
* function: A&(B|~C)
* Example occurence:
*   .subckt INVx1 A=x255 Y=n513
*   .subckt ARBITER_G0_2_11957 A=n387 B=n513 C=x0 Y=n1404
