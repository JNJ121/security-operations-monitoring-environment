New-Item -Path HKLM:\SOFTWARE\Policies\Microsoft\Windows\PowerShell -Force

New-Item -Path HKLM:\SOFTWARE\Policies\Microsoft\Windows\PowerShell\ScriptBlockLogging -Force

Set-ItemProperty `
-Path HKLM:\SOFTWARE\Policies\Microsoft\Windows\PowerShell\ScriptBlockLogging `
-Name EnableScriptBlockLogging `
-Type DWord `
-Value 1