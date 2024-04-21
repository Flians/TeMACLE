.SUBCKT ARBITER_G1_0_470 A B C VDD VSS Y
Mcl45M86V_0#M0 cl45M86V_0#Y C VSS VSS nmos_lvt w=81.0n l=20n nfin=3
Mcl45M86V_0#M1 cl45M86V_0#Y C VDD VDD pmos_lvt w=81.0n l=20n nfin=3
Mcl45M86V_1#clQ7OLWW_0#M5 VSS cl45M86V_1#clQ7OLWW_0#net7 cl45M86V_1#clQ7OLWW_0#Y VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl45M86V_1#clQ7OLWW_0#M1 VSS A cl45M86V_1#clQ7OLWW_0#net7 VSS nmos_lvt w=54.0n l=20n nfin=2
Mcl45M86V_1#clQ7OLWW_0#M2 VSS B cl45M86V_1#clQ7OLWW_0#net7 VSS nmos_lvt w=54.0n l=20n nfin=2
Mcl45M86V_1#clQ7OLWW_0#M0 VDD cl45M86V_1#clQ7OLWW_0#net7 cl45M86V_1#clQ7OLWW_0#Y VDD pmos_lvt w=162.00n l=20n nfin=6
Mcl45M86V_1#clQ7OLWW_0#M4 cl45M86V_1#clQ7OLWW_0#net15 A cl45M86V_1#clQ7OLWW_0#net7 VDD pmos_lvt w=81.0n l=20n nfin=3
Mcl45M86V_1#clQ7OLWW_0#M3 VDD B cl45M86V_1#clQ7OLWW_0#net15 VDD pmos_lvt w=81.0n l=20n nfin=3
Mcl45M86V_1#clQ7OLWW_1#M4 Y cl45M86V_1#clQ7OLWW_1#net10 VDD VDD pmos_lvt w=162.00n l=20n nfin=6
Mcl45M86V_1#clQ7OLWW_1#M1 cl45M86V_1#clQ7OLWW_1#net10 cl45M86V_0#Y VDD VDD pmos_lvt w=54.0n l=20n nfin=2
Mcl45M86V_1#clQ7OLWW_1#M0 cl45M86V_1#clQ7OLWW_1#net10 cl45M86V_1#clQ7OLWW_0#Y VDD VDD pmos_lvt w=54.0n l=20n nfin=2
Mcl45M86V_1#clQ7OLWW_1#M5 Y cl45M86V_1#clQ7OLWW_1#net10 VSS VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl45M86V_1#clQ7OLWW_1#M3 cl45M86V_1#clQ7OLWW_1#net20 cl45M86V_1#clQ7OLWW_0#Y VSS VSS nmos_lvt w=81.0n l=20n nfin=3
Mcl45M86V_1#clQ7OLWW_1#M2 cl45M86V_1#clQ7OLWW_1#net10 cl45M86V_0#Y cl45M86V_1#clQ7OLWW_1#net20 VSS nmos_lvt w=81.0n l=20n nfin=3
.ENDS 
* pattern code: 3|3|ARBITER_G0_2_11957|INVx1=1|INPUT:Y-ARBITER_G0_2_11957:B,C=2|INPUT:Y-INVx1:A=1|INVx1:Y-ARBITER_G0_2_11957:A=1|01111
* 317 occurrences in design
* each contains 2 cells
* pin map: {'B_470': 'A', 'C_470': 'B', 'A_0': 'C'}
* function: ~C&(A|B)
* Example occurence:
*   .subckt INVx1 A=x255 Y=n513
*   .subckt ARBITER_G0_2_11957 A=n513 B=n511 C=x126 Y=n814
