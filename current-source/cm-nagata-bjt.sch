v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 100 -70 100 -50 {
lab=GND}
N 100 -50 220 -50 {
lab=GND}
N 220 -70 220 -50 {
lab=GND}
N 160 -50 160 -30 {
lab=GND}
N 220 -100 230 -100 {
lab=GND}
N 230 -100 230 -60 {
lab=GND}
N 220 -60 230 -60 {
lab=GND}
N -170 -130 -170 -110 {
lab=VDD}
N -170 -50 -170 -30 {
lab=GND}
N 100 -270 100 -230 {
lab=#net1}
N 100 -350 100 -330 {
lab=VDD}
N 220 -50 350 -50 {
lab=GND}
N 350 -100 350 -50 {
lab=GND}
N 220 -310 220 -290 {
lab=#net2}
N 220 -310 350 -310 {
lab=#net2}
N 350 -310 350 -160 {
lab=#net2}
N 220 -230 220 -130 {
lab=#net3}
N 100 -100 110 -100 {
lab=GND}
N 110 -100 110 -60 {
lab=GND}
N 100 -60 110 -60 {
lab=GND}
N 50 -100 60 -100 {
lab=#net1}
N 50 -250 100 -250 {
lab=#net1}
N 100 -170 100 -130 {
lab=#net4}
N 100 -150 160 -150 {
lab=#net4}
N 160 -150 160 -100 {
lab=#net4}
N 160 -100 180 -100 {
lab=#net4}
N 50 -250 50 -100 {
lab=#net1}
C {symbols/npn_10p00x10p00.sym} 200 -100 0 0 {name=Q2
model=npn_10p00x10p00
spiceprefix=X
m=1}
C {devices/code.sym} -120 -120 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
.lib $::180MCU_MODELS/sm141064.ngspice res_typical
.lib $::180MCU_MODELS/sm141064.ngspice moscap_typical
.lib $::180MCU_MODELS/sm141064.ngspice bjt_typical
* .lib $::180MCU_MODELS/sm141064.ngspice res_statistical
"}
C {symbols/npn_10p00x10p00.sym} 80 -100 0 0 {name=Q1
model=npn_10p00x10p00
spiceprefix=X
m=1}
C {devices/gnd.sym} 160 -30 0 0 {name=l1 lab=GND}
C {devices/code_shown.sym} -280 -290 0 0 {name=control only_toplevel=false value=".control
save all
dc Iref 0 3m 0.1m
plot i(Viout)
dc Vout 0 3.3 0.1
plot i(Viout)
.endc"}
C {devices/ammeter.sym} 220 -260 0 0 {name=Viout savecurrent=true}
C {devices/vdd.sym} -170 -130 0 0 {name=l2 lab=VDD}
C {devices/gnd.sym} -170 -30 0 0 {name=l3 lab=GND}
C {devices/vsource.sym} -170 -80 0 0 {name=Vdd value=3.3 savecurrent=false}
C {devices/vdd.sym} 100 -350 0 0 {name=l4 lab=VDD}
C {devices/isource.sym} 100 -300 0 0 {name=Iref value=1m}
C {devices/vsource.sym} 350 -130 0 0 {name=Vout value=1.2 savecurrent=false}
C {devices/code_shown.sym} -280 -370 0 0 {name=measure only_toplevel=false value=".measure dc i1p5 find i(Viout) at=1.5
.measure dc i2p5 find i(Viout) at=2.5"}
C {devices/res.sym} 100 -200 0 0 {name=R1
value=40
footprint=1206
device=resistor
m=1}
