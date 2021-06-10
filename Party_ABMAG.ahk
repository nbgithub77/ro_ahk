#MaxThreadsPerHotkey 2
^F5::
WinGet, active_id, ID, A
Toggle := !Toggle
If (!Toggle) {
    Reload
} Else    {
    MouseGetPos, x, y
    Loop
    {
    Sleep 200
    ControlSend,,{F5}, ahk_id %active_id%
    Sleep 500
    ControlSend,,{F5}, ahk_id %active_id%
    Sleep 200
    ControlSend,,{F5}, ahk_id %active_id%
    Sleep 100
    ControlSend,,{F5}, ahk_id %active_id%
    Sleep 100
    ControlSend,,{F5}, ahk_id %active_id%
    Sleep 900
    ControlSend,,{F6}, ahk_id %active_id%
    Sleep 200
    ControlSend,,{F6}, ahk_id %active_id%
    Sleep 200
    ControlSend,,{F6}, ahk_id %active_id%
    Sleep 200
    ControlSend,,{F6}, ahk_id %active_id%
    Sleep 80000
    ControlSend,,{F6}, ahk_id %active_id%
    Sleep 200
    ControlSend,,{F6}, ahk_id %active_id%
    Sleep 200
    ControlSend,,{F6}, ahk_id %active_id%
    Sleep 200
    ControlSend,,{F6}, ahk_id %active_id%
    Sleep 80000
    }
}
Return