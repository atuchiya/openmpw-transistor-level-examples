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
N 130 -130 150 -130 {
lab=#net1}
N 130 -130 130 -120 {
lab=#net1}
N 130 -140 130 -130 {
lab=#net1}
N 70 -90 90 -90 {
lab=in}
N 70 -170 70 -90 {
lab=in}
N 70 -170 90 -170 {
lab=in}
N 30 -130 70 -130 {
lab=in}
N 130 -60 130 -40 {
lab=vss}
N 130 -90 150 -90 {
lab=vss}
N 150 -90 150 -40 {
lab=vss}
N 130 -230 130 -200 {
lab=vdd}
N 130 -170 150 -170 {
lab=vdd}
N 150 -230 150 -170 {
lab=vdd}
N 130 -40 150 -40 {
lab=vss}
N 130 -40 130 -20 {
lab=vss}
N 130 -20 150 -20 {
lab=vss}
N 130 -230 150 -230 {
lab=vdd}
N 130 -250 130 -230 {
lab=vdd}
N 130 -250 150 -250 {
lab=vdd}
C {/foss/pdks/gf180mcuC/libs.tech/xschem/symbols/pfet_03v3.sym} 110 -170 0 0 {name=M1
L=0.28u
W=3u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {/foss/pdks/gf180mcuC/libs.tech/xschem/symbols/nfet_03v3.sym} 110 -90 0 0 {name=M2
L=0.28u
W=1u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {devices/iopin.sym} 150 -250 0 0 {name=p1 lab=vdd}
C {devices/iopin.sym} 150 -20 0 0 {name=p2 lab=vss}
C {devices/ipin.sym} 30 -130 0 0 {name=p3 lab=in}
C {devices/opin.sym} 150 -130 0 0 {name=p4 lab=out}
