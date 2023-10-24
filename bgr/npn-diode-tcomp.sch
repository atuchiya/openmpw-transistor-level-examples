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
lab=vb}
N 30 -50 130 -50 {
lab=GND}
N 80 -100 90 -100 {
lab=vb}
N 80 -140 80 -100 {
lab=vb}
N 80 -140 130 -140 {
lab=vb}
N 30 -70 30 -30 {
lab=GND}
N 130 -230 130 -210 {
lab=vout}
N 130 -390 130 -370 {
lab=#net1}
N 130 -310 130 -290 {
lab=#net2}
N 30 -390 30 -130 {
lab=#net1}
N 130 -220 140 -220 {
lab=vout}
N 30 -390 130 -390 {
lab=#net1}
N 70 -140 80 -140 {
lab=vb}
N 60 -270 60 -250 {
lab=GND}
N 60 -340 60 -330 {
lab=#net3}
N 60 -340 90 -340 {
lab=#net3}
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
C {devices/vsource.sym} 30 -100 0 0 {name=Vdd value=3.3}
C {devices/code_shown.sym} -200 -280 0 0 {name=control only_toplevel=false value=".control
save all
dc temp -50 125 25
plot vb, \{vout-vb\}, vout
.endc"}
C {devices/res.sym} 130 -180 0 0 {name=Ra
value=25
footprint=1206
device=resistor
m=1}
C {devices/lab_pin.sym} 140 -220 0 1 {name=p1 sig_type=std_logic lab=vout}
C {devices/ammeter.sym} 130 -260 0 0 {name=Vi0}
C {devices/lab_pin.sym} 70 -140 0 0 {name=p2 sig_type=std_logic lab=vb}
C {symbols/pnp_10p00x10p00.sym} 110 -340 0 0 {name=Q2
model=pnp_10p00x10p00
spiceprefix=X
m=1}
C {devices/vsource.sym} 60 -300 0 0 {name=Vb value=2.3}
C {devices/gnd.sym} 60 -250 0 0 {name=l2 lab=GND}
