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

; Win + Shift + Z → Ctrl + Shift + Z
#+z::Send ^+z

; Win + Shift + V → Win + V（Win + V を再送）
#+v::
SendInput {LWin down}v{LWin up}
Return
