; Initialize variables
clicking := false  ; Tracks whether the auto-clicker is active
clickInterval := 15  ; Click interval (ms)

; High-speed click settings
SetBatchLines, -1
SetMouseDelay, 15

; Toggle auto-clicker with L key
L::
    clicking := !clicking  ; Toggle the clicking state (true <-> false)

    if (clicking)
    {
        SetTimer, DoClick, %clickInterval%
        ToolTip, 🔵 Auto-clicker ON
    }
    else
    {
        SetTimer, DoClick, Off
        ToolTip, 🔴 Auto-clicker OFF
        Sleep, 500
        ToolTip
    }
return

; The auto-clicking routine
DoClick:
    Click, Down
    Sleep, clickInterval
    Click, Up
return
