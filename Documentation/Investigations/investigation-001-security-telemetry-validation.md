# Investigation 001 - Security Telemetry Validation

## Summary

This investigation validates the collection, forwarding, and analysis of Windows endpoint telemetry within the Security Operations Monitoring Environment.

The objective was to confirm that endpoint events generated on SOC-ENDPOINT01 were successfully captured by Sysmon, forwarded by the Wazuh Agent, and ingested into the Wazuh platform for monitoring and threat hunting activities.

---

## Environment

### SIEM

- Wazuh 4.14

### Monitoring Server

- Hostname: SOC-WAZUH01
- Operating System: Ubuntu Desktop 24.04 ARM64

### Endpoint

- Hostname: SOC-ENDPOINT01
- Operating System: Windows 11 ARM
- Wazuh Agent Installed
- Sysmon ARM64 Installed
- PowerShell Logging Enabled

---

## Objective

Validate end-to-end telemetry collection and verify security event visibility within Wazuh.

Telemetry Flow:

```text
Windows Endpoint
        ↓
      Sysmon
        ↓
   Wazuh Agent
        ↓
  Wazuh Manager
        ↓
 Wazuh Dashboard
```

---

## Test Activity

The following commands were executed on SOC-ENDPOINT01 to generate telemetry:

```powershell
whoami
net user
ipconfig /all
nslookup google.com
tasklist
```

---

## Observed Events

### Process Creation Events

**Source:**

- Sysmon Event 

**Description:**

Multiple process creation events were generated and successfully ingested into Wazuh for analysis.

**Observed Processes:**

- whoami.exe
- net.exe
- ipconfig.exe
- nslookup.exe
- tasklist.exe

---

### DNS Query Events

**Source:**

- Sysmon Event 

**Description:**

DNS queries generated during testing were captured by Sysmon and forwarded to Wazuh.

**Observed Activity:**

- Query for google.com

---

## Detection Method

Events were identified through Wazuh Threat Hunting and endpoint telemetry analysis.

### Telemetry Sources

- Sysmon Process Creation Events
- Sysmon DNS Query Events
- Windows Event Logs
- Wazuh Agent Communications

---

## MITRE ATT&CK Mapping

| Technique ID | Technique |
|-------------|-----------|
| T1033 | System Owner/User Discovery |
| T1087 | Account Discovery |
| T1016 | Network Discovery |
| T1082 | System Information Discovery |

---

## Findings

The investigation confirmed:

- Successful endpoint enrollment
- Successful Sysmon deployment
- Successful log ingestion into Wazuh
- Visibility into process execution activity
- Visibility into DNS activity
- Functional threat hunting capabilities

---

## Conclusion

The Security Operations Monitoring Environment successfully collected, processed, and displayed endpoint telemetry from Windows 11 through Sysmon and Wazuh.

This investigation validated the monitoring pipeline and established a baseline for future threat hunting, detection engineering, and incident response exercises.

---

## Evidence

### PowerShell Event Visibility

!./../Screenshots/Investigations/PowerShell%20and%20Sysmon%20Telemetry%20Validation/Wazuh%20Investigation-001-Powershell-Event.png

### Sysmon Event Visibility

![Sysmon Event](s/Investigations/PowerShell%20and%20Sysmon%20Telemetry%20Validation/Wazuh%20Investigation-001-Sysmon-Event.png
### Screenshots

- Active Wazuh Agent
- Sysmon Events in Wazuh
- Threat Hunting Results
- Process Creation Events
- DNS Query Events

### Status

✅ Complete