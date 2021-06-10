#MaxThreadsPerHotkey 2
^v::
WinGet, active_id, ID, A
Toggle := !Toggle
If (!Toggle) {
    Reload
} Else    {
MouseGetPos, x, y
Loop
    {
            Sleep, 50
            ControlClick,,ahk_id %active_id%
            Sleep, 100
            ControlClick,,ahk_id %active_id%
            Sleep, 100
            ControlSend,,{Enter}, ahk_id %active_id%
            Sleep, 100
            ControlSend,,{Enter}, ahk_id %active_id%
            }
}
Return