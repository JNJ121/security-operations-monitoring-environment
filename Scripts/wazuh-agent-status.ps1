Get-Service WazuhSvc

Get-Content `
"C:\Program Files (x86)\ossec-agent\ossec.log" `
-Tail 20