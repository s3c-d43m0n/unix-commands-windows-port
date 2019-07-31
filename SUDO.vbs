Set objArgs = WScript.Arguments
exe = objArgs(0)
args = ""
IF objArgs.Count >= 2 Then
   args = args & objArgs(1)
End If
For it = 2 to objArgs.Count - 1
   args = args & " " & objArgs(it)
Next
Set objShellApp = CreateObject("Shell.Application")
objShellApp.ShellExecute exe, args, "", "runas", 1
set objShellApp = nothing