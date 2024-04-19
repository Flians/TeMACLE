.SUBCKT DIV_G3_435_436 A B C VDD VSS Y
Mcl9M7G1Q_0#M11 VSS B cl9M7G1Q_0#net047 VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl9M7G1Q_0#M10 cl9M7G1Q_0#net047 C cl9M7G1Q_0#Y VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl9M7G1Q_0#M9 VSS cl9M7G1Q_0#net036 cl9M7G1Q_0#Y VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl9M7G1Q_0#M0 VSS B cl9M7G1Q_0#net036 VSS nmos_lvt w=81.0n l=20n nfin=3
Mcl9M7G1Q_0#M1 VSS C cl9M7G1Q_0#net036 VSS nmos_lvt w=81.0n l=20n nfin=3
Mcl9M7G1Q_0#M4 VDD B cl9M7G1Q_0#net019 VDD pmos_lvt w=162.00n l=20n nfin=6
Mcl9M7G1Q_0#M5 VDD C cl9M7G1Q_0#net019 VDD pmos_lvt w=162.00n l=20n nfin=6
Mcl9M7G1Q_0#M6 cl9M7G1Q_0#net019 cl9M7G1Q_0#net036 cl9M7G1Q_0#Y VDD pmos_lvt w=162.00n l=20n nfin=6
Mcl9M7G1Q_0#M2 cl9M7G1Q_0#net048 C cl9M7G1Q_0#net036 VDD pmos_lvt w=81.0n l=20n nfin=3
Mcl9M7G1Q_0#M3 VDD B cl9M7G1Q_0#net048 VDD pmos_lvt w=81.0n l=20n nfin=3
Mcl9M7G1Q_1#M4 Y cl9M7G1Q_1#net10 VDD VDD pmos_lvt w=162.00n l=20n nfin=6
Mcl9M7G1Q_1#M1 cl9M7G1Q_1#net10 cl9M7G1Q_0#Y VDD VDD pmos_lvt w=54.0n l=20n nfin=2
Mcl9M7G1Q_1#M0 cl9M7G1Q_1#net10 A VDD VDD pmos_lvt w=54.0n l=20n nfin=2
Mcl9M7G1Q_1#M5 Y cl9M7G1Q_1#net10 VSS VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl9M7G1Q_1#M3 cl9M7G1Q_1#net20 A VSS VSS nmos_lvt w=81.0n l=20n nfin=3
Mcl9M7G1Q_1#M2 cl9M7G1Q_1#net10 cl9M7G1Q_0#Y cl9M7G1Q_1#net20 VSS nmos_lvt w=81.0n l=20n nfin=3
.ENDS 
* pattern code: 2|3|AND2x2|XOR2x1=1|INPUT:Y-AND2x2:A,B=1|INPUT:Y-XOR2x1:A,B=2|XOR2x1:Y-AND2x2:A,B=1|01111
* 3641 occurrences in design
* each contains 2 cells
* function: A&(B|C)&(~B|~C)
* Example occurence:
*   .subckt XOR2x1 A=n607 B=n675 Y=n683
*   .subckt AND2x2 A=y58 B=n683 Y=n684
