v {xschem version=3.4.2 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 80 -50 80 -30 {
lab=GND}
N 80 -80 80 -50 {
lab=GND}
N 190 -410 370 -410 {
lab=#net1}
N 370 -170 370 -130 {
lab=ve2}
N 370 -200 380 -200 {
lab=ve2}
N 380 -200 380 -160 {
lab=ve2}
N 370 -160 380 -160 {
lab=ve2}
N 190 -50 370 -50 {
lab=ve1}
N 370 -70 370 -50 {
lab=ve1}
N 80 -350 80 -140 {
lab=#net1}
N 80 -410 190 -410 {
lab=#net1}
N 370 -150 400 -150 {
lab=ve2}
N 80 -410 80 -350 {
lab=#net1}
N 180 -200 190 -200 {
lab=ve1}
N 180 -200 180 -160 {
lab=ve1}
N 180 -160 190 -160 {
lab=ve1}
N 190 -170 190 -50 {
lab=ve1}
N 190 -410 190 -390 {
lab=#net1}
N 370 -410 370 -390 {
lab=#net1}
N 190 -320 260 -320 {
lab=#net2}
N 300 -320 370 -320 {
lab=#net3}
N 240 -260 240 -250 {
lab=GND}
N 240 -260 250 -260 {
lab=GND}
N 310 -260 320 -260 {
lab=vout}
N 320 -260 320 -200 {
lab=vout}
N 230 -200 330 -200 {
lab=vout}
N 320 -260 330 -260 {
lab=vout}
N 190 -250 190 -230 {
lab=#net4}
N 190 -330 190 -310 {
lab=#net2}
N 370 -250 370 -230 {
lab=#net5}
N 370 -330 370 -310 {
lab=#net3}
N 300 -320 300 -300 {
lab=#net3}
N 260 -320 260 -300 {
lab=#net2}
N 170 -50 190 -50 {
lab=ve1}
N 80 -50 110 -50 {
lab=GND}
N 370 -50 400 -50 {
lab=ve1}
C {symbols/npn_10p00x10p00.sym} 210 -200 0 1 {name=Q1
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
C {devices/gnd.sym} 80 -30 0 0 {name=l1 lab=GND}
C {devices/code_shown.sym} -200 -310 0 0 {name=control only_toplevel=false value=".control
save all
dc temp -50 125 25
plot i(VQ1) i(VQ2)
plot vout, vout - ve1, ve1
.endc"}
C {devices/vsource.sym} 80 -110 0 0 {name=Vdd value=3.3}
C {symbols/npn_10p00x10p00.sym} 350 -200 0 0 {name=Q2
model=npn_10p00x10p00
spiceprefix=X
m=16}
C {devices/res.sym} 370 -100 0 0 {name=R3
value=1k
footprint=1206
device=resistor
m=1}
C {devices/lab_pin.sym} 400 -150 0 1 {name=p1 sig_type=std_logic lab=ve2}
C {devices/res.sym} 190 -360 0 0 {name=R1
value=10k
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 370 -360 0 0 {name=R2
value=10k
footprint=1206
device=resistor
m=1}
C {devices/vcvs.sym} 280 -260 1 0 {name=E1 value=10000}
C {devices/gnd.sym} 240 -250 0 0 {name=l2 lab=GND}
C {devices/lab_pin.sym} 330 -260 0 1 {name=p2 sig_type=std_logic lab=vout}
C {devices/ammeter.sym} 190 -280 0 0 {name=VQ1}
C {devices/ammeter.sym} 370 -280 0 0 {name=VQ2}
C {devices/res.sym} 140 -50 1 0 {name=R4
value=3.12k
footprint=1206
device=resistor
m=1}
C {devices/lab_pin.sym} 400 -50 0 1 {name=p3 sig_type=std_logic lab=ve1}
