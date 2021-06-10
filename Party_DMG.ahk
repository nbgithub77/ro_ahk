#MaxThreadsPerHotkey 2
^F10::
WinGet, active_id, ID, A
Toggle := !Toggle
If (!Toggle) {
    Reload
} Else    {
    MouseGetPos, x, y
    Loop
    {
    Sleep 100
    ControlSend,,q, ahk_id %active_id%
    Sleep 100
    ControlSend,,q, ahk_id %active_id%
    Sleep 500
    ControlSend,,w, ahk_id %active_id%
    Sleep 500
    ControlSend,,e, ahk_id %active_id%
    Sleep 50
    ControlSend,,e, ahk_id %active_id%
    Sleep 100
    Loop, 30
    {
    ControlSend,,{F8}, ahk_id %active_id%
    Sleep 100
    ControlSend,,{F8}, ahk_id %active_id%
    Sleep 500
   
    }
    }
}
Return