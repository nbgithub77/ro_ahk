#MaxThreadsPerHotkey 2
^p::
WinGet, active_id, ID, A
Toggle := !Toggle
If (!Toggle) {
    Reload
} Else    {
    MouseGetPos, x, y
    Loop
    {
    Sleep 500
    ControlClick,,ahk_id %active_id%
    Sleep 500
    ControlClick,,ahk_id %active_id%
    Sleep 500
    ControlClick,,ahk_id %active_id%
    Sleep 600000

    }
}
Return