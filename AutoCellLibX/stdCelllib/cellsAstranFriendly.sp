
.subckt AND2X1 Y B VCC GND A
M0 a_2_6# A VCC VCC PMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M1 VCC B a_2_6# VCC PMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M2 Y a_2_6# VCC VCC PMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M3 a_9_6# A a_2_6# GND NMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M4 GND B a_9_6# GND NMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M5 Y a_2_6# GND GND NMOS W=0.25u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
.ends AND2X1

.subckt AND2X2 VCC GND A B Y
M0 a_2_6# A VCC VCC PMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M1 VCC B a_2_6# VCC PMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M2 Y a_2_6# VCC VCC PMOS W=1u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M3 a_9_6# A a_2_6# GND NMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M4 GND B a_9_6# GND NMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M5 Y a_2_6# GND GND NMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
.ends AND2X2

.subckt AOI21X1 GND VCC A B Y C
M0 VCC A a_2_54# VCC PMOS W=1u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M1 a_2_54# B VCC VCC PMOS W=1u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M2 Y C a_2_54# VCC PMOS W=1u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M3 a_12_6# A GND GND NMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M4 Y B a_12_6# GND NMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M5 GND C Y GND NMOS W=0.25u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
.ends AOI21X1

.subckt AOI22X1 GND VCC C D Y A B
M0 VCC A a_2_54# VCC PMOS W=1u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M1 a_2_54# B VCC VCC PMOS W=1u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M2 Y D a_2_54# VCC PMOS W=1u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M3 a_2_54# C Y VCC PMOS W=1u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M4 a_11_6# A GND GND NMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M5 Y B a_11_6# GND NMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M6 a_28_6# D Y GND NMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M7 GND C a_28_6# GND NMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
.ends AOI22X1

.subckt BUFX2 VCC GND A Y
M0 VCC A a_2_6# VCC PMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M1 Y a_2_6# VCC VCC PMOS W=1u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M2 GND A a_2_6# GND NMOS W=0.25u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M3 Y a_2_6# GND GND NMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
.ends BUFX2

.subckt BUFX4 VCC GND A Y
M0 VCC A a_2_6# VCC PMOS W=0.75u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M1 Y a_2_6# VCC VCC PMOS W=1u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M2 VCC a_2_6# Y VCC PMOS W=1u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M3 GND A a_2_6# GND NMOS W=1.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M4 Y a_2_6# GND GND NMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M5 GND a_2_6# Y GND NMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
.ends BUFX4

.subckt CLKBUF1 A VCC GND Y
M0 a_9_6# A VCC VCC PMOS W=1u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M1 VCC A a_9_6# VCC PMOS W=1u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M2 a_25_6# a_9_6# VCC VCC PMOS W=1u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M3 VCC a_9_6# a_25_6# VCC PMOS W=1u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M4 a_41_6# a_25_6# VCC VCC PMOS W=1u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M5 VCC a_25_6# a_41_6# VCC PMOS W=1u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M6 Y a_41_6# VCC VCC PMOS W=1u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M7 VCC a_41_6# Y VCC PMOS W=1u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M8 a_9_6# A GND GND NMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M9 GND A a_9_6# GND NMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M10 a_25_6# a_9_6# GND GND NMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M11 GND a_9_6# a_25_6# GND NMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M12 a_41_6# a_25_6# GND GND NMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M13 GND a_25_6# a_41_6# GND NMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M14 Y a_41_6# GND GND NMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M15 GND a_41_6# Y GND NMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
.ends CLKBUF1

