#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

^q:: ;open Sticky Notew
    Run, C:\Shortcuts\Sticky Notes
    ;Run, C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Accessories\Sticky Notes
return