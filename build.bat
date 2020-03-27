echo off
Cls
Color a
set GOOS=windows
set GOARCH=386
go build -o Repair_x86.exe -ldflags "-w -s"
upx Repair_x86.exe
set GOARCH=amd64
go build -o Repair_x64.exe -ldflags "-w -s"
upx Repair_x64.exe
pause
