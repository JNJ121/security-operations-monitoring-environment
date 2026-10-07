Get-Service Sysmon64a

Get-WinEvent `
-LogName "Microsoft-Windows-Sysmon/Operational" `
-MaxEvents 20