v {xschem version=3.1.0 file_version=1.2
* Copyright 2021 Stefan Frederik Schippers
* 
* Licensed under the Apache License, Version 2.0 (the "License");
* you may not use this file except in compliance with the License.
* You may obtain a copy of the License at
*
*     https://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS,
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
* See the License for the specific language governing permissions and
* limitations under the License.

}
G {}
K {}
V {}
S {}
E {}
N 30 -100 30 -40 {
lab=GND}
N 30 -210 30 -160 {
lab=VDD}
N 270 -150 270 -140 {
lab=hoge}
N 270 -160 270 -150 {
lab=hoge}
N 210 -110 230 -110 {
lab=in}
N 210 -190 210 -110 {
lab=in}
N 210 -190 230 -190 {
lab=in}
N 270 -110 290 -110 {
lab=GND}
N 290 -110 290 -60 {
lab=GND}
N 270 -190 290 -190 {
lab=VDD}
N 270 -150 330 -150 {
lab=hoge}
N 270 -270 270 -220 {
lab=VDD}
N 270 -230 290 -230 {
lab=VDD}
N 290 -230 290 -190 {
lab=VDD}
N 270 -80 270 -40 {
lab=GND}
N 270 -60 290 -60 {
lab=GND}
N 390 -150 390 -140 {
lab=fo1_in}
N 390 -160 390 -150 {
lab=fo1_in}
N 330 -110 350 -110 {
lab=hoge}
N 330 -190 330 -110 {
lab=hoge}
N 330 -190 350 -190 {
lab=hoge}
N 390 -110 410 -110 {
lab=GND}
N 410 -110 410 -60 {
lab=GND}
N 390 -190 410 -190 {
lab=VDD}
N 390 -150 450 -150 {
lab=fo1_in}
N 390 -270 390 -220 {
lab=VDD}
N 390 -230 410 -230 {
lab=VDD}
N 410 -230 410 -190 {
lab=VDD}
N 390 -80 390 -40 {
lab=GND}
N 390 -60 410 -60 {
lab=GND}
N 510 -150 510 -140 {
lab=fo1_out}
N 510 -160 510 -150 {
lab=fo1_out}
N 450 -110 470 -110 {
lab=fo1_in}
N 450 -190 450 -110 {
lab=fo1_in}
N 450 -190 470 -190 {
lab=fo1_in}
N 510 -110 530 -110 {
lab=GND}
N 530 -110 530 -60 {
lab=GND}
N 510 -190 530 -190 {
lab=VDD}
N 510 -150 570 -150 {
lab=fo1_out}
N 510 -270 510 -220 {
lab=VDD}
N 510 -230 530 -230 {
lab=VDD}
N 530 -230 530 -190 {
lab=VDD}
N 510 -80 510 -40 {
lab=GND}
N 510 -60 530 -60 {
lab=GND}
N 630 -150 630 -140 {
lab=#net1}
N 630 -160 630 -150 {
lab=#net1}
N 570 -110 590 -110 {
lab=fo1_out}
N 570 -190 570 -110 {
lab=fo1_out}
N 570 -190 590 -190 {
lab=fo1_out}
N 630 -110 650 -110 {
lab=GND}
N 650 -110 650 -60 {
lab=GND}
N 630 -190 650 -190 {
lab=VDD}
N 630 -270 630 -220 {
lab=VDD}
N 630 -230 650 -230 {
lab=VDD}
N 650 -230 650 -190 {
lab=VDD}
N 630 -80 630 -40 {
lab=GND}
N 630 -60 650 -60 {
lab=GND}
N 450 -270 450 -190 {
lab=fo1_in}
N 570 -270 570 -190 {
lab=fo1_out}
N 630 -150 750 -150 {
lab=#net1}
N 750 -150 750 -120 {
lab=#net1}
N 750 -60 750 -40 {
lab=GND}
N 110 -60 110 -40 {
lab=GND}
N 110 -150 210 -150 {
lab=in}
N 110 -150 110 -120 {
lab=in}
N 110 -170 110 -150 {
lab=in}
C {sky130_fd_pr/corner.sym} -120 -120 0 0 {name=CORNER1 only_toplevel=true corner=tt}
C {devices/code_shown.sym} -230 -250 0 0 {name=control only_toplevel=false value=".save all
.control
tran 0.02p 400p
plot in fo1_in fo1_out
.endc"}
C {devices/vsource.sym} 30 -130 0 0 {name=Vdd value=1.8}
C {devices/code_shown.sym} -110 40 0 0 {name=measure only_toplevel=false value=".measure tran trise trig v(fo1_out) val=1.44 fall=1 targ v(fo1_out) val=0.36 fall=1
.measure tran tfall trig v(fo1_out) val=0.36 rise=1 targ v(fo1_out) val=1.44 rise=1
.measure tran delay_rise trig v(fo1_in) val=0.9 fall=1 targ v(fo1_out) val=0.9 rise=1
.measure tran delay_fall trig v(fo1_in) val=0.9 rise=1 targ v(fo1_out) val=0.9 fall=1"}
C {devices/vdd.sym} 30 -210 0 0 {name=l1 lab=VDD}
C {devices/gnd.sym} 30 -40 0 0 {name=l2 lab=GND}
C {devices/gnd.sym} 110 -40 0 0 {name=l7 lab=GND}
C {devices/vsource.sym} 110 -90 0 0 {name=Vin value="pwl 0 0 10p 0 20p 1.8 200p 1.8 210p 0"}
C {devices/capa.sym} 750 -90 0 0 {name=Cload
m=1
value=100f
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 450 -270 1 0 {name=p1 sig_type=std_logic lab=fo1_in}
C {devices/lab_pin.sym} 570 -270 1 0 {name=p2 sig_type=std_logic lab=fo1_out}
C {devices/lab_pin.sym} 110 -170 1 0 {name=p3 sig_type=std_logic lab=in}
C {sky130_fd_pr/pfet_01v8.sym} 250 -190 0 0 {name=M11
L=0.15
W=2
nf=1 mult=1
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 250 -110 0 0 {name=M2
L=0.15
W=1  
nf=1 mult=1
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 370 -190 0 0 {name=M1
L=0.15
W=2
nf=1 mult=1
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 370 -110 0 0 {name=M3
L=0.15
W=1  
nf=1 mult=1
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 490 -190 0 0 {name=M4
L=0.15
W=2
nf=1 mult=1
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 490 -110 0 0 {name=M5
L=0.15
W=1  
nf=1 mult=1
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 610 -190 0 0 {name=M6
L=0.15
W=2
nf=1 mult=1
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 610 -110 0 0 {name=M7
L=0.15
W=1  
nf=1 mult=1
model=nfet_01v8
spiceprefix=X
}
C {devices/gnd.sym} 270 -40 0 0 {name=l11 lab=GND}
C {devices/gnd.sym} 390 -40 0 0 {name=l12 lab=GND}
C {devices/gnd.sym} 510 -40 0 0 {name=l13 lab=GND}
C {devices/gnd.sym} 630 -40 0 0 {name=l14 lab=GND}
C {devices/vdd.sym} 630 -270 0 0 {name=l15 lab=VDD}
C {devices/vdd.sym} 510 -270 0 0 {name=l16 lab=VDD}
C {devices/vdd.sym} 390 -270 0 0 {name=l17 lab=VDD}
C {devices/vdd.sym} 270 -270 0 0 {name=l18 lab=VDD}
C {devices/gnd.sym} 750 -40 0 0 {name=l19 lab=GND}
