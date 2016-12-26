set wshshell = wscript.CreateObject("wscript.shell")
wshshell.run "explorer"
wscript.sleep(1000)
WshShell.Sendkeys "{TAB}"
WshShell.Sendkeys "{TAB}"
WshShell.Sendkeys "{TAB}"
WshShell.Sendkeys "{Enter}"
WshShell.Sendkeys "Documents/Github" 'Change folder name here
WshShell.Sendkeys "{Enter}"
wscript.sleep(1000)
WshShell.Sendkeys "{TAB}"
WshShell.Sendkeys "{TAB}"
WshShell.Sendkeys "{TAB}"
WshShell.Sendkeys "{Enter}"
WshShell.Sendkeys "^C"
WshShell.Sendkeys "%{F4}"