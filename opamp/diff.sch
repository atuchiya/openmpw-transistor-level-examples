v {xschem version=3.4.4 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 420 -210 420 -150 {
lab=out}
N 220 -210 220 -150 {
lab=#net1}
N 260 -120 380 -120 {
lab=#net1}
N 220 -90 220 -60 {
lab=vss}
N 220 -60 420 -60 {
lab=vss}
N 420 -90 420 -60 {
lab=vss}
N 220 -180 320 -180 {
lab=#net1}
N 320 -180 320 -120 {
lab=#net1}
N 220 -290 420 -290 {
lab=#net2}
N 420 -290 420 -270 {
lab=#net2}
N 320 -320 320 -290 {
lab=#net2}
N 320 -60 320 -30 {
lab=vss}
N 320 -400 320 -380 {
lab=vdd}
N 250 -350 280 -350 {
lab=vb}
N 420 -180 460 -180 {
lab=out}
N 220 -290 220 -270 {
lab=#net2}
N 320 -350 340 -350 {
lab=vdd}
N 340 -390 340 -350 {
lab=vdd}
N 320 -390 340 -390 {
lab=vdd}
N 210 -120 220 -120 {
lab=vss}
N 210 -120 210 -80 {
lab=vss}
N 210 -80 220 -80 {
lab=vss}
N 420 -120 430 -120 {
lab=vss}
N 430 -120 430 -80 {
lab=vss}
N 420 -80 430 -80 {
lab=vss}
N 220 -240 230 -240 {
lab=#net2}
N 230 -280 230 -240 {
lab=#net2}
N 220 -280 230 -280 {
lab=#net2}
N 410 -240 420 -240 {
lab=#net2}
N 410 -280 410 -240 {
lab=#net2}
N 410 -280 420 -280 {
lab=#net2}
N 150 -240 180 -240 {
lab=vinn}
N 460 -240 500 -240 {
lab=vinn}
N 320 -30 320 -20 {
lab=vss}
N 320 -450 320 -400 {
lab=vdd}
C {symbols/pfet_03v3.sym} 200 -240 0 0 {name=M1
L=0.28u
W=28u
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
C {symbols/pfet_03v3.sym} 440 -240 0 1 {name=M2
L=0.28u
W=28u
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
C {symbols/pfet_03v3.sym} 300 -350 0 0 {name=M5
L=0.28u
W=5.6u
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
C {symbols/nfet_03v3.sym} 400 -120 0 0 {name=M4
L=0.28u
W=1.4u
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 240 -120 0 1 {name=M3
L=0.28u
W=1.4u
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {devices/ipin.sym} 150 -240 0 0 {name=p9 lab=vinn}
C {devices/ipin.sym} 500 -240 0 1 {name=p5 lab=vinp}
C {devices/ipin.sym} 250 -350 0 0 {name=p2 lab=vb}
C {devices/opin.sym} 460 -180 0 0 {name=p3 lab=out}
C {devices/iopin.sym} 320 -450 0 0 {name=p1 lab=vdd
}
C {devices/iopin.sym} 320 -20 0 0 {name=p4 lab=vss
}
