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
N -50 -100 -50 -40 {
lab=GND}
N -50 -210 -50 -160 {
lab=VDD}
N 30 -60 30 -40 {
lab=GND}
N 30 -150 30 -120 {
lab=in}
N 30 -170 30 -150 {
lab=in}
N 800 -60 800 -40 {
lab=GND}
N 120 -100 120 -40 {
lab=GND}
N 120 -200 120 -180 {
lab=VDD}
N 260 -200 260 -180 {
lab=VDD}
N 260 -100 260 -40 {
lab=GND}
N 260 -390 260 -370 {
lab=VDD}
N 260 -290 260 -270 {
lab=GND}
N 260 -580 260 -560 {
lab=VDD}
N 260 -480 260 -460 {
lab=GND}
N 260 -770 260 -750 {
lab=VDD}
N 260 -670 260 -650 {
lab=GND}
N 190 -140 210 -140 {
lab=#net1}
N 200 -710 200 -140 {
lab=#net1}
N 200 -710 210 -710 {
lab=#net1}
N 200 -520 210 -520 {
lab=#net1}
N 200 -330 210 -330 {
lab=#net1}
N 350 -270 350 -260 {
lab=GND}
N 350 -460 350 -450 {
lab=GND}
N 330 -520 350 -520 {
lab=#net2}
N 330 -330 350 -330 {
lab=#net3}
N 350 -650 350 -640 {
lab=GND}
N 330 -710 350 -710 {
lab=#net4}
N 480 -200 480 -180 {
lab=VDD}
N 480 -100 480 -40 {
lab=GND}
N 480 -390 480 -370 {
lab=VDD}
N 480 -290 480 -270 {
lab=GND}
N 480 -580 480 -560 {
lab=VDD}
N 480 -480 480 -460 {
lab=GND}
N 480 -770 480 -750 {
lab=VDD}
N 480 -670 480 -650 {
lab=GND}
N 410 -140 430 -140 {
lab=fo4_in}
N 420 -710 420 -140 {
lab=fo4_in}
N 420 -710 430 -710 {
lab=fo4_in}
N 420 -520 430 -520 {
lab=fo4_in}
N 420 -330 430 -330 {
lab=fo4_in}
N 570 -270 570 -260 {
lab=GND}
N 570 -460 570 -450 {
lab=GND}
N 550 -520 570 -520 {
lab=#net5}
N 550 -330 570 -330 {
lab=#net6}
N 570 -650 570 -640 {
lab=GND}
N 550 -710 570 -710 {
lab=#net7}
N 700 -200 700 -180 {
lab=VDD}
N 700 -100 700 -40 {
lab=GND}
N 700 -390 700 -370 {
lab=VDD}
N 700 -290 700 -270 {
lab=GND}
N 700 -580 700 -560 {
lab=VDD}
N 700 -480 700 -460 {
lab=GND}
N 700 -770 700 -750 {
lab=VDD}
N 700 -670 700 -650 {
lab=GND}
N 630 -140 650 -140 {
lab=fo4_out}
N 640 -710 640 -140 {
lab=fo4_out}
N 640 -710 650 -710 {
lab=fo4_out}
N 640 -520 650 -520 {
lab=fo4_out}
N 640 -330 650 -330 {
lab=fo4_out}
N 790 -270 790 -260 {
lab=GND}
N 790 -460 790 -450 {
lab=GND}
N 770 -520 790 -520 {
lab=#net8}
N 770 -330 790 -330 {
lab=#net9}
N 790 -650 790 -640 {
lab=GND}
N 770 -710 790 -710 {
lab=#net10}
N 330 -140 410 -140 {
lab=fo4_in}
N 550 -140 630 -140 {
lab=fo4_out}
N 770 -140 800 -140 {
lab=#net11}
N 800 -140 800 -120 {
lab=#net11}
N 370 -140 370 -110 {
lab=fo4_in}
N 590 -140 590 -110 {
lab=fo4_out}
N 30 -140 70 -140 {
lab=in}
C {sky130_fd_pr/corner.sym} -200 -120 0 0 {name=CORNER1 only_toplevel=true corner=tt}
C {devices/code_shown.sym} 10 40 0 0 {name=control only_toplevel=false value=".save all
.control
tran 0.02p 2000p
plot in fo4_in fo4_out
wrdata sky130A_01v8lvt_fo4delay.txt in fo4_in fo4_out
.endc"}
C {devices/vsource.sym} -50 -130 0 0 {name=Vdd value=vdd}
C {devices/vdd.sym} -50 -210 0 0 {name=l1 lab=VDD}
C {devices/gnd.sym} -50 -40 0 0 {name=l2 lab=GND}
C {devices/gnd.sym} 30 -40 0 0 {name=l7 lab=GND}
C {devices/vsource.sym} 30 -90 0 0 {name=Vin value="pwl 0 0 10p 0 20p vdd 1000p vdd 1010p 0"}
C {devices/lab_pin.sym} 30 -170 1 0 {name=p3 sig_type=std_logic lab=in}
C {devices/code_shown.sym} -150 -270 0 0 {name=param only_toplevel=false value=".param vdd=1.8"}
C {devices/capa.sym} 800 -90 0 0 {name=Cload
m=1
value=100f
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 370 -110 3 0 {name=p1 sig_type=std_logic lab=fo4_in}
C {devices/lab_pin.sym} 590 -110 3 0 {name=p2 sig_type=std_logic lab=fo4_out}
C {devices/gnd.sym} 800 -40 0 0 {name=l19 lab=GND}
C {symbols/sky130A_01v8_inv1.sym} 120 -140 0 0 {name=X1}
C {devices/vdd.sym} 120 -200 0 0 {name=l3 lab=VDD}
C {devices/gnd.sym} 120 -40 0 0 {name=l4 lab=GND}
C {devices/vdd.sym} 260 -200 0 0 {name=l5 lab=VDD}
C {devices/gnd.sym} 260 -40 0 0 {name=l6 lab=GND}
C {devices/vdd.sym} 260 -390 0 0 {name=l8 lab=VDD}
C {devices/gnd.sym} 260 -270 0 0 {name=l9 lab=GND}
C {devices/vdd.sym} 260 -580 0 0 {name=l10 lab=VDD}
C {devices/gnd.sym} 260 -460 0 0 {name=l11 lab=GND}
C {devices/vdd.sym} 260 -770 0 0 {name=l12 lab=VDD}
C {devices/gnd.sym} 260 -650 0 0 {name=l13 lab=GND}
C {devices/capa.sym} 350 -300 0 0 {name=Cload1
m=1
value=100f
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 350 -260 0 0 {name=l14 lab=GND}
C {devices/capa.sym} 350 -490 0 0 {name=Cload2
m=1
value=100f
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 350 -450 0 0 {name=l15 lab=GND}
C {devices/capa.sym} 350 -680 0 0 {name=Cload3
m=1
value=100f
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 350 -640 0 0 {name=l16 lab=GND}
C {devices/vdd.sym} 480 -200 0 0 {name=l17 lab=VDD}
C {devices/gnd.sym} 480 -40 0 0 {name=l18 lab=GND}
C {devices/vdd.sym} 480 -390 0 0 {name=l20 lab=VDD}
C {devices/gnd.sym} 480 -270 0 0 {name=l21 lab=GND}
C {devices/vdd.sym} 480 -580 0 0 {name=l22 lab=VDD}
C {devices/gnd.sym} 480 -460 0 0 {name=l23 lab=GND}
C {devices/vdd.sym} 480 -770 0 0 {name=l24 lab=VDD}
C {devices/gnd.sym} 480 -650 0 0 {name=l25 lab=GND}
C {devices/capa.sym} 570 -300 0 0 {name=Cload4
m=1
value=100f
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 570 -260 0 0 {name=l26 lab=GND}
C {devices/capa.sym} 570 -490 0 0 {name=Cload5
m=1
value=100f
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 570 -450 0 0 {name=l27 lab=GND}
C {devices/capa.sym} 570 -680 0 0 {name=Cload6
m=1
value=100f
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 570 -640 0 0 {name=l28 lab=GND}
C {devices/vdd.sym} 700 -200 0 0 {name=l29 lab=VDD}
C {devices/gnd.sym} 700 -40 0 0 {name=l30 lab=GND}
C {devices/vdd.sym} 700 -390 0 0 {name=l31 lab=VDD}
C {devices/gnd.sym} 700 -270 0 0 {name=l32 lab=GND}
C {devices/vdd.sym} 700 -580 0 0 {name=l33 lab=VDD}
C {devices/gnd.sym} 700 -460 0 0 {name=l34 lab=GND}
C {devices/vdd.sym} 700 -770 0 0 {name=l35 lab=VDD}
C {devices/gnd.sym} 700 -650 0 0 {name=l36 lab=GND}
C {devices/capa.sym} 790 -300 0 0 {name=Cload7
m=1
value=100f
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 790 -260 0 0 {name=l37 lab=GND}
C {devices/capa.sym} 790 -490 0 0 {name=Cload8
m=1
value=100f
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 790 -450 0 0 {name=l38 lab=GND}
C {devices/capa.sym} 790 -680 0 0 {name=Cload9
m=1
value=100f
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 790 -640 0 0 {name=l39 lab=GND}
C {devices/code_shown.sym} 10 190 0 0 {name=measure1 only_toplevel=false value=".measure tran trise trig v(fo4_out) val='vdd * 0.8' fall=1 targ v(fo4_out) val='vdd * 0.2' fall=1
.measure tran tfall trig v(fo4_out) val='vdd * 0.2' rise=1 targ v(fo4_out) val='vdd * 0.8' rise=1
.measure tran delay_rise trig v(fo4_in) val='vdd * 0.5' fall=1 targ v(fo4_out) val='vdd * 0.5' rise=1
.measure tran delay_fall trig v(fo4_in) val='vdd * 0.5' rise=1 targ v(fo4_out) val='vdd * 0.5' fall=1"}
C {symbols/sky130A_01v8_inv1.sym} 260 -140 0 0 {name=X2}
C {symbols/sky130A_01v8_inv1.sym} 260 -330 0 0 {name=X3}
C {symbols/sky130A_01v8_inv1.sym} 260 -520 0 0 {name=X4}
C {symbols/sky130A_01v8_inv1.sym} 260 -710 0 0 {name=X5}
C {symbols/sky130A_01v8_inv1.sym} 480 -140 0 0 {name=X6}
C {symbols/sky130A_01v8_inv1.sym} 480 -330 0 0 {name=X7}
C {symbols/sky130A_01v8_inv1.sym} 480 -520 0 0 {name=X8}
C {symbols/sky130A_01v8_inv1.sym} 480 -710 0 0 {name=X9}
C {symbols/sky130A_01v8_inv1.sym} 700 -140 0 0 {name=X10}
C {symbols/sky130A_01v8_inv1.sym} 700 -330 0 0 {name=X11}
C {symbols/sky130A_01v8_inv1.sym} 700 -520 0 0 {name=X12}
C {symbols/sky130A_01v8_inv1.sym} 700 -710 0 0 {name=X13}
