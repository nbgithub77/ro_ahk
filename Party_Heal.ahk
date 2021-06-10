#MaxThreadsPerHotkey 2
^F1::
WinGet, active_id, ID, A
Toggle := !Toggle
If (!Toggle) {
    Reload
} Else    {
    MouseGetPos, x, y
    Loop
    {
    Sleep 500
    ControlSend,,{F1}, ahk_id %active_id%
    Sleep 500
    ControlSend,,{F1}, ahk_id %active_id%
    Sleep 500
    ControlSend,,{F1}, ahk_id %active_id%
    Sleep 500
    ControlSend,,{F3}, ahk_id %active_id%
    Sleep 1500
    }
}
Return