#MaxThreadsPerHotkey 2
^F6::
WinGet, active_id, ID, A
Toggle := !Toggle
If (!Toggle) {
    Reload
} Else    {
    MouseGetPos, x, y
    Loop
    {
    Sleep 300
    ControlSend,,{F7}, ahk_id %active_id%
    Sleep 100
    ControlSend,,{F7}, ahk_id %active_id%
    Sleep 200
    ControlSend,,{F6}, ahk_id %active_id%
    Sleep 150000

    }
}
Return