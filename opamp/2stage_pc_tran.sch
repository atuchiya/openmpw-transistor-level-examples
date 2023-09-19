v {xschem version=3.4.4 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 40 -140 40 -120 {
lab=GND}
N 180 -180 180 -170 {
lab=in}
N 180 -110 180 -100 {
lab=GND}
N 180 -100 300 -100 {
lab=GND}
N 100 -100 150 -100 {
lab=GND}
N 100 -140 100 -100 {
lab=GND}
N 40 -120 40 -80 {
lab=GND}
N 40 -100 100 -100 {
lab=GND}
N 300 -100 310 -100 {
lab=GND}
N 400 -200 430 -200 {
lab=out}
N 430 -200 430 -190 {
lab=out}
N 430 -130 430 -120 {
lab=GND}
N 310 -100 380 -100 {
lab=GND}
N 150 -100 180 -100 {
lab=GND}
N 340 -140 340 -100 {
lab=GND}
N 380 -100 430 -100 {
lab=GND}
N 430 -120 430 -100 {
lab=GND}
N 100 -240 280 -240 {
lab=#net1}
N 100 -240 100 -200 {
lab=#net1}
N 40 -310 40 -200 {
lab=#net2}
N 40 -310 340 -310 {
lab=#net2}
N 340 -310 340 -260 {
lab=#net2}
N 180 -220 280 -220 {
lab=in}
N 180 -220 180 -180 {
lab=in}
N 260 -180 280 -180 {}
N 260 -180 260 -130 {}
N 260 -130 410 -130 {}
N 410 -200 410 -130 {}
C {devices/gnd.sym} 40 -80 0 0 {name=l4 lab=GND}
C {devices/vsource.sym} 40 -170 0 0 {name=Vdd value=3.3}
C {devices/vsource.sym} 100 -170 0 0 {name=Vb value=2.3}
C {devices/code_shown.sym} -460 -290 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/code_shown.sym} -460 -200 0 0 {name=control only_toplevel=false value=".option savecurrent
.control
op
save all
tran 0.1n 1000n
plot v(in) V(out)
.endc"}
C {devices/lab_pin.sym} 430 -200 0 1 {name=p1 sig_type=std_logic lab=out}
C {devices/capa.sym} 430 -160 0 0 {name=C1
m=1
value=10p
footprint=1206
device="ceramic capacitor"}
C {devices/code_shown.sym} -460 -30 0 0 {name=measure only_toplevel=false value=".measure tran tr trig V(out) val=1 rise=1 targ V(out) val=2 rise=1"}
C {devices/vsource.sym} 180 -140 0 0 {name=Vin value="pwl 0 0 1n 0 1.1n 3.3"}
C {devices/lab_pin.sym} 180 -220 0 0 {name=p2 sig_type=std_logic lab=in}
C {2stage_pc.sym} 300 -200 0 0 {name=X1}
