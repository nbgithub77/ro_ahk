#MaxThreadsPerHotkey 2
F3::
WinGet, active_id, ID, A
While (GetKeyState("F3","P"))
{
    Sleep 5
    ControlSend,,{F3}, ahk_id %active_id%
    Sleep 5 ; every 10 miliseconds
}
Return