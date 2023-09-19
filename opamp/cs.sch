v {xschem version=3.4.4 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 240 -200 240 -140 {
lab=out}
N 240 -80 240 -50 {
lab=vss}
N 240 -300 240 -280 {
lab=vdd}
N 240 -170 280 -170 {
lab=out}
N 240 -250 260 -250 {
lab=vdd}
N 260 -290 260 -250 {
lab=vdd}
N 240 -290 260 -290 {
lab=vdd}
N 240 -110 250 -110 {
lab=vss}
N 250 -110 250 -70 {
lab=vss}
N 240 -70 250 -70 {
lab=vss}
N 240 -220 240 -200 {
lab=out}
N 170 -110 200 -110 {
lab=vin}
N 170 -250 200 -250 {
lab=vb}
N 240 -320 240 -300 {
lab=vdd}
N 240 -50 240 -40 {
lab=vss}
C {symbols/pfet_03v3.sym} 220 -250 0 0 {name=M6
L=0.28u
W=56u
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 220 -110 0 0 {name=M7
L=0.28u
W=28u
nf=1
mult=3
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {devices/ipin.sym} 170 -250 0 0 {name=p1 lab=vb}
C {devices/ipin.sym} 170 -110 0 0 {name=p2 lab=vin}
C {devices/opin.sym} 280 -170 0 0 {name=p3 lab=out}
C {devices/iopin.sym} 240 -40 0 0 {name=p4 lab=vss}
C {devices/iopin.sym} 240 -320 0 0 {name=p5 lab=vdd}
