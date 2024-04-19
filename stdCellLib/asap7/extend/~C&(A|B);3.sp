.SUBCKT ARBITER_G1_0_470 A B C VDD VSS Y
Mcl9J3H70_0#M0 cl9J3H70_0#Y C VSS VSS nmos_lvt w=81.0n l=20n nfin=3
Mcl9J3H70_0#M1 cl9J3H70_0#Y C VDD VDD pmos_lvt w=81.0n l=20n nfin=3
Mcl9J3H70_1#clJ70ZFV_0#M5 VSS cl9J3H70_1#clJ70ZFV_0#net7 cl9J3H70_1#clJ70ZFV_0#Y VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl9J3H70_1#clJ70ZFV_0#M1 VSS A cl9J3H70_1#clJ70ZFV_0#net7 VSS nmos_lvt w=54.0n l=20n nfin=2
Mcl9J3H70_1#clJ70ZFV_0#M2 VSS B cl9J3H70_1#clJ70ZFV_0#net7 VSS nmos_lvt w=54.0n l=20n nfin=2
Mcl9J3H70_1#clJ70ZFV_0#M0 VDD cl9J3H70_1#clJ70ZFV_0#net7 cl9J3H70_1#clJ70ZFV_0#Y VDD pmos_lvt w=162.00n l=20n nfin=6
Mcl9J3H70_1#clJ70ZFV_0#M4 cl9J3H70_1#clJ70ZFV_0#net15 A cl9J3H70_1#clJ70ZFV_0#net7 VDD pmos_lvt w=81.0n l=20n nfin=3
Mcl9J3H70_1#clJ70ZFV_0#M3 VDD B cl9J3H70_1#clJ70ZFV_0#net15 VDD pmos_lvt w=81.0n l=20n nfin=3
Mcl9J3H70_1#clJ70ZFV_1#M4 Y cl9J3H70_1#clJ70ZFV_1#net10 VDD VDD pmos_lvt w=162.00n l=20n nfin=6
Mcl9J3H70_1#clJ70ZFV_1#M1 cl9J3H70_1#clJ70ZFV_1#net10 cl9J3H70_0#Y VDD VDD pmos_lvt w=54.0n l=20n nfin=2
Mcl9J3H70_1#clJ70ZFV_1#M0 cl9J3H70_1#clJ70ZFV_1#net10 cl9J3H70_1#clJ70ZFV_0#Y VDD VDD pmos_lvt w=54.0n l=20n nfin=2
Mcl9J3H70_1#clJ70ZFV_1#M5 Y cl9J3H70_1#clJ70ZFV_1#net10 VSS VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl9J3H70_1#clJ70ZFV_1#M3 cl9J3H70_1#clJ70ZFV_1#net20 cl9J3H70_1#clJ70ZFV_0#Y VSS VSS nmos_lvt w=81.0n l=20n nfin=3
Mcl9J3H70_1#clJ70ZFV_1#M2 cl9J3H70_1#clJ70ZFV_1#net10 cl9J3H70_0#Y cl9J3H70_1#clJ70ZFV_1#net20 VSS nmos_lvt w=81.0n l=20n nfin=3
.ENDS 
* pattern code: 3|3|ARBITER_G0_2_11957|INVx1=1|INPUT:Y-ARBITER_G0_2_11957:B,C=2|INPUT:Y-INVx1:A=1|INVx1:Y-ARBITER_G0_2_11957:A=1|01111
* 317 occurrences in design
* each contains 2 cells
* function: ~C&(A|B)
* Example occurence:
*   .subckt INVx1 A=x255 Y=n513
*   .subckt ARBITER_G0_2_11957 A=n513 B=n511 C=x126 Y=n814
