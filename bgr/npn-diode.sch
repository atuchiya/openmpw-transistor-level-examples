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
lab=#net2}
N 30 -230 130 -230 {
lab=#net2}
N 30 -230 30 -130 {
lab=#net2}
C {symbols/npn_10p00x10p00.sym} 110 -100 0 0 {name=Q2
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
C {devices/vsource.sym} 30 -100 0 0 {name=Vdd value=3.3}
C {devices/ammeter.sym} 130 -180 0 0 {name=Vc}
C {devices/code_shown.sym} -200 -280 0 0 {name=control only_toplevel=false value=".control
save all
dc Vdd 0 3.3 0.01
plot i(Vc)
dc temp -50 125 25
plot i(Vc)
.endc"}
