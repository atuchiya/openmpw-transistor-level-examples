v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
L 4 0 -860 1470 -860 {}
L 4 0 -90 1470 -90 {}
L 4 0 300 1470 300 {}
L 4 0 610 1470 610 {}
L 4 600 -1020 600 0 {}
L 4 1050 -1020 1050 0 {}
L 4 250 -750 1470 -750 {}
L 4 250 -640 1470 -640 {}
L 4 250 -530 1470 -530 {}
L 4 250 -420 1470 -420 {}
L 4 250 -310 1470 -310 {}
L 4 250 -200 1470 -200 {}
L 4 0 30 1470 30 {}
L 4 250 190 1470 190 {}
T {OpenMPW Device Characteristics Exploration} 20 -1190 0 0 0.7 0.7 {layer=6}
T {https://github.com/atuchiya/openmpw_exploration} 20 -1100 0 0 0.5 0.5 {}
T {Copyright 2023 Akira Tsuchiya. Licensed under Apache License, Version 2.0} 20 -1140 0 0 0.5 0.5 {}
T {MOSFET} 20 -850 0 0 0.7 0.7 {layer=8
}
T {Digital} 20 40 0 0 0.7 0.7 {layer=8}
T {Analog} 20 310 0 0 0.7 0.7 {layer=8}
T {Passives} 20 -80 0 0 0.7 0.7 {layer=8}
T {current mirror} 260 310 0 0 0.5 0.5 {}
T {id-vgs} 260 -850 0 0 0.5 0.5 {}
T {id-vds} 260 -740 0 0 0.5 0.5 {}
T {subthreshold leak} 260 -630 0 0 0.5 0.5 {}
T {intrinsic gain} 260 -410 0 0 0.5 0.5 {}
T {ft} 260 -300 0 0 0.5 0.5 {}
T {fmax} 260 -190 0 0 0.5 0.5 {}
T {SkyWater 130nm
(sky130A)} 620 -1010 0 0 0.7 0.7 {layer=8
}
T {GlobalFoundries 180nm
(gf180mcuC)} 1080 -1010 0 0 0.7 0.7 {layer=8}
T {1.8V LVT} 620 -900 0 0 0.5 0.5 {}
T {3.3V} 1060 -900 0 0 0.5 0.5 {}
T {6.0V} 1270 -900 0 0 0.5 0.5 {}
T {common-source amp.} 260 360 0 0 0.5 0.5 {}
T {common-gate amp.} 260 410 0 0 0.5 0.5 {}
T {source follower} 260 460 0 0 0.5 0.5 {}
T {cascode amp.} 260 560 0 0 0.5 0.5 {}
T {differential amp.} 260 510 0 0 0.5 0.5 {}
T {resistors} 250 -80 0 0 0.5 0.5 {}
T {capacitors} 250 -30 0 0 0.5 0.5 {}
T {body effect} 260 -520 0 0 0.5 0.5 {}
T {combinational logic
IO, delay, power} 260 40 0 0 0.5 0.5 {}
T {flip-flop} 260 200 0 0 0.5 0.5 {}
T {1.8V} 840 -900 0 0 0.5 0.5 {}
C {gf180mcu.sym} 1100 650 0 0 {name=CORNER only_toplevel=false corner=typical}
C {sky130_fd_pr/corner.sym} 630 650 0 0 {name=CORNER1 only_toplevel=true corner=tt}
C {MOSFET/gf180mcu_nfet_03v3_idvgs.sym} 1060 -760 0 0 {}
C {MOSFET/gf180mcu_nfet_03v3_idvds.sym} 1060 -650 0 0 {}
C {MOSFET/gf180mcu_nfet_03v3_subthreshold.sym} 1060 -540 0 0 {}
C {MOSFET/gf180mcu_nfet_03v3_igain.sym} 1060 -320 0 0 {}
C {MOSFET/gf180mcu_pfet_03v3_idvgs.sym} 1060 -810 0 0 {}
C {MOSFET/gf180mcu_pfet_03v3_idvds.sym} 1060 -700 0 0 {}
C {MOSFET/gf180mcu_pfet_03v3_subthreshold.sym} 1060 -590 0 0 {}
C {MOSFET/gf180mcu_nfet_03v3_body.sym} 1060 -430 0 0 {}
C {MOSFET/gf180mcu_pfet_03v3_body.sym} 1060 -480 0 0 {}
C {MOSFET/gf180mcu_pfet_03v3_igain.sym} 1060 -370 0 0 {}
C {Logic/sky130A_fo1delay.sym} 840 130 0 0 {}
C {Logic/sky130A_fo4delay.sym} 840 180 0 0 {}
C {Logic/sky130A_inv1_dc.sym} 840 80 0 0 {}
C {MOSFET/sky130A_nfet_01v8_idvgs.sym} 850 -760 0 0 {}
C {MOSFET/sky130A_nfet_01v8_idvds.sym} 850 -650 0 0 {}
C {MOSFET/sky130A_nfet_01v8_subthreshold.sym} 850 -540 0 0 {}
C {MOSFET/sky130A_nfet_01v8_body.sym} 850 -430 0 0 {}
C {MOSFET/sky130A_nfet_01v8_igain.sym} 850 -320 0 0 {}
C {MOSFET/sky130A_pfet_01v8_igain.sym} 850 -370 0 0 {}
C {MOSFET/sky130A_pfet_01v8_body.sym} 850 -480 0 0 {}
C {MOSFET/sky130A_pfet_01v8_subthreshold.sym} 850 -590 0 0 {}
C {MOSFET/sky130A_pfet_01v8_idvds.sym} 850 -700 0 0 {}
C {MOSFET/sky130A_pfet_01v8_idvgs.sym} 850 -810 0 0 {}
C {MOSFET/sky130A_pfet_01v8lvt_idvgs.sym} 610 -810 0 0 {}
C {MOSFET/sky130A_nfet_01v8lvt_idvgs.sym} 610 -760 0 0 {}
C {MOSFET/sky130A_pfet_01v8lvt_idvds.sym} 610 -700 0 0 {}
C {MOSFET/sky130A_nfet_01v8lvt_idvds.sym} 610 -650 0 0 {}
C {MOSFET/sky130A_pfet_01v8lvt_subthreshold.sym} 610 -590 0 0 {}
C {MOSFET/sky130A_nfet_01v8lvt_subthreshold.sym} 610 -540 0 0 {}
C {MOSFET/sky130A_pfet_01v8lvt_body.sym} 610 -480 0 0 {}
C {MOSFET/sky130A_nfet_01v8lvt_body.sym} 610 -430 0 0 {}
C {MOSFET/sky130A_pfet_01v8lvt_igain.sym} 610 -370 0 0 {}
C {MOSFET/sky130A_nfet_01v8lvt_igain.sym} 610 -320 0 0 {}
C {Logic/sky130A_01v8lvt_fo1delay.sym} 610 130 0 0 {}
C {Logic/sky130A_01v8lvt_fo4delay.sym} 610 180 0 0 {}
C {Logic/sky130A_01v8lvt_inv1_dc.sym} 610 80 0 0 {}
C {Logic/gf180mcu_03v3_inv1_dc.sym} 1070 80 0 0 {}
C {Logic/gf180mcu_03v3_fo1delay.sym} 1070 130 0 0 {}
C {Logic/gf180mcu_03v3_fo4delay.sym} 1070 180 0 0 {}
