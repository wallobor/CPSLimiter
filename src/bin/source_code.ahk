/*
[ CPS LIMITER ]
Created by: Nafz_GM
*/


; Essentials
#Persistent
#SingleInstance Force
#MaxHotkeysPerInterval 1000000000
SendMode Input
CoordMode ToolTip, Window
CoordMode Mouse, Window


; Variables
; Don't change anything else except 'limit'
; If you don't understand what you're doing!

; Change to desired CPS limit
; limit := 20 ; predetermined
InputBox, limit, CPS Limiter, Set Desired CPS Cap`:
limit := limit * 1

holdTreshold := 200 ;ms
allow := false


; Allow click timer
SetTimer allowClick, % Round(1000/limit)


; Force exit
^+esc::
	ExitApp
	Return


; Limiter
*$LButton::
	if (A_TimeSincePriorHotkey > holdTreshold){
		Click Left, Down
	} else {
		if (allow){
			Click Left
			allow := false
		}
	}
	Return


; Release after drag
*$LButton Up::
	Click Left, Up
	Return


; Allow to register click again
allowClick:
	allow := true
	Return