#SingleInstance Force

; Ctrl + hjkl → 矢印キー
^h::Send {Left}
^j::Send {Down}
^k::Send {Up}
^l::Send {Right}

; Ctrl + Shift + hjkl → Shift + 矢印（範囲選択）
^+h::Send +{Left}
^+j::Send +{Down}
^+k::Send +{Up}
^+l::Send +{Right}

; Alt + Space → 日本語入力切替（US配列の Alt+` と同じ VK_KANJI を送る）
; Alt を押したままだとアプリに Alt を取られるので、Alt を離してから送る
$!Space::
    KeyWait LAlt
    KeyWait RAlt
    Send {vk19}
    return
