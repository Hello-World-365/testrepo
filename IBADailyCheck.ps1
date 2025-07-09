cls

Get-Date -Format 'yyyy\\MM\\dd'

$ymd = Get-Date -Format 'yyyy\\MM\\dd'

$TigerIbaPDAPath = "\\10.44.168.5\dat\" + $ymd
$TigerCFFPath = "\\10.44.168.225\ibaPDA\3-Reports\Cashline\Feedforward\" + $ymd

$CTLIbaPDAPath = "\\10.44.168.70\d\dat2\" + $ymd

$ymdRST = Get-Date -Format 'yy\\MM\\dd'
$RoosterIbaPDAPath = "\\CZ-CL2-IBA-PDA\Iba_Data\Data_1hour\" + $ymdRST
$RoosterCFFPath = "\\cz-cl2-cff\ibaPDA2\3-Reports\Cashline2\Feedforward2\" + $ymd

$SLTIbaPDAPath = "\\CZ-SLT-IBA\dat\" + $ymd
$APLIbaPath = "\\10.48.186.60\iba\" + $ymd

$p1 = " ---------- Tiger ---------- "
write $p1
cd $TigerIbaPDAPath
Get-ChildItem -Path "./*.dat" -file -Name

$p2 = " ---------- Tiger CFF ---------- "
write $p2
cd $TigerCFFPath
Get-ChildItem -Path "./*.pdf" -file -Name

$p3 = " ---------- CTL ---------- "
write $p3
cd $CTLIbaPDAPath
Get-ChildItem -Path "./*.dat" -file -Name

$p4 = " ---------- Rooster ---------- "
write $p4
cd $RoosterIbaPDAPath
Get-ChildItem -Path "./*.dat" -file -Name

$p5 = " ---------- Rooster CFF ---------- "
write $p5
cd $RoosterCFFPath
Get-ChildItem -Path "./*.pdf" -file -Name

$p6 = " ---------- SLT ---------- "
write $p6
cd $SLTIbaPDAPath
Get-ChildItem -Path "./*.dat" -file -Name

$p7 = " ---------- APL ---------- "
write $p7
cd $APLIbaPath
Get-ChildItem -Path "./*.dat" -file -Name

#start-process your.exe -NoNewWindow -wait

