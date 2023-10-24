v {xschem version=3.4.2 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 170 -70 170 -50 {
lab=#net1}
N 170 -100 180 -100 {
lab=#net1}
N 180 -100 180 -60 {
lab=#net1}
N 170 -60 180 -60 {
lab=#net1}
N 30 -50 130 -50 {
lab=GND}
N 30 -70 30 -30 {
lab=GND}
N 170 -390 170 -370 {
lab=#net2}
N 30 -390 30 -130 {
lab=#net3}
N 30 -390 130 -390 {
lab=#net3}
N 100 -270 100 -250 {
lab=GND}
N 100 -340 100 -330 {
lab=#net4}
N 100 -340 130 -340 {
lab=#net4}
N 170 -240 170 -230 {
lab=#net5}
N 170 -230 250 -230 {
lab=#net5}
N 250 -390 250 -310 {
lab=#net2}
N 170 -390 250 -390 {
lab=#net2}
N 170 -140 170 -130 {
lab=#net6}
N 170 -210 170 -200 {
lab=#net7}
N 170 -210 250 -210 {
lab=#net7}
N 250 -210 250 -130 {
lab=#net7}
N 250 -70 250 -50 {
lab=#net1}
N 170 -50 250 -50 {
lab=#net1}
N 250 -250 250 -230 {}
N 170 -310 170 -300 {}
N 130 -50 170 -50 {}
N 100 -60 100 -50 {}
N 100 -130 100 -120 {}
N 100 -130 120 -130 {}
N 120 -130 120 -100 {}
N 120 -100 130 -100 {}
N 130 -390 170 -390 {}
C {symbols/npn_10p00x10p00.sym} 150 -100 0 0 {name=Q1
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
plot i(Vpnp) i(Vnpn)
.endc"}
C {devices/ammeter.sym} 170 -270 0 0 {name=Vpnp}
C {symbols/pnp_10p00x10p00.sym} 150 -340 0 0 {name=Q2
model=pnp_10p00x10p00
spiceprefix=X
m=1}
C {devices/vsource.sym} 100 -300 0 0 {name=Vbp value=2.3}
C {devices/gnd.sym} 100 -250 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} 250 -280 0 0 {name=Vcep value=1.5}
C {devices/vsource.sym} 250 -100 0 0 {name=Vcen value=1.5}
C {devices/ammeter.sym} 170 -170 0 0 {name=Vnpn}
C {devices/vsource.sym} 100 -90 0 0 {name=Vbn value=1.0}