.subckt CLKBUF2 VCC GND A Y
M0 a_9_6# A VCC VCC PMOS W=1u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M1 VCC A a_9_6# VCC PMOS W=1u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M2 a_25_6# a_9_6# VCC VCC PMOS W=1u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M3 VCC a_9_6# a_25_6# VCC PMOS W=1u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M4 a_41_6# a_25_6# VCC VCC PMOS W=1u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M5 VCC a_25_6# a_41_6# VCC PMOS W=1u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M6 a_57_6# a_41_6# VCC VCC PMOS W=1u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M7 VCC a_41_6# a_57_6# VCC PMOS W=1u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M8 a_73_6# a_57_6# VCC VCC PMOS W=1u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M9 VCC a_57_6# a_73_6# VCC PMOS W=1u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M10 Y a_73_6# VCC VCC PMOS W=1u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M11 VCC a_73_6# Y VCC PMOS W=1u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M12 a_9_6# A GND GND NMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M13 GND A a_9_6# GND NMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M14 a_25_6# a_9_6# GND GND NMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M15 GND a_9_6# a_25_6# GND NMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M16 a_41_6# a_25_6# GND GND NMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M17 GND a_25_6# a_41_6# GND NMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M18 a_57_6# a_41_6# GND GND NMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M19 GND a_41_6# a_57_6# GND NMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M20 a_73_6# a_57_6# GND GND NMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M21 GND a_57_6# a_73_6# GND NMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M22 Y a_73_6# GND GND NMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M23 GND a_73_6# Y GND NMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
.ends CLKBUF2

.subckt CLKBUF3 GND VCC A Y
M0 a_9_6# A VCC VCC PMOS W=1u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M1 VCC A a_9_6# VCC PMOS W=1u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M2 a_25_6# a_9_6# VCC VCC PMOS W=1u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M3 VCC a_9_6# a_25_6# VCC PMOS W=1u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M4 a_41_6# a_25_6# VCC VCC PMOS W=1u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M5 VCC a_25_6# a_41_6# VCC PMOS W=1u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M6 a_57_6# a_41_6# VCC VCC PMOS W=1u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M7 VCC a_41_6# a_57_6# VCC PMOS W=1u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M8 a_73_6# a_57_6# VCC VCC PMOS W=1u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M9 VCC a_57_6# a_73_6# VCC PMOS W=1u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M10 a_89_6# a_73_6# VCC VCC PMOS W=1u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M11 VCC a_73_6# a_89_6# VCC PMOS W=1u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M12 a_105_6# a_89_6# VCC VCC PMOS W=1u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M13 VCC a_89_6# a_105_6# VCC PMOS W=1u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M14 Y a_105_6# VCC VCC PMOS W=1u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M15 VCC a_105_6# Y VCC PMOS W=1u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M16 a_9_6# A GND GND NMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M17 GND A a_9_6# GND NMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M18 a_25_6# a_9_6# GND GND NMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M19 GND a_9_6# a_25_6# GND NMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M20 a_41_6# a_25_6# GND GND NMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M21 GND a_25_6# a_41_6# GND NMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M22 a_57_6# a_41_6# GND GND NMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M23 GND a_41_6# a_57_6# GND NMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M24 a_73_6# a_57_6# GND GND NMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M25 GND a_57_6# a_73_6# GND NMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M26 a_89_6# a_73_6# GND GND NMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M27 GND a_73_6# a_89_6# GND NMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M28 a_105_6# a_89_6# GND GND NMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M29 GND a_89_6# a_105_6# GND NMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M30 Y a_105_6# GND GND NMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M31 GND a_105_6# Y GND NMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
.ends CLKBUF3

