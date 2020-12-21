#SingleInstance, Force

; cobbled together somehow, by Samuel Murray
; 26 May 2018

!RButton::
<#w::

MouseGetPos, xpos, ypos, window

Gui, Add, Button, gScript1, [&1] F3 by word
Gui, Add, Button, gScript2, [&2] Copy fragement
Gui, Add, Button, gScript3, [&3] Place tags
Gui, Add, Button, gScript4, [&4] Open Notepad
Gui, Add, Button, gExitApp, ExitApp

Gui, -Border
Gui, Show, x%xpos% y%ypos%
return

Script1:
Gui, Hide
Run "sample scripts\F3byword.ahk"
return

Script2:
Gui, Hide
Run "sample scripts\copy fragment.ahk"
return

Script3:
Gui, Hide
Send ^!{Down} 
return

Script4:
Gui, Hide
Run Notepad.exe
return


ExitApp:
ExitApp
return

return

GuiEscape:
Gui, Hide
return

