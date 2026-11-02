#SingleInstance Force

; ==========================
; Win + Shift + V → 本来の Win + V
; ==========================
#+v::
SendInput {LWin down}v{LWin up}
Return

; Win + C → Ctrl + C
#c::Send ^c

; Win + V → Ctrl + V
#v::Send ^v

; Win + A → Ctrl + A
#a::Send ^a

; Win + X → Ctrl + X
#x::Send ^x

; Win + S → Ctrl + S
#s::Send ^s

; Win + z → Ctrl + z
#z::Send ^z

; Win + t → Ctrl + t
#t::Send ^t

; Win + w → Ctrl + w
#w::Send ^w

; Win + Q → Alt + F4（ウィンドウを閉じる）
#q::Send !{F4}

; Win + Shift + Z → Ctrl + Shift + Z
#+z::Send ^+z

;WinTab(Shift) → AltTab(Shift)
LWin & Tab:: 
    AltTabMenu := true
    If GetKeyState("Shift","P")
        Send {Alt Down}{Shift Down}{Tab}
    else
        Send {Alt Down}{Tab}
    return
If (AltTabMenu){
    ~*LWin Up::
        Send {Shift Up}{Alt Up}
        AltTabMenu := false 
    return
}