#MaxThreadsPerHotkey 2
^F9::
WinGet, active_id, ID, A
Toggle := !Toggle
If (!Toggle) {
    Reload
} Else    {
MouseGetPos, x, y
Loop
    {
            Sleep, 500
            ControlSend,,{F9}, ahk_id %active_id%
            Sleep 1000
            ControlSend,,{F1}, ahk_id %active_id%
            Sleep 200
            ControlClick,,ahk_id %active_id%
            Sleep 200
            ControlSend,,{F1}, ahk_id %active_id%
            Sleep 200
            ControlClick,,ahk_id %active_id%
            Sleep 200
            ControlSend,,{F9}, ahk_id %active_id%
            Sleep 1000
            }
}
Return