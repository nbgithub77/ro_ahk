#MaxThreadsPerHotkey 2
^m::
WinGet, active_id, ID, A
Toggle := !Toggle
If (!Toggle) {
    Reload
} Else    {
    MouseGetPos, x, y
    Loop
    {
    Sleep 100
    ControlSend,,{F9}, ahk_id %active_id%
    Sleep 1500
    ControlSend,,{F8}, ahk_id %active_id%
    Sleep 100
    ControlSend,,{F8}, ahk_id %active_id%
    Sleep 1100
    ControlSend,,{F8}, ahk_id %active_id%
    Sleep 100
    ControlSend,,{F8}, ahk_id %active_id%
    Sleep 200
    }
}
Return