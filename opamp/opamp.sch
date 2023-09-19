v {xschem version=3.4.4 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 70 -370 70 -180 {
lab=#net1}
N 350 -130 400 -130 {
lab=#net2}
N 360 -290 360 -130 {
lab=#net2}
N 420 -290 440 -290 {
lab=#net3}
N 500 -290 510 -290 {
lab=out}
N 510 -290 510 -130 {
lab=out}
N 470 -130 510 -130 {
lab=out}
N 390 -340 390 -330 {
lab=#net1}
N 70 -340 320 -340 {
lab=#net1}
N 70 -450 70 -430 {
lab=vdd}
N 70 -450 360 -450 {
lab=vdd}
N 430 -450 430 -160 {
lab=vdd}
N 290 -450 290 -190 {
lab=vdd}
N 70 -400 80 -400 {
lab=vdd}
N 80 -440 80 -400 {
lab=vdd}
N 70 -440 80 -440 {
lab=vdd}
N 70 -150 90 -150 {
lab=vss}
N 90 -150 90 -20 {
lab=vss}
N 70 -20 90 -20 {
lab=vss}
N 70 -40 70 -20 {
lab=vss}
N 70 -70 80 -70 {
lab=vss}
N 80 -70 80 -20 {
lab=vss}
N 70 -120 70 -100 {
lab=#net4}
N 20 -110 70 -110 {
lab=#net4}
N 20 -110 20 -70 {
lab=#net4}
N 20 -70 30 -70 {
lab=#net4}
N 20 -190 70 -190 {
lab=#net1}
N 20 -190 20 -150 {
lab=#net1}
N 20 -150 30 -150 {
lab=#net1}
N 90 -20 360 -20 {
lab=vss}
N 430 -100 430 -20 {
lab=vss}
N 290 -70 290 -20 {
lab=vss}
N 400 -220 400 -150 {
lab=ib}
N 20 -220 330 -220 {
lab=ib}
N 20 -400 20 -220 {
lab=ib}
N 20 -400 30 -400 {
lab=ib}
N 230 -220 230 -180 {
lab=ib}
N 360 -20 430 -20 {
lab=vss}
N 330 -220 400 -220 {
lab=ib}
N 320 -340 390 -340 {
lab=#net1}
N 360 -450 430 -450 {
lab=vdd}
N 210 -100 230 -100 {
lab=vinn}
N 210 -160 230 -160 {
lab=vinp}
N 0 -400 20 -400 {
lab=ib}
N 510 -130 530 -130 {
lab=out}
N 430 -20 450 -20 {
lab=vss}
N 430 -450 450 -450 {
lab=vdd}
N 390 -290 390 -20 {
lab=vss}
N -50 -400 0 -400 {
lab=ib}
N -90 -450 70 -450 {
lab=vdd}
N -90 -450 -90 -430 {
lab=vdd}
N -90 -370 -90 -310 {
lab=ib}
N -90 -340 -30 -340 {
lab=ib}
N -30 -400 -30 -340 {
lab=ib}
N -100 -400 -90 -400 {
lab=vdd}
N -100 -440 -100 -400 {
lab=vdd}
N -100 -440 -90 -440 {
lab=vdd}
C {diff.sym} 250 -130 0 0 {name=X1}
C {cs.sym} 420 -130 0 0 {name=X2}
C {devices/capa.sym} 470 -290 1 0 {name=C2
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {symbols/pfet_03v3.sym} 50 -400 0 0 {name=M6
L=0.28u
W=2.8u
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
C {symbols/nfet_03v3.sym} 50 -70 0 0 {name=M7
L=0.28u
W=1.4u
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
C {symbols/nfet_03v3.sym} 50 -150 0 0 {name=M1
L=0.28u
W=1.4u
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
C {symbols/nfet_03v3.sym} 390 -310 1 0 {name=M2
L=0.28u
W=5.6u
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
C {devices/ipin.sym} 210 -160 0 0 {name=p1 lab=vinp
}
C {devices/ipin.sym} 210 -100 0 0 {name=p2 lab=vinn
}
C {devices/opin.sym} 530 -130 0 0 {name=p4 lab=out}
C {devices/iopin.sym} 450 -450 0 0 {name=p5 lab=vdd}
C {devices/iopin.sym} 450 -20 0 0 {name=p6 lab=vss}
C {symbols/pfet_03v3.sym} -70 -400 0 1 {name=M3
L=0.28u
W=2.8u
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
C {devices/iopin.sym} -90 -310 1 0 {name=p3 lab=ib}
