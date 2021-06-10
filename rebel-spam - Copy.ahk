#MaxThreadsPerHotkey 2
^8::
WinGet, active_id, ID, A
Toggle := !Toggle
If (!Toggle) {
    Reload
} Else    {
    MouseGetPos, x, y
    MouseGetPos, x, y
    Loop
    {
    Sleep 700
    ControlSend,,q, ahk_id %active_id%
    Sleep 700
    ControlSend,,w, ahk_id %active_id%
    Sleep 300
    ControlSend,,{F8}, ahk_id %active_id%
    Sleep 100
    ControlSend,,e, ahk_id %active_id%
    Sleep 200
    Loop, 10
    {
    ControlSend,,{Space}, ahk_id %active_id%
    Sleep 1000
    ControlSend,,{F8}, ahk_id %active_id%
    Sleep 100
    ControlSend,,{Space}, ahk_id %active_id%
    Sleep 200
    ControlSend,,{F8}, ahk_id %active_id%
    Sleep 1000
    }
    }
}
Return