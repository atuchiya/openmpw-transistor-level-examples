v {xschem version=3.4.2 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 160 -100 210 -100 {
lab=#net1}
N 30 -140 30 -30 {
lab=GND}
N 30 -50 250 -50 {
lab=GND}
N 250 -70 250 -50 {
lab=GND}
N 120 -70 120 -50 {
lab=GND}
N 110 -100 120 -100 {
lab=GND}
N 110 -100 110 -60 {
lab=GND}
N 110 -60 120 -60 {
lab=GND}
N 250 -100 260 -100 {
lab=GND}
N 260 -100 260 -60 {
lab=GND}
N 250 -60 260 -60 {
lab=GND}
N 180 -120 180 -100 {
lab=#net1}
N 120 -150 120 -130 {
lab=#net2}
N 120 -230 120 -210 {
lab=#net3}
N 120 -230 180 -230 {
lab=#net3}
N 180 -230 180 -180 {
lab=#net3}
N 250 -150 250 -130 {
lab=#net4}
N 120 -250 120 -230 {
lab=#net3}
N 120 -330 120 -310 {
lab=#net5}
N 120 -410 120 -390 {
lab=#net6}
N 30 -410 120 -410 {
lab=#net6}
N 30 -410 30 -200 {
lab=#net6}
N 120 -410 250 -410 {
lab=#net6}
N 250 -410 250 -210 {
lab=#net6}
C {symbols/npn_10p00x10p00.sym} 140 -100 0 1 {name=Q1
model=npn_10p00x10p00
spiceprefix=X
m=1}
C {symbols/npn_10p00x10p00.sym} 230 -100 0 0 {name=Q2
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
C {devices/vsource.sym} 30 -170 0 0 {name=Vdd value=3.3}
C {devices/isource.sym} 120 -360 0 0 {name=Iref value=10u}
C {devices/ammeter.sym} 250 -180 0 0 {name=Vcopy}
C {devices/code_shown.sym} -350 -240 0 0 {name=control only_toplevel=false value=".control
save all
dc Iref 0 100u 0.1u
plot i(Vref) i(Vc) i(Vcopy) i(Vb)
.endc"}
C {devices/ammeter.sym} 180 -150 0 0 {name=Vb}
C {devices/ammeter.sym} 120 -180 0 0 {name=Vc}
C {devices/ammeter.sym} 120 -280 0 0 {name=Vref}
