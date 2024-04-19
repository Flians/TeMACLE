.SUBCKT I2C_G4_342_736 A B C VDD VSS Y
MM0 YC C VSS VSS nmos_lvt w=81.0n l=20n nfin=3
MM1 YC C VDD VDD pmos_lvt w=81.0n l=20n nfin=3
MclV04J92_0#M4 clV04J92_0#Y clV04J92_0#net10 VDD VDD pmos_lvt w=162.00n l=20n nfin=6
MclV04J92_0#M1 clV04J92_0#net10 YC VDD VDD pmos_lvt w=54.0n l=20n nfin=2
MclV04J92_0#M0 clV04J92_0#net10 A VDD VDD pmos_lvt w=54.0n l=20n nfin=2
MclV04J92_0#M5 clV04J92_0#Y clV04J92_0#net10 VSS VSS nmos_lvt w=162.00n l=20n nfin=6
MclV04J92_0#M3 clV04J92_0#net20 A VSS VSS nmos_lvt w=81.0n l=20n nfin=3
MclV04J92_0#M2 clV04J92_0#net10 YC clV04J92_0#net20 VSS nmos_lvt w=81.0n l=20n nfin=3
MclV04J92_1#M2 VSS clV04J92_0#Y Y VSS nmos_lvt w=81.0n l=20n nfin=3
MclV04J92_1#M1 VSS B Y VSS nmos_lvt w=81.0n l=20n nfin=3
MclV04J92_1#M4 clV04J92_1#net16 B Y VDD pmos_lvt w=162.00n l=20n nfin=6
MclV04J92_1#M3 VDD clV04J92_0#Y clV04J92_1#net16 VDD pmos_lvt w=162.00n l=20n nfin=6
.ENDS 
* pattern code: 3|3|I2C_G3_15_25|INVx1=1|INPUT:Y-I2C_G3_15_25:A,B=1|INPUT:Y-I2C_G3_15_25:C=1|INPUT:Y-INVx1:A=1|INVx1:Y-I2C_G3_15_25:A,B=1|01111
* 27 occurrences in design
* each contains 2 cells
* function: ~B&(C|~A)
* Example occurence: 4 nodes
*   .subckt INVx1 A=x53 Y=n189
*   .subckt I2C_G3_15_25 A=n189 B=n170 C=n894 Y=n895
* Example occurence: 3 nodes
*   .subckt INVx1 A=x53 Y=n189
*   .subckt AND2x2 A=n189 B=n170 Y=n409
*   .subckt NOR2x1 A=n409 B=n894 Y=n895
