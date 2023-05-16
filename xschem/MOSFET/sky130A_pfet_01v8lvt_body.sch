v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 110 -100 110 -50 {
lab=#net1}
N 30 -130 70 -130 {
lab=#net2}
N 230 -60 230 -50 {
lab=#net1}
N 110 -50 230 -50 {
lab=#net1}
N 230 -180 230 -120 {
lab=GND}
N 110 -130 160 -130 {
lab=#net3}
N 30 -140 30 -130 {
lab=#net2}
N 30 -210 30 -200 {
lab=GND}
N 30 -210 230 -210 {
lab=GND}
N 230 -210 230 -180 {
lab=GND}
N 160 -210 160 -200 {
lab=GND}
N 110 -210 110 -160 {
lab=GND}
N 160 -140 160 -130 {
lab=#net3}
N 290 -210 290 -30 {
lab=GND}
N 230 -210 290 -210 {
lab=GND}
C {devices/gnd.sym} 290 -30 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} 30 -170 0 0 {name=Vgs value=1.0}
C {devices/vsource.sym} 230 -90 0 0 {name=Vds value=1.8}
C {devices/code_shown.sym} 10 40 0 0 {name=control only_toplevel=false value=".option savecurrents
.control
save all
save @m.xm1.msky130_fd_pr__pfet_01v8_lvt[vth]
dc Vbs -1.8 1 0.02
plot @m.xm1.msky130_fd_pr__pfet_01v8_lvt[vth]
wrdata sky130A_pfet_01v8lvt_body.txt @m.xm1.msky130_fd_pr__pfet_01v8_lvt[vth]
.endc"}
C {devices/vsource.sym} 160 -170 0 0 {name=Vbs value=1.0}
C {sky130_fd_pr/corner.sym} -120 -120 0 0 {name=CORNER only_toplevel=true corner=tt}
C {sky130_fd_pr/pfet_01v8_lvt.sym} 90 -130 0 0 {name=M1
L=0.35
W=3.5
nf=1 mult=1
model=pfet_01v8_lvt
spiceprefix=X
}
