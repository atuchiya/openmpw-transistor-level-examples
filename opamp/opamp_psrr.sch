v {xschem version=3.4.4 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 450 -240 490 -240 {
lab=outp}
N 490 -240 490 -220 {
lab=outp}
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
lab=outp}
N 270 -190 270 -150 {
lab=#net2}
N 270 -150 270 -130 {
lab=#net2}
N 350 -150 470 -150 {
lab=outp}
N 470 -170 470 -150 {
lab=outp}
N 490 -110 490 -60 {
lab=GND}
N 140 -100 140 -60 {
lab=GND}
N 40 -280 40 -260 {
lab=VDD}
N 40 -200 40 -170 {
lab=GND}
N 390 -320 390 -300 {
lab=#net3}
N 140 -60 390 -60 {
lab=GND}
N 140 -60 140 -40 {
lab=GND}
N 390 -400 390 -380 {
lab=VDD}
N 390 -180 390 -60 {
lab=GND}
N 920 -240 960 -240 {
lab=outn}
N 960 -240 960 -220 {
lab=outn}
N 960 -160 960 -110 {
lab=GND}
N 860 -60 960 -60 {
lab=GND}
N 740 -150 760 -150 {
lab=#net4}
N 740 -220 740 -190 {
lab=#net4}
N 740 -220 800 -220 {
lab=#net4}
N 740 -70 740 -60 {
lab=GND}
N 940 -240 940 -170 {
lab=outn}
N 740 -190 740 -150 {
lab=#net4}
N 740 -150 740 -130 {
lab=#net4}
N 820 -150 940 -150 {
lab=outn}
N 940 -170 940 -150 {
lab=outn}
N 960 -110 960 -60 {
lab=GND}
N 860 -320 860 -300 {
lab=VDD}
N 490 -60 860 -60 {
lab=GND}
N 860 -80 860 -60 {
lab=GND}
N 860 -180 860 -140 {
lab=#net5}
N 610 -150 610 -100 {
lab=GND}
N 610 -280 800 -280 {
lab=#net6}
N 610 -280 610 -210 {
lab=#net6}
N 610 -100 610 -60 {
lab=GND}
N 270 -260 270 -220 {
lab=#net2}
N 270 -260 330 -260 {
lab=#net2}
N 740 -260 740 -220 {
lab=#net4}
N 740 -260 800 -260 {
lab=#net4}
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
plot vdb(outp), vdb(outn)
.endc"}
C {devices/vsource.sym} 40 -230 0 0 {name=Vdd value=3.3}
C {devices/gnd.sym} 140 -40 0 0 {name=l1 lab=GND}
C {devices/lab_pin.sym} 490 -240 0 1 {name=p1 sig_type=std_logic lab=outp}
C {devices/code_shown.sym} -470 -80 0 0 {name=measure only_toplevel=false value=".measure ac gain_vdd find vdb(outp) at=1e3
.measure ac gain_vss find vdb(outn) at=1e3"}
C {devices/capa.sym} 490 -190 0 0 {name=C1
m=1
value=10p
footprint=1206
device="ceramic capacitor"}
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
C {devices/vdd.sym} 390 -400 0 0 {name=l4 lab=VDD}
C {devices/vsource.sym} 390 -350 0 0 {name=Vn1 value="AC 1"}
C {opamp.sym} 820 -240 0 0 {name=X2}
C {devices/vdd.sym} 860 -320 0 0 {name=l5 lab=VDD}
C {devices/lab_pin.sym} 960 -240 0 1 {name=p3 sig_type=std_logic lab=outn}
C {devices/capa.sym} 960 -190 0 0 {name=C3
m=1
value=10p
footprint=1206
device="ceramic capacitor"}
C {devices/res.sym} 790 -150 1 0 {name=R2
value=100Meg
footprint=1206
device=resistor
m=1}
C {devices/capa.sym} 740 -100 0 0 {name=C4
m=1
value=1
footprint=1206
device="ceramic capacitor"}
C {devices/vsource.sym} 860 -110 0 0 {name=Vn2 value="AC 1"}
C {devices/isource.sym} 610 -180 0 0 {name=I1 value=20e-6}
