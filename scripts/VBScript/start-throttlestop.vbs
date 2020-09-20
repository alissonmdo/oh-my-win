  Set WshShell = CreateObject("WScript.Shell" ) 
  WshShell.Run """C:\Users\Alisson\Bin\ThrottleStop_9.0\ThrottleStop.exe""", 0 'Must quote command if it has spaces; must escape quotes
  Set WshShell = Nothing