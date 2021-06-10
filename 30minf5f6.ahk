#MaxThreadsPerHotkey 2
^e::
WinGet, active_id, ID, A
Toggle := !Toggle
If (!Toggle) {
    Reload
} Else    {
    MouseGetPos, x, y
    Loop
    {
    Sleep 500
    ControlSend,,{F7}, ahk_id %active_id%
    Sleep 200
    ControlSend,,{F7}, ahk_id %active_id%
    Sleep 100
    ControlSend,,{F5}, ahk_id %active_id%
    Sleep 3600000
    Sleep 200
    }
}
Return