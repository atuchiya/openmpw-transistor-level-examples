v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 120 -120 120 -100 {
lab=out}
N 70 -70 80 -70 {
lab=in}
N 120 -40 120 -20 {
lab=GND}
N 120 -200 120 -180 {
lab=VDD}
N 120 -110 150 -110 {
lab=out}
N 40 -70 70 -70 {
lab=in}
N 120 -70 130 -70 {
lab=GND}
N 130 -70 130 -30 {
lab=GND}
N 120 -30 130 -30 {
lab=GND}
C {devices/vdd.sym} 120 -200 0 0 {name=l1 lab=VDD}
C {devices/gnd.sym} 120 -20 0 0 {name=l2 lab=GND}
C {devices/ipin.sym} 40 -70 0 0 {name=p1 lab=in}
C {devices/opin.sym} 150 -110 0 0 {name=p2 lab=out}
C {devices/res.sym} 120 -150 0 0 {name=R1
value=1k
footprint=1206
device=resistor
m=1}
C {devices/nmos4.sym} 100 -70 0 0 {name=M1 model=nch w=3.6u l=0.18u del=0 m=1}
