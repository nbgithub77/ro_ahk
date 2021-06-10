#MaxThreadsPerHotkey 2
^8::
WinGet, active_id, ID, A
Toggle := !Toggle
If (!Toggle) {
    Reload
} Else    {
    MouseGetPos, x, y
    Loop
    {
    Sleep 200
    ControlSend,,{F9}, ahk_id %active_id%
    Sleep 1000
    ControlSend,,{Space}, ahk_id %active_id%
    Sleep 1000
    ControlSend,,{F9}, ahk_id %active_id%
    Sleep 50
    ControlSend,,{F9}, ahk_id %active_id%
    Sleep 50
    ControlSend,,{Space}, ahk_id %active_id%
    Sleep 500
    ControlSend,,{F8}, ahk_id %active_id%
    Sleep 200
    ControlSend,,{F8}, ahk_id %active_id%
    }
}
Return