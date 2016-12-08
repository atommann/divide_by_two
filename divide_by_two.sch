v 20130925 2
N 52600 46100 53400 46100 4
N 54300 46900 53400 46900 4
{
T 54300 46900 5 10 0 0 0 0 1
netname=D2_D
}
N 52600 46700 53400 46700 4
N 53400 46300 54300 46300 4
{
T 54000 46300 5 10 0 0 0 0 1
netname=D2_D_bar
}
N 57300 46300 57700 46300 4
N 49200 44600 57700 44600 4
N 57300 46900 58000 46900 4
N 58000 46900 58000 44200 4
N 48900 44200 58000 44200 4
N 57700 46300 57700 44600 4
N 49200 44600 49200 46700 4
C 50900 45000 1 0 0 gnd-1.sym
C 55600 45200 1 0 0 gnd-1.sym
C 47600 44300 1 0 0 gnd-1.sym
N 47700 45800 47700 48900 4
N 47700 48900 55300 48900 4
N 50600 48900 50600 47500 4
{
T 50600 48900 5 10 0 0 0 0 1
netname=Vdd
}
N 55300 48900 55300 47700 4
C 49600 45300 1 0 0 D_Latch.sym
{
T 51995 49900 5 10 1 0 0 0 1
device=LATCH
T 51995 49700 5 10 1 0 0 0 1
description=D_LATCH
T 51995 49500 5 10 1 0 0 0 1
refdes=D1
T 51995 49300 5 10 1 0 0 0 1
numslots=0
T 51995 49100 5 10 1 0 0 0 1
source=D_Latch.sch
}
C 54300 45500 1 0 0 D_Latch.sym
{
T 56695 50100 5 10 1 0 0 0 1
device=LATCH
T 56695 49900 5 10 1 0 0 0 1
description=D_LATCH
T 56695 49700 5 10 1 0 0 0 1
refdes=D2
T 56695 49500 5 10 1 0 0 0 1
numslots=0
T 56695 49300 5 10 1 0 0 0 1
source=D_Latch.sch
}
N 56100 47700 56100 48000 4
N 45500 46100 45500 48000 4
N 51400 47500 51400 48000 4
C 45400 44200 1 0 0 gnd-1.sym
N 45500 44900 45500 44500 4
C 45800 49700 1 0 0 spice-directive-1.sym
{
T 45900 50000 5 10 0 1 0 0 1
device=directive
T 45900 50100 5 10 1 1 0 0 1
refdes=A1
T 45900 49800 5 10 1 1 0 0 1
file=./simulation.cmd
}
N 48300 48000 45500 48000 4
{
T 48300 48000 5 10 0 0 0 0 1
netname=VCLK
}
N 49400 48000 52400 48000 4
{
T 49400 48000 5 10 0 0 0 0 1
netname=VCLK_1
}
N 53500 48000 56100 48000 4
{
T 53500 48000 5 10 0 0 0 0 1
netname=VCLK_2
}
C 47500 45800 1 270 0 voltage-3.sym
{
T 48200 45600 5 8 0 0 270 0 1
device=VOLTAGE_SOURCE
T 48000 45200 5 10 1 1 0 0 1
refdes=Vd
T 47900 45700 5 10 1 0 0 0 1
value=Vdd
}
N 47700 44900 47700 44600 4
T 45900 49400 5 10 1 0 0 0 1
value=options TEMP=25
C 48300 47700 1 0 0 INV1-1.sym
{
T 48700 48300 5 10 1 1 0 0 1
refdes=X1
T 49100 49400 5 10 0 1 0 0 1
device=INV1
T 49100 49200 5 10 0 0 0 0 1
model-name=INV1
T 49100 48400 5 10 0 0 0 0 1
symversion=1.0
T 49100 47700 5 10 0 0 0 0 1
footprint=none
}
C 52400 47700 1 0 0 INV1-1.sym
{
T 52800 48300 5 10 1 1 0 0 1
refdes=X2
T 53200 49400 5 10 0 1 0 0 1
device=INV1
T 53200 49200 5 10 0 0 0 0 1
model-name=INV1
T 53200 48400 5 10 0 0 0 0 1
symversion=1.0
T 53200 47700 5 10 0 0 0 0 1
footprint=none
}
C 45800 50700 1 0 0 spice-directive-1.sym
{
T 45900 51000 5 10 0 1 0 0 1
device=directive
T 45900 51100 5 10 1 1 0 0 1
refdes=A2
T 45800 50700 5 10 1 1 0 0 1
value=.GLOBAL Vdd gnd Vss
}
C 45800 51800 1 0 0 spice-directive-1.sym
{
T 45900 52100 5 10 0 1 0 0 1
device=directive
T 45900 52200 5 10 1 1 0 0 1
refdes=A3
T 45800 51800 5 10 1 1 0 0 1
value=.param Vdd=1.2v
}
C 45800 44900 1 0 1 vpulse-1.sym
{
T 45100 45550 5 10 1 1 0 6 1
refdes=VCLK
T 45100 45750 5 10 0 0 0 6 1
device=vpulse
T 45100 45950 5 10 0 0 0 6 1
footprint=none
T 45100 45350 5 10 1 1 0 6 1
value=pulse 0 Vdd 0.1n 0.05n 0.05n 0.5n 1n
}
N 53400 46700 53400 46900 4
N 53400 46300 53400 46100 4
N 49200 46700 49600 46700 4
{
T 49200 46700 5 10 0 0 0 0 1
netname=d1_d
}
N 49600 46100 48900 46100 4
{
T 49600 46100 5 10 0 0 0 0 1
netname=d1_d_bar
}
N 48900 46100 48900 44200 4
C 42200 48500 1 270 0 voltage-3.sym
{
T 42900 48300 5 8 0 0 270 0 1
device=VOLTAGE_SOURCE
T 42700 47900 5 10 1 1 0 0 1
refdes=Vs
T 42600 48400 5 10 1 0 0 0 1
value=Vss
}
C 42300 47000 1 0 0 gnd-1.sym
N 42400 47600 42400 47300 4
C 48700 51900 1 0 0 spice-directive-1.sym
{
T 48800 52200 5 10 0 1 0 0 1
device=directive
T 48800 52300 5 10 1 1 0 0 1
refdes=A4
T 48700 51900 5 10 1 1 0 0 1
value=.param Vss=0v
}
