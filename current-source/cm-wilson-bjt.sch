v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 140 -100 180 -100 {
lab=#net1}
N 100 -70 100 -50 {
lab=GND}
N 100 -50 220 -50 {
lab=GND}
N 220 -70 220 -50 {
lab=GND}
N 160 -50 160 -30 {
lab=GND}
N 90 -100 100 -100 {
lab=GND}
N 90 -100 90 -60 {
lab=GND}
N 90 -60 100 -60 {
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
N 100 -350 100 -310 {
lab=#net2}
N 160 -120 160 -100 {
lab=#net1}
N 220 -250 220 -230 {
lab=#net3}
N 100 -430 100 -410 {
lab=VDD}
N 220 -50 350 -50 {
lab=GND}
N 350 -100 350 -50 {
lab=GND}
N 220 -330 220 -310 {
lab=#net4}
N 220 -330 350 -330 {
lab=#net4}
N 350 -330 350 -260 {
lab=#net4}
N 160 -150 160 -120 {
lab=#net1}
N 220 -170 220 -130 {
lab=#net1}
N 220 -200 230 -200 {
lab=#net1}
N 230 -200 230 -160 {
lab=#net1}
N 220 -160 230 -160 {
lab=#net1}
N 160 -220 160 -200 {
lab=#net5}
N 350 -260 350 -160 {
lab=#net4}
N 100 -330 160 -330 {
lab=#net2}
N 160 -330 160 -280 {
lab=#net2}
N 100 -250 100 -130 {
lab=#net6}
N 160 -200 180 -200 {
lab=#net5}
N 160 -150 220 -150 {
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
C {symbols/npn_10p00x10p00.sym} 120 -100 0 1 {name=Q1
model=npn_10p00x10p00
spiceprefix=X
m=1}
C {devices/gnd.sym} 160 -30 0 0 {name=l1 lab=GND}
C {devices/code_shown.sym} -280 -270 0 0 {name=control only_toplevel=false value=".control
save all
dc Vout 0 3.3 0.01
plot i(Vic) i(Vib) i(Viout)
.endc"}
C {devices/ammeter.sym} 220 -280 0 0 {name=Viout savecurrent=true}
C {devices/vdd.sym} -170 -130 0 0 {name=l2 lab=VDD}
C {devices/gnd.sym} -170 -30 0 0 {name=l3 lab=GND}
C {devices/vsource.sym} -170 -80 0 0 {name=Vdd value=3.3 savecurrent=false}
C {devices/vdd.sym} 100 -430 0 0 {name=l4 lab=VDD}
C {devices/isource.sym} 100 -380 0 0 {name=Iref value=1m}
C {devices/ammeter.sym} 100 -280 0 0 {name=Vic savecurrent=true}
C {devices/ammeter.sym} 160 -250 0 0 {name=Vib savecurrent=true}
C {devices/vsource.sym} 350 -130 0 0 {name=Vout value=1.2 savecurrent=false}
C {devices/code_shown.sym} -280 -350 0 0 {name=measure only_toplevel=false value=".measure dc i1p5 find i(Viout) at=1.5
.measure dc i2p5 find i(Viout) at=2.5"}
C {symbols/npn_10p00x10p00.sym} 200 -200 0 0 {name=Q3
model=npn_10p00x10p00
spiceprefix=X
m=1}
