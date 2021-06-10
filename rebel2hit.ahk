#MaxThreadsPerHotkey 2
^F8::
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
    Sleep 800
    ControlSend,,q, ahk_id %active_id%
    Sleep 800
    ControlSend,,w, ahk_id %active_id%
    Sleep 300
    ControlSend,,e, ahk_id %active_id%
    Sleep 100
    ControlSend,,{F9}, ahk_id %active_id%
    Sleep 500
    ControlSend,,e, ahk_id %active_id%
    Sleep 200
    Loop, 4
    {
    Sleep 200
    ControlSend,,{F9}, ahk_id %active_id%
    Sleep 500
    ControlSend,,{Space}, ahk_id %active_id%
    Sleep 700
    ControlSend,,{F9}, ahk_id %active_id%
    Sleep 50
    ControlSend,,{F9}, ahk_id %active_id%
    Sleep 100
    ControlSend,,{Space}, ahk_id %active_id%
    Sleep 100
    ControlSend,,{F8}, ahk_id %active_id%
    Sleep 200
    ControlSend,,{F8}, ahk_id %active_id%
    Sleep 50
    ControlSend,,{F8}, ahk_id %active_id%
    Sleep 50
    }
    }
}
Return