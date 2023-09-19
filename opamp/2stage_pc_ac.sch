v {xschem version=3.4.4 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 290 -270 290 -250 {
lab=#net1}
N 220 -330 330 -330 {
lab=in}
N 220 -330 220 -320 {
lab=in}
N 140 -350 330 -350 {
lab=#net2}
N 140 -350 140 -330 {
lab=#net2}
N 80 -420 390 -420 {
lab=#net3}
N 80 -370 80 -330 {
lab=#net3}
N 80 -170 390 -170 {
lab=GND}
N 80 -270 80 -170 {
lab=GND}
N 140 -270 140 -170 {
lab=GND}
N 220 -260 220 -170 {
lab=GND}
N 290 -190 290 -170 {
lab=GND}
N 80 -170 80 -150 {
lab=GND}
N 80 -420 80 -370 {
lab=#net3}
N 450 -310 490 -310 {
lab=out}
N 490 -310 490 -290 {
lab=out}
N 490 -230 490 -180 {
lab=GND}
N 290 -290 330 -290 {
lab=#net1}
N 290 -290 290 -270 {
lab=#net1}
N 390 -250 390 -170 {
lab=GND}
N 390 -420 390 -370 {
lab=#net3}
N 390 -170 490 -170 {
lab=GND}
N 490 -180 490 -170 {
lab=GND}
C {devices/code_shown.sym} -470 -470 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/code_shown.sym} -470 -370 0 0 {name=control only_toplevel=false value=".option savecurrent
.control
set units=degree
op
save all
ac dec 20 1e3 1e10
plot vdb(out)
plot vp(out)
.endc"}
C {devices/vsource.sym} 80 -300 0 0 {name=Vdd value=3.3}
C {devices/vsource.sym} 140 -300 0 0 {name=Vb value=2.3}
C {devices/vsource.sym} 290 -220 0 0 {name=Vinn value=1.65}
C {devices/vsource.sym} 220 -290 0 0 {name=Vinp value="DC 1.65 AC 1"}
C {devices/gnd.sym} 80 -150 0 0 {name=l1 lab=GND}
C {devices/lab_pin.sym} 490 -310 0 1 {name=p1 sig_type=std_logic lab=out}
C {devices/code_shown.sym} -470 -150 0 0 {name=measure only_toplevel=false value=".measure ac gain find vdb(out) at=1e3
.measure ac ugf when vdb(out)=0
.measure ac phase find vp(out) at=33.1e6"}
C {devices/capa.sym} 490 -260 0 0 {name=C1
m=1
value=10p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 220 -330 0 0 {name=p2 sig_type=std_logic lab=in}
C {2stage_pc.sym} 350 -310 0 0 {name=X1}
