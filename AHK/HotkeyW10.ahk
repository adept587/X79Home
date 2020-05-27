#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
; Map Ctrl-Space => Ctrl-Win-k for keypirinha
^Space::Send !k
; Map Hotkey for Current timestamp
:R*?:uu8::
FormatTime, CurrentDateTime,, _yyyyMMdd_HHmmss
SendInput %CurrentDateTime%
return ;_20200527_231343

#IfWinActive, ahk_exe tomboy-ng.exe
^w::^F4 ; Ctrl-w => Ctrl-F4 Close Window
return

:R*?:uu9::
FormatTime, CurrentDateTime,, _yyyyMMdd_HH:mm:ss
SendInput %CurrentDateTime%
return
;_20200527_23:13:26
:R*?:uu0::
FormatTime, CurrentDateTime,, {Space 1}yyyy-MMdd HH:mm:ss
SendInput %CurrentDateTime%
return
;   2020-0527 23:13:07
/*
Block comment
_20200527_231814
_20200527_23:18:17
 2020-0527 23:18:19
*/
