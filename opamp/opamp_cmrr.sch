v {xschem version=3.4.4 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 450 -240 490 -240 {
lab=out_d}
N 490 -240 490 -220 {
lab=out_d}
N 490 -160 490 -110 {
lab=GND}
N 390 -60 490 -60 {
lab=GND}
N 140 -150 140 -100 {
lab=GND}
N 140 -280 330 -280 {
lab=#net1}
N 140 -280 140 -210 {
lab=#net1}
N 270 -150 290 -150 {
lab=#net2}
N 270 -220 270 -190 {
lab=#net2}
N 270 -220 330 -220 {
lab=#net2}
N 270 -70 270 -60 {
lab=GND}
N 470 -240 470 -170 {
lab=out_d}
N 270 -190 270 -150 {
lab=#net2}
N 270 -150 270 -130 {
lab=#net2}
N 350 -150 470 -150 {
lab=out_d}
N 470 -170 470 -150 {
lab=out_d}
N 490 -110 490 -60 {
lab=GND}
N 140 -100 140 -60 {
lab=GND}
N 40 -280 40 -260 {
lab=VDD}
N 40 -200 40 -170 {
lab=GND}
N 390 -320 390 -300 {
lab=VDD}
N 390 -590 390 -570 {
lab=VDD}
N 450 -510 490 -510 {
lab=out_c}
N 490 -510 490 -500 {
lab=out_c}
N 390 -410 490 -410 {
lab=GND}
N 390 -410 390 -390 {
lab=GND}
N 390 -450 390 -410 {
lab=GND}
N 490 -440 490 -410 {
lab=GND}
N 460 -510 460 -430 {
lab=out_c}
N 350 -430 460 -430 {
lab=out_c}
N 270 -430 290 -430 {
lab=#net3}
N 280 -490 280 -430 {
lab=#net3}
N 280 -490 330 -490 {
lab=#net3}
N 200 -530 330 -530 {
lab=in}
N 200 -530 200 -430 {
lab=in}
N 200 -430 210 -430 {
lab=in}
N 390 -180 390 -60 {
lab=GND}
N 140 -60 390 -60 {
lab=GND}
N 140 -60 140 -40 {
lab=GND}
N 140 -450 140 -380 {
lab=GND}
N 140 -550 140 -510 {
lab=#net4}
N 140 -550 330 -550 {
lab=#net4}
N 200 -260 330 -260 {
lab=in}
N 200 -260 200 -250 {
lab=in}
N 200 -190 200 -180 {
lab=GND}
N 200 -430 200 -260 {
lab=in}
C {devices/code_shown.sym} -470 -400 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/code_shown.sym} -470 -300 0 0 {name=control only_toplevel=false value=".option savecurrent
.control
set units=degree
op
save all
ac dec 20 1e3 1e10
plot vdb(out_d), vdb(out_c)
.endc"}
C {devices/vsource.sym} 40 -230 0 0 {name=Vdd value=3.3}
C {devices/vsource.sym} 200 -220 0 0 {name=Vinp value="DC 1.65 AC 1"}
C {devices/gnd.sym} 140 -40 0 0 {name=l1 lab=GND}
C {devices/lab_pin.sym} 490 -240 0 1 {name=p1 sig_type=std_logic lab=out_d}
C {devices/code_shown.sym} -470 -80 0 0 {name=measure only_toplevel=false value=".measure ac gain_d find vdb(out_d) at=1e3
.measure ac gain_c find vdb(out_c) at=1e3"}
C {devices/capa.sym} 490 -190 0 0 {name=C1
m=1
value=10p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 200 -260 0 0 {name=p2 sig_type=std_logic lab=in}
C {opamp.sym} 350 -240 0 0 {name=X1}
C {devices/isource.sym} 140 -180 0 0 {name=I0 value=20e-6}
C {devices/res.sym} 320 -150 1 0 {name=R1
value=100Meg
footprint=1206
device=resistor
m=1}
C {devices/capa.sym} 270 -100 0 0 {name=C2
m=1
value=1
footprint=1206
device="ceramic capacitor"}
C {devices/vdd.sym} 40 -280 0 0 {name=l2 lab=VDD}
C {devices/gnd.sym} 40 -170 0 0 {name=l3 lab=GND}
C {devices/vdd.sym} 390 -320 0 0 {name=l4 lab=VDD}
C {opamp.sym} 350 -510 0 0 {name=X2}
C {devices/gnd.sym} 390 -390 0 0 {name=l5 lab=GND}
C {devices/vdd.sym} 390 -590 0 0 {name=l6 lab=VDD}
C {devices/capa.sym} 490 -470 0 0 {name=C3
m=1
value=10p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 490 -510 0 1 {name=p3 sig_type=std_logic lab=out_c}
C {devices/res.sym} 320 -430 1 0 {name=R2
value=100Meg
footprint=1206
device=resistor
m=1}
C {devices/capa.sym} 240 -430 1 0 {name=C4
m=1
value=1
footprint=1206
device="ceramic capacitor"}
C {devices/isource.sym} 140 -480 0 0 {name=I1 value=20e-6}
C {devices/gnd.sym} 140 -380 0 0 {name=l7 lab=GND}
C {devices/gnd.sym} 200 -180 0 0 {name=l8 lab=GND}