.subckt DFFNEGX1 CLK VCC D GND Q
M0 VCC CLK a_2_6# VCC PMOS W=1u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M1 a_17_74# D VCC VCC PMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M2 a_23_6# a_2_6# a_17_74# VCC PMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M3 a_31_74# CLK a_23_6# VCC PMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M4 VCC a_34_4# a_31_74# VCC PMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M5 a_34_4# a_23_6# VCC VCC PMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M6 a_61_74# a_34_4# VCC VCC PMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M7 a_66_6# CLK a_61_74# VCC PMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M8 a_76_84# a_2_6# a_66_6# VCC PMOS W=0.25u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M9 VCC Q a_76_84# VCC PMOS W=0.25u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M10 GND CLK a_2_6# GND NMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M11 Q a_66_6# VCC VCC PMOS W=1u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M12 a_17_6# D GND GND NMOS W=0.25u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M13 a_23_6# CLK a_17_6# GND NMOS W=0.25u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M14 a_31_6# a_2_6# a_23_6# GND NMOS W=0.25u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M15 GND a_34_4# a_31_6# GND NMOS W=0.25u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M16 a_34_4# a_23_6# GND GND NMOS W=0.25u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M17 a_61_6# a_34_4# GND GND NMOS W=0.25u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M18 a_66_6# a_2_6# a_61_6# GND NMOS W=0.25u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M19 a_76_6# CLK a_66_6# GND NMOS W=0.25u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M20 GND Q a_76_6# GND NMOS W=0.25u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M21 Q a_66_6# GND GND NMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
.ends DFFNEGX1

.subckt DFFPOSX1 VCC D GND Q CLK
M0 VCC CLK a_2_6# VCC PMOS W=1u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M1 a_17_74# D VCC VCC PMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M2 a_22_6# CLK a_17_74# VCC PMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M3 a_31_74# a_2_6# a_22_6# VCC PMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M4 VCC a_34_4# a_31_74# VCC PMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M5 a_34_4# a_22_6# VCC VCC PMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M6 a_61_74# a_34_4# VCC VCC PMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M7 a_66_6# a_2_6# a_61_74# VCC PMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M8 a_76_84# CLK a_66_6# VCC PMOS W=0.25u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M9 VCC Q a_76_84# VCC PMOS W=0.25u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M10 GND CLK a_2_6# GND NMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M11 Q a_66_6# VCC VCC PMOS W=1u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M12 a_17_6# D GND GND NMOS W=0.25u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M13 a_22_6# a_2_6# a_17_6# GND NMOS W=0.25u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M14 a_31_6# CLK a_22_6# GND NMOS W=0.25u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M15 GND a_34_4# a_31_6# GND NMOS W=0.25u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M16 a_34_4# a_22_6# GND GND NMOS W=0.25u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M17 a_61_6# a_34_4# GND GND NMOS W=0.25u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M18 a_66_6# CLK a_61_6# GND NMOS W=0.25u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M19 a_76_6# a_2_6# a_66_6# GND NMOS W=0.25u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M20 GND Q a_76_6# GND NMOS W=0.25u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M21 Q a_66_6# GND GND NMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
.ends DFFPOSX1

.subckt DFFSR GND VCC D S R Q CLK
M0 a_2_6# R VCC VCC PMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M1 VCC a_10_61# a_2_6# VCC PMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M2 a_10_61# a_23_27# VCC VCC PMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M3 VCC S a_10_61# VCC PMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M4 a_23_27# a_47_71# a_2_6# VCC PMOS W=0.25u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M5 a_57_6# a_47_4# a_23_27# VCC PMOS W=0.25u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M6 VCC D a_57_6# VCC PMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M7 VCC a_47_71# a_47_4# VCC PMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M8 a_47_71# CLK VCC VCC PMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M9 a_105_6# a_47_71# a_10_61# VCC PMOS W=0.25u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M10 a_113_6# a_47_4# a_105_6# VCC PMOS W=0.25u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M11 a_122_6# a_105_6# VCC VCC PMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M12 VCC R a_122_6# VCC PMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M13 a_113_6# a_122_6# VCC VCC PMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M14 VCC S a_113_6# VCC PMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M15 VCC a_122_6# Q VCC PMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M16 a_10_6# R a_2_6# GND NMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M17 GND a_10_61# a_10_6# GND NMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M18 a_26_6# a_23_27# GND GND NMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M19 a_10_61# S a_26_6# GND NMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M20 a_23_27# a_47_4# a_2_6# GND NMOS W=0.25u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M21 a_57_6# a_47_71# a_23_27# GND NMOS W=0.25u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M22 GND D a_57_6# GND NMOS W=0.25u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M23 GND a_47_71# a_47_4# GND NMOS W=0.25u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M24 a_47_71# CLK GND GND NMOS W=0.25u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M25 a_105_6# a_47_4# a_10_61# GND NMOS W=0.25u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M26 a_113_6# a_47_71# a_105_6# GND NMOS W=0.25u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M27 a_130_6# a_105_6# a_122_6# GND NMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M28 GND R a_130_6# GND NMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M29 a_146_6# a_122_6# GND GND NMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M30 a_113_6# S a_146_6# GND NMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M31 GND a_122_6# Q GND NMOS W=0.25u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
.ends DFFSR

