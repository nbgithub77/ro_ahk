#MaxThreadsPerHotkey 2
^5::
WinGet, active_id, ID, A
Toggle := !Toggle
If (!Toggle) {
    Reload
} Else    {
MouseGetPos, x, y
Loop
    {
            Sleep, 500
            ControlSend,,{F5}, ahk_id %active_id%
            Sleep, 10000
            }
}
Return