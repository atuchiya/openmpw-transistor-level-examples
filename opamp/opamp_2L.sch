v {xschem version=3.4.4 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 270 -370 270 -180 {
lab=#net1}
N 910 -300 930 -300 {
lab=#net2}
N 270 -450 270 -430 {
lab=vdd}
N 270 -400 280 -400 {
lab=vdd}
N 280 -440 280 -400 {
lab=vdd}
N 270 -440 280 -440 {
lab=vdd}
N 270 -150 290 -150 {
lab=vss}
N 290 -150 290 -20 {
lab=vss}
N 270 -20 290 -20 {
lab=vss}
N 270 -40 270 -20 {
lab=vss}
N 270 -70 280 -70 {
lab=vss}
N 280 -70 280 -20 {
lab=vss}
N 270 -120 270 -100 {
lab=#net3}
N 220 -110 270 -110 {
lab=#net3}
N 220 -110 220 -70 {
lab=#net3}
N 220 -70 230 -70 {
lab=#net3}
N 220 -190 270 -190 {
lab=#net1}
N 220 -190 220 -150 {
lab=#net1}
N 220 -150 230 -150 {
lab=#net1}
N 220 -400 230 -400 {
lab=ib}
N 200 -400 220 -400 {
lab=ib}
N 150 -400 200 -400 {
lab=ib}
N 110 -450 270 -450 {
lab=vdd}
N 110 -450 110 -430 {
lab=vdd}
N 110 -370 110 -310 {
lab=ib}
N 110 -340 170 -340 {
lab=ib}
N 170 -400 170 -340 {
lab=ib}
N 100 -400 110 -400 {
lab=vdd}
N 100 -440 100 -400 {
lab=vdd}
N 100 -440 110 -440 {
lab=vdd}
N 1010 -450 1010 -430 {
lab=vdd}
N 1010 -150 1050 -150 {
lab=out}
N 1010 -400 1030 -400 {
lab=vdd}
N 1030 -440 1030 -400 {
lab=vdd}
N 1010 -440 1030 -440 {
lab=vdd}
N 1010 -70 1020 -70 {
lab=vss}
N 1020 -70 1020 -30 {
lab=vss}
N 1010 -30 1020 -30 {
lab=vss}
N 1010 -30 1010 -20 {
lab=vss}
N 950 -400 950 -360 {
lab=ib}
N 950 -400 970 -400 {
lab=ib}
N 210 -400 210 -360 {
lab=ib}
N 210 -360 700 -360 {
lab=ib}
N 990 -300 1010 -300 {
lab=out}
N 270 -350 630 -350 {
lab=#net1}
N 680 -160 680 -100 {
lab=#net4}
N 480 -160 480 -100 {
lab=#net5}
N 520 -70 640 -70 {
lab=#net5}
N 480 -130 580 -130 {
lab=#net5}
N 580 -130 580 -70 {
lab=#net5}
N 480 -240 680 -240 {
lab=#net6}
N 680 -240 680 -220 {
lab=#net6}
N 580 -270 580 -240 {
lab=#net6}
N 580 -450 580 -430 {
lab=vdd}
N 680 -130 720 -130 {
lab=#net4}
N 480 -240 480 -220 {
lab=#net6}
N 580 -400 600 -400 {
lab=vdd}
N 600 -440 600 -400 {
lab=vdd}
N 580 -440 600 -440 {
lab=vdd}
N 470 -70 480 -70 {
lab=vss}
N 470 -70 470 -30 {
lab=vss}
N 470 -30 480 -30 {
lab=vss}
N 680 -70 690 -70 {
lab=vss}
N 690 -70 690 -30 {
lab=vss}
N 680 -30 690 -30 {
lab=vss}
N 480 -190 490 -190 {
lab=#net6}
N 490 -230 490 -190 {
lab=#net6}
N 480 -230 490 -230 {
lab=#net6}
N 670 -190 680 -190 {
lab=#net6}
N 670 -230 670 -190 {
lab=#net6}
N 670 -230 680 -230 {
lab=#net6}
N 410 -190 440 -190 {
lab=vinn}
N 720 -190 760 -190 {
lab=vinp}
N 480 -40 480 -20 {
lab=vss}
N 680 -40 680 -20 {
lab=vss}
N 270 -450 600 -450 {
lab=vdd}
N 1010 -40 1010 -30 {
lab=vss}
N 1010 -370 1010 -100 {
lab=out}
N 910 -70 970 -70 {
lab=#net4}
N 520 -400 540 -400 {
lab=ib}
N 520 -400 520 -360 {
lab=ib}
N 580 -370 580 -270 {
lab=#net6}
N 840 -360 950 -360 {
lab=ib}
N 830 -300 850 -300 {
lab=#net4}
N 830 -300 830 -130 {
lab=#net4}
N 720 -130 820 -130 {
lab=#net4}
N 830 -130 830 -70 {
lab=#net4}
N 830 -70 910 -70 {
lab=#net4}
N 820 -130 830 -130 {
lab=#net4}
N 700 -360 840 -360 {
lab=ib}
N 630 -350 880 -350 {
lab=#net1}
N 880 -350 880 -340 {
lab=#net1}
N 600 -450 1060 -450 {
lab=vdd}
N 880 -300 880 -20 {
lab=vss}
N 290 -20 1060 -20 {
lab=vss}
C {devices/capa.sym} 960 -300 1 0 {name=C2
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {symbols/pfet_03v3.sym} 250 -400 0 0 {name=M9
L=0.56u
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
C {symbols/nfet_03v3.sym} 250 -70 0 0 {name=M11
L=0.56u
W=2.8u
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
C {symbols/nfet_03v3.sym} 250 -150 0 0 {name=M10
L=0.56u
W=2.8u
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
C {symbols/nfet_03v3.sym} 880 -320 1 0 {name=M12
L=0.56u
W=11.2u
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
C {devices/iopin.sym} 1060 -450 0 0 {name=p5 lab=vdd}
C {symbols/pfet_03v3.sym} 130 -400 0 1 {name=M8
L=0.56u
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
C {devices/iopin.sym} 110 -310 1 0 {name=p3 lab=ib}
C {symbols/pfet_03v3.sym} 990 -400 0 0 {name=M6
L=0.56u
W=56u
nf=2
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
C {symbols/nfet_03v3.sym} 990 -70 0 0 {name=M7
L=0.56u
W=56u
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
C {devices/opin.sym} 1050 -150 0 0 {name=p7 lab=out}
C {devices/iopin.sym} 1060 -20 0 0 {name=p8 lab=vss}
C {symbols/pfet_03v3.sym} 460 -190 0 0 {name=M1
L=0.56u
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
C {symbols/pfet_03v3.sym} 700 -190 0 1 {name=M2
L=0.56u
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
C {symbols/pfet_03v3.sym} 560 -400 0 0 {name=M5
L=0.56u
W=11.2u
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
C {symbols/nfet_03v3.sym} 660 -70 0 0 {name=M4
L=0.56u
W=2.8u
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
C {symbols/nfet_03v3.sym} 500 -70 0 1 {name=M3
L=0.56u
W=2.8u
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
C {devices/ipin.sym} 410 -190 0 0 {name=p9 lab=vinn}
C {devices/ipin.sym} 760 -190 0 1 {name=p1 lab=vinp}
