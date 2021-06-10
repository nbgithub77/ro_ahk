#MaxThreadsPerHotkey 2
^8::
WinGet, active_id, ID, A
Toggle := !Toggle
If (!Toggle) {
    Reload
} Else    {
    MouseGetPos, x, y
    Loop
    {
    Sleep 500
    ControlSend,,{F9}, ahk_id %active_id%
    Sleep 1500
    ControlSend,,q, ahk_id %active_id%
    Sleep 500
    ControlSend,,w, ahk_id %active_id%
    Sleep 300
    ControlSend,,e, ahk_id %active_id%
    Sleep 100
    ControlSend,,e, ahk_id %active_id%
    Sleep 200
    Loop, 2
    {
    Sleep 200
    ControlSend,,{F9}, ahk_id %active_id%
    Sleep 1500
    ControlSend,,{Ins}, ahk_id %active_id%
    Sleep 1000
    ControlSend,,{Ins}, ahk_id %active_id%
    Sleep 200
    ControlSend,,{F8}, ahk_id %active_id%
    Sleep 200
    ControlSend,,{F8}, ahk_id %active_id%
    Sleep 200
    ControlSend,,{F8}, ahk_id %active_id%
    Sleep 800
    ControlSend,,{F8}, ahk_id %active_id%
    Sleep 500
    ControlSend,,{F8}, ahk_id %active_id%
    Sleep 100
    ControlSend,,{F8}, ahk_id %active_id%
    }
    }
}
Return