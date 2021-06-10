if not A_IsAdmin {
	Run *RunAs "%A_ScriptFullPath%"
	ExitApp
}

; ========================================================================================
; Set Parameter
; ========================================================================================

Game := "Ragnarok"
Delay := 1000

hpXCheck := 69
hpXClear := 165
hpX := 160
hpY := 82
hpColor := 0xDEAD9C
whiteColor := 0xD6CECE

; ========================================================================================
; Initial
; ========================================================================================

isLoop = 0

; ========================================================================================
; Functions
; ========================================================================================
Click(x, y) {
	MouseMove, x, y
	dllcall("mouse_event", Uint, 0x02, Uint, 0, Uint, 0, Uint, 0, UPtr, 0) ; Down
	Sleep 50
	dllcall("mouse_event", Uint, 0x04, Uint, 0, Uint, 0, Uint, 0, UPtr, 0) ; UP
	return
}

; ========================================================================================
; Start Program
; ========================================================================================
^h::
	isLoop = 1
	isBreak = 0
	while (isLoop) {
		;if (isBreak) {
		;	PixelGetColor, getHpColor, hpXClear, hpY
		;	if (getHpColor == hpColor) {
		;		isBreak = 0
		;	}
		;} else {
			PixelGetColor, getHpColor, hpX, hpY
			;ToolTip, Color = %getHpColor% | Position = %hpX% : %hpY% | whiteColor = %whiteColor%, 0, 0
			if (getHpColor == whiteColor) {
				ControlSend,, {F1}, %Game%
				;PixelGetColor, getHpColor, hpXCheck, hpY
				;if (getHpColor == whiteColor) {
				;	isBreak = 1
				;}
			}
		;}
		sleep 400
	}
return
	
^x::
	isLoop := 0
return
