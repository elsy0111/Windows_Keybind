; SteamVR が起動のたびに vrdashboard.exe の GPU 設定を 0 に戻すため、
; デスクトップ表示が透明になる (Blade 15 のハイブリッドGPU)。
; Intel (1) に戻してダッシュボードを再起動する (SteamVR が自動で立ち上げ直す)。
#NoEnv
#Persistent
#SingleInstance Force
#NoTrayIcon

key := "HKCU\Software\Microsoft\DirectX\UserGpuPreferences"
exe := "C:\Program Files (x86)\Steam\steamapps\common\SteamVR\bin\win64\vrdashboard.exe"
SetTimer, Check, 3000
Gosub, Check
return

Check:
RegRead, v, %key%, %exe%
if (v = "GpuPreference=1;")
    return
RegWrite, REG_SZ, %key%, %exe%, GpuPreference=1;
Process, Exist, vrdashboard.exe
if ErrorLevel
    Process, Close, vrdashboard.exe
return