.subckt FAX1 GND VCC A B C YC YS
M0 VCC A a_2_54# VCC PMOS W=1u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M1 a_2_54# B VCC VCC PMOS W=1u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M2 a_25_6# C a_2_54# VCC PMOS W=1u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M3 a_33_54# B a_25_6# VCC PMOS W=1u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M4 VCC A a_33_54# VCC PMOS W=1u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M5 a_46_54# A VCC VCC PMOS W=1u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M6 VCC B a_46_54# VCC PMOS W=3.6u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M7 a_46_54# C VCC VCC PMOS W=3.6u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M8 a_70_6# a_25_6# a_46_54# VCC PMOS W=3.6u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M9 a_79_46# C a_70_6# VCC PMOS W=4.8u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M10 a_84_46# B a_79_46# VCC PMOS W=4.8u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M11 VCC A a_84_46# VCC PMOS W=4.8u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M12 YS a_70_6# VCC VCC PMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M13 YC a_25_6# VCC VCC PMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M14 GND A a_2_6# GND NMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M15 a_2_6# B GND GND NMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M16 a_25_6# C a_2_6# GND NMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M17 a_33_6# B a_25_6# GND NMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M18 GND A a_33_6# GND NMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M19 a_46_6# A GND GND NMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M20 GND B a_46_6# GND NMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M21 a_46_6# C GND GND NMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M22 a_70_6# a_25_6# a_46_6# GND NMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M23 a_79_6# C a_70_6# GND NMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M24 a_84_6# B a_79_6# GND NMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M25 GND A a_84_6# GND NMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M26 YS a_70_6# GND GND NMOS W=0.25u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M27 YC a_25_6# GND GND NMOS W=0.25u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
.ends FAX1

.subckt HAX1 VCC GND YC A B YS
M0 VCC A a_2_74# VCC PMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M1 a_2_74# B VCC VCC PMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M2 VCC a_2_74# YC VCC PMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M3 a_41_74# a_2_74# VCC VCC PMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M4 a_49_54# B a_41_74# VCC PMOS W=1u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M5 VCC A a_49_54# VCC PMOS W=1u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M6 YS a_41_74# VCC VCC PMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M7 a_9_6# A GND GND NMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M8 a_2_74# B a_9_6# GND NMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M9 GND a_2_74# YC GND NMOS W=0.25u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M10 a_38_6# a_2_74# GND GND NMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M11 a_41_74# B a_38_6# GND NMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M12 a_38_6# A a_41_74# GND NMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M13 YS a_41_74# GND GND NMOS W=0.25u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
.ends HAX1

.subckt INVX1 A Y VCC GND
M0 Y A VCC VCC PMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M1 Y A GND GND NMOS W=0.25u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
.ends INVX1

.subckt INVX2 VCC GND Y A
M0 Y A VCC VCC PMOS W=1u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M1 Y A GND GND NMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
.ends INVX2

.subckt INVX4 VCC GND Y A
M0 Y A VCC VCC PMOS W=1u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M1 VCC A Y VCC PMOS W=1u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M2 Y A GND GND NMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M3 GND A Y GND NMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
.ends INVX4

.subckt INVX8 VCC GND A Y
M0 Y A VCC VCC PMOS W=1u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M1 VCC A Y VCC PMOS W=1u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M2 Y A VCC VCC PMOS W=1u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M3 VCC A Y VCC PMOS W=1u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M4 Y A GND GND NMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M5 GND A Y GND NMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M6 Y A GND GND NMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M7 GND A Y GND NMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
.ends INVX8

.subckt LATCH D Q GND VCC CLK
M0 VCC CLK a_2_6# VCC PMOS W=1u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M1 a_18_74# D VCC VCC PMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M2 a_23_6# a_2_6# a_18_74# VCC PMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M3 a_35_84# CLK a_23_6# VCC PMOS W=0.25u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M4 VCC Q a_35_84# VCC PMOS W=0.25u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M5 GND CLK a_2_6# GND NMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M6 Q a_23_6# VCC VCC PMOS W=1u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M7 a_18_6# D GND GND NMOS W=0.25u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M8 a_23_6# CLK a_18_6# GND NMOS W=0.25u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M9 a_35_6# a_2_6# a_23_6# GND NMOS W=0.25u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M10 GND Q a_35_6# GND NMOS W=0.25u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M11 Q a_23_6# GND GND NMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
.ends LATCH

.subckt MUX2X1 S VCC GND Y A B
M0 VCC S a_2_10# VCC PMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M1 a_17_50# B VCC VCC PMOS W=1u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M2 Y S a_17_50# VCC PMOS W=1u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M3 a_30_54# a_2_10# Y VCC PMOS W=1u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M4 VCC A a_30_54# VCC PMOS W=1u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M5 GND S a_2_10# GND NMOS W=0.25u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M6 a_17_10# B GND GND NMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M7 Y a_2_10# a_17_10# GND NMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M8 a_30_10# S Y GND NMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M9 GND A a_30_10# GND NMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
.ends MUX2X1

.subckt NAND2X1 VCC Y GND A B
M0 Y A VCC VCC PMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M1 VCC B Y VCC PMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M2 a_9_6# A GND GND NMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M3 Y B a_9_6# GND NMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
.ends NAND2X1

.subckt NAND3X1 B VCC GND A C Y
M0 Y A VCC VCC PMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M1 VCC B Y VCC PMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M2 Y C VCC VCC PMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M3 a_9_6# A GND GND NMOS W=0.75u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M4 a_14_6# B a_9_6# GND NMOS W=0.75u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M5 Y C a_14_6# GND NMOS W=0.75u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
.ends NAND3X1

.subckt NOR2X1 VCC B GND Y A
M0 a_9_54# A VCC VCC PMOS W=1u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M1 Y B a_9_54# VCC PMOS W=1u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M2 Y A GND GND NMOS W=0.25u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M3 GND B Y GND NMOS W=0.25u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
.ends NOR2X1

.subckt NOR3X1 VCC GND B C A Y
M0 VCC A a_2_64# VCC PMOS W=0.75u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M1 a_2_64# A VCC VCC PMOS W=0.75u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M2 a_25_64# B a_2_64# VCC PMOS W=0.75u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M3 a_2_64# B a_25_64# VCC PMOS W=0.75u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M4 Y C a_25_64# VCC PMOS W=0.75u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M5 a_25_64# C Y VCC PMOS W=0.75u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M6 Y A GND GND NMOS W=0.25u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M7 GND B Y GND NMOS W=0.25u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M8 Y C GND GND NMOS W=0.25u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
.ends NOR3X1

.subckt OAI21X1 GND VCC A B Y C
M0 a_9_54# A VCC VCC PMOS W=1u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M1 Y B a_9_54# VCC PMOS W=1u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M2 VCC C Y VCC PMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M3 GND A a_2_6# GND NMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M4 a_2_6# B GND GND NMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M5 Y C a_2_6# GND NMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
.ends OAI21X1

