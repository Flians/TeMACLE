.SUBCKT DIV_G3_2_26773 A B C VDD VSS Y
Mcl9WVIY8_0#M0 cl9WVIY8_0#Y C VSS VSS nmos_lvt w=81.0n l=20n nfin=3
Mcl9WVIY8_0#M1 cl9WVIY8_0#Y C VDD VDD pmos_lvt w=81.0n l=20n nfin=3
Mcl9WVIY8_1#clY4X6QF_0#M4 cl9WVIY8_1#clY4X6QF_0#Y cl9WVIY8_1#clY4X6QF_0#net10 VDD VDD pmos_lvt w=162.00n l=20n nfin=6
Mcl9WVIY8_1#clY4X6QF_0#M1 cl9WVIY8_1#clY4X6QF_0#net10 cl9WVIY8_0#Y VDD VDD pmos_lvt w=54.0n l=20n nfin=2
Mcl9WVIY8_1#clY4X6QF_0#M0 cl9WVIY8_1#clY4X6QF_0#net10 B VDD VDD pmos_lvt w=54.0n l=20n nfin=2
Mcl9WVIY8_1#clY4X6QF_0#M5 cl9WVIY8_1#clY4X6QF_0#Y cl9WVIY8_1#clY4X6QF_0#net10 VSS VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl9WVIY8_1#clY4X6QF_0#M3 cl9WVIY8_1#clY4X6QF_0#net20 B VSS VSS nmos_lvt w=81.0n l=20n nfin=3
Mcl9WVIY8_1#clY4X6QF_0#M2 cl9WVIY8_1#clY4X6QF_0#net10 cl9WVIY8_0#Y cl9WVIY8_1#clY4X6QF_0#net20 VSS nmos_lvt w=81.0n l=20n nfin=3
Mcl9WVIY8_1#clY4X6QF_1#M5 VSS cl9WVIY8_1#clY4X6QF_1#net7 Y VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl9WVIY8_1#clY4X6QF_1#M1 VSS A cl9WVIY8_1#clY4X6QF_1#net7 VSS nmos_lvt w=54.0n l=20n nfin=2
Mcl9WVIY8_1#clY4X6QF_1#M2 VSS cl9WVIY8_1#clY4X6QF_0#Y cl9WVIY8_1#clY4X6QF_1#net7 VSS nmos_lvt w=54.0n l=20n nfin=2
Mcl9WVIY8_1#clY4X6QF_1#M0 VDD cl9WVIY8_1#clY4X6QF_1#net7 Y VDD pmos_lvt w=162.00n l=20n nfin=6
Mcl9WVIY8_1#clY4X6QF_1#M4 cl9WVIY8_1#clY4X6QF_1#net15 A cl9WVIY8_1#clY4X6QF_1#net7 VDD pmos_lvt w=81.0n l=20n nfin=3
Mcl9WVIY8_1#clY4X6QF_1#M3 VDD cl9WVIY8_1#clY4X6QF_0#Y cl9WVIY8_1#clY4X6QF_1#net15 VDD pmos_lvt w=81.0n l=20n nfin=3
.ENDS 
* pattern code: 3|3|DIV_G0_159_162|INVx1=1|INPUT:Y-DIV_G0_159_162:A=1|INPUT:Y-DIV_G0_159_162:B,C=1|INPUT:Y-INVx1:A=1|INVx1:Y-DIV_G0_159_162:B,C=1|01111
* 3661 occurrences in design
* each contains 2 cells
* function: A|(B&~C)
* Example occurence:
*   .subckt INVx1 A=x127 Y=n248
*   .subckt DIV_G0_159_162 A=n26902 B=n248 C=n26900 Y=n26903
