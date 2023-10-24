v {xschem version=3.4.2 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 180 -70 180 -50 {
lab=GND}
N 180 -100 190 -100 {
lab=GND}
N 190 -100 190 -60 {
lab=GND}
N 180 -60 190 -60 {
lab=GND}
N 180 -150 180 -130 {
lab=#net1}
N 80 -50 180 -50 {
lab=GND}
N 130 -100 140 -100 {
lab=#net1}
N 130 -140 130 -100 {
lab=#net1}
N 130 -140 180 -140 {
lab=#net1}
N 180 -50 370 -50 {
lab=GND}
N 370 -70 370 -50 {
lab=GND}
N 320 -140 370 -140 {
lab=#net2}
N 320 -140 320 -100 {
lab=#net2}
N 320 -100 330 -100 {
lab=#net2}
N 370 -150 370 -130 {
lab=#net2}
N 370 -310 370 -290 {
lab=vout}
N 180 -310 180 -290 {
lab=vout}
N 370 -100 380 -100 {
lab=GND}
N 380 -100 380 -60 {
lab=GND}
N 370 -60 380 -60 {
lab=GND}
N 180 -230 180 -210 {
lab=va}
N 370 -220 380 -220 {
lab=vb}
N 180 -220 190 -220 {
lab=va}
N 160 -310 370 -310 {
lab=vout}
N 370 -310 380 -310 {
lab=vout}
N 370 -230 370 -210 {
lab=vb}
N 80 -50 80 -30 {
lab=GND}
N 80 -310 160 -310 {
lab=vout}
N 80 -310 80 -280 {
lab=vout}
N 30 -230 40 -230 {
lab=vb}
N 30 -270 40 -270 {
lab=va}
N 80 -80 80 -50 {
lab=GND}
N 80 -220 80 -140 {
lab=#net3}
C {symbols/npn_10p00x10p00.sym} 160 -100 0 0 {name=Q1
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
dc V1 0 3.3 0.01
plot va vb vout
.endc"}
C {symbols/npn_10p00x10p00.sym} 350 -100 0 0 {name=Q2
model=npn_10p00x10p00
spiceprefix=X
m=16}
C {devices/res.sym} 370 -180 0 0 {name=Rb
value=160
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 180 -180 0 0 {name=Ra
value=10
footprint=1206
device=resistor
m=1}
C {devices/lab_pin.sym} 190 -220 0 1 {name=p1 sig_type=std_logic lab=va}
C {devices/lab_pin.sym} 380 -220 0 1 {name=p2 sig_type=std_logic lab=vb}
C {devices/res.sym} 180 -260 0 0 {name=Rc
value=1k
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 370 -260 0 0 {name=Rd
value=1k
footprint=1206
device=resistor
m=1}
C {devices/lab_pin.sym} 380 -310 0 1 {name=p3 sig_type=std_logic lab=vout}
C {devices/lab_pin.sym} 30 -270 0 0 {name=p4 sig_type=std_logic lab=va}
C {devices/lab_pin.sym} 30 -230 0 0 {name=p5 sig_type=std_logic lab=vb}
C {devices/vsource.sym} 80 -110 0 0 {name=V1 value=3.3}
C {devices/vccs.sym} 80 -250 2 1 {name=G1 value=10}
