v {xschem version=3.4.2 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 130 -70 130 -50 {
lab=GND}
N 130 -100 140 -100 {
lab=GND}
N 140 -100 140 -60 {
lab=GND}
N 130 -60 140 -60 {
lab=GND}
N 130 -150 130 -130 {
lab=#net1}
N 30 -50 130 -50 {
lab=GND}
N 80 -100 90 -100 {
lab=#net1}
N 80 -140 80 -100 {
lab=#net1}
N 80 -140 130 -140 {
lab=#net1}
N 30 -70 30 -30 {
lab=GND}
N 130 -230 130 -210 {
lab=va}
N 130 -50 320 -50 {
lab=GND}
N 320 -70 320 -50 {
lab=GND}
N 270 -140 320 -140 {
lab=#net2}
N 270 -140 270 -100 {
lab=#net2}
N 270 -100 280 -100 {
lab=#net2}
N 320 -150 320 -130 {
lab=#net2}
N 320 -230 320 -210 {
lab=vb}
N 320 -390 320 -370 {
lab=#net3}
N 30 -390 320 -390 {
lab=#net3}
N 130 -390 130 -370 {
lab=#net3}
N 320 -100 330 -100 {
lab=GND}
N 330 -100 330 -60 {
lab=GND}
N 320 -60 330 -60 {
lab=GND}
N 130 -310 130 -290 {
lab=#net4}
N 320 -310 320 -230 {
lab=vb}
N 320 -220 330 -220 {
lab=vb}
N 30 -390 30 -130 {
lab=#net3}
N 130 -220 140 -220 {
lab=va}
C {symbols/npn_10p00x10p00.sym} 110 -100 0 0 {name=Q1
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
C {devices/gnd.sym} 30 -30 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} 30 -100 0 0 {name=Vdd value=1}
C {devices/code_shown.sym} -200 -280 0 0 {name=control only_toplevel=false value=".control
save all
dc I0 0 1m 0.01m
plot va vb
plot \{va-vb\}
.endc"}
C {symbols/npn_10p00x10p00.sym} 300 -100 0 0 {name=Q2
model=npn_10p00x10p00
spiceprefix=X
m=16}
C {devices/res.sym} 320 -180 0 0 {name=Rb
value=160
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 130 -180 0 0 {name=Ra
value=10
footprint=1206
device=resistor
m=1}
C {devices/isource.sym} 130 -340 0 0 {name=I0 value=1m}
C {devices/cccs.sym} 320 -340 0 0 {name=F1 vnam=Vi0 value=1}
C {devices/lab_pin.sym} 140 -220 0 1 {name=p1 sig_type=std_logic lab=va}
C {devices/lab_pin.sym} 330 -220 0 1 {name=p2 sig_type=std_logic lab=vb}
C {devices/ammeter.sym} 130 -260 0 0 {name=Vi0}