.subckt OAI22X1 GND VCC D C A B Y
M0 a_9_54# A VCC VCC PMOS W=1u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M1 Y B a_9_54# VCC PMOS W=1u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M2 a_28_54# D Y VCC PMOS W=1u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M3 VCC C a_28_54# VCC PMOS W=1u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M4 GND A a_2_6# GND NMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M5 a_2_6# B GND GND NMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M6 Y D a_2_6# GND NMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M7 a_2_6# C Y GND NMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
.ends OAI22X1

.subckt OR2X1 Y B VCC GND A
M0 a_9_54# A a_2_54# VCC PMOS W=1u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M1 VCC B a_9_54# VCC PMOS W=1u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M2 Y a_2_54# VCC VCC PMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M3 a_2_54# A GND GND NMOS W=0.25u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M4 GND B a_2_54# GND NMOS W=0.25u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M5 Y a_2_54# GND GND NMOS W=0.25u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
.ends OR2X1

.subckt OR2X2 Y B VCC GND A
M0 a_9_54# A a_2_54# VCC PMOS W=1u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M1 VCC B a_9_54# VCC PMOS W=1u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M2 Y a_2_54# VCC VCC PMOS W=1u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M3 a_2_54# A GND GND NMOS W=0.25u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M4 GND B a_2_54# GND NMOS W=0.25u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M5 Y a_2_54# GND GND NMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
.ends OR2X2

.subckt TBUFX1 VCC GND EN A Y
M0 a_9_6# EN VCC VCC PMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M1 a_26_54# a_9_6# Y VCC PMOS W=1u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M2 VCC A a_26_54# VCC PMOS W=1u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M3 a_9_6# EN GND GND NMOS W=0.25u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M4 a_26_6# EN Y GND NMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M5 GND A a_26_6# GND NMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
.ends TBUFX1

.subckt TBUFX2 VCC GND A EN Y
M0 a_9_6# EN VCC VCC PMOS W=1u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M1 Y a_9_6# a_18_54# VCC PMOS W=1u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M2 a_18_54# a_9_6# Y VCC PMOS W=1u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M3 VCC A a_18_54# VCC PMOS W=1u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M4 a_18_54# A VCC VCC PMOS W=1u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M5 a_9_6# EN GND GND NMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M6 Y EN a_18_6# GND NMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M7 a_18_6# EN Y GND NMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M8 GND A a_18_6# GND NMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M9 a_18_6# A GND GND NMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
.ends TBUFX2

.subckt XNOR2X1 A B GND VCC Y
M0 VCC A a_2_6# VCC PMOS W=1u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M1 a_18_54# a_12_41# VCC VCC PMOS W=1u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M2 Y a_2_6# a_18_54# VCC PMOS W=1u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M3 a_35_54# A Y VCC PMOS W=1u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M4 VCC B a_35_54# VCC PMOS W=1u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M5 a_12_41# B VCC VCC PMOS W=1u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M6 GND A a_2_6# GND NMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M7 a_18_6# a_12_41# GND GND NMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M8 Y A a_18_6# GND NMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M9 a_35_6# a_2_6# Y GND NMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M10 GND B a_35_6# GND NMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M11 a_12_41# B GND GND NMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
.ends XNOR2X1

.subckt XOR2X1 Y VCC B A GND
M0 VCC A a_2_6# VCC PMOS W=1u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M1 a_18_54# a_13_43# VCC VCC PMOS W=1u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M2 Y A a_18_54# VCC PMOS W=1u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M3 a_35_54# a_2_6# Y VCC PMOS W=1u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M4 VCC B a_35_54# VCC PMOS W=1u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M5 a_13_43# B VCC VCC PMOS W=1u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M6 GND A a_2_6# GND NMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M7 a_18_6# a_13_43# GND GND NMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M8 Y a_2_6# a_18_6# GND NMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M9 a_35_6# A Y GND NMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M10 GND B a_35_6# GND NMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M11 a_13_43# B GND GND NMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u 
.ends XOR2X1

