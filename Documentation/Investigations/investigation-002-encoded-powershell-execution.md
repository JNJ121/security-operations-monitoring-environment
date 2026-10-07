# Investigation 002 - Encoded PowerShell Execution Analysis

## Summary

This investigation documents the detection and analysis of encoded PowerShell execution activity within the Security Operations Monitoring Environment.

The objective was to validate PowerShell logging, Sysmon telemetry collection, and Wazuh visibility for activity commonly associated with suspicious or malicious behavior.

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

Validate Wazuh visibility into encoded PowerShell execution and confirm telemetry collection from multiple logging sources.

---

## Activity Performed

Command Executed:

```powershell
powershell -EncodedCommand SQBlAGwAbABvAA==
```

---

## Detection Sources

- PowerShell Script Block Logging
- Sysmon Event ID 1 (Process Creation)
- Wazuh Agent Telemetry
- Wazuh Threat Hunting

---

## Observed Events

The following telemetry was successfully collected:

- PowerShell process execution
- EncodedCommand parameter usage
- Sysmon process creation activity
- Wazuh event ingestion and indexing
- Threat hunting visibility

---

## Detection Method

Events were identified through Wazuh Threat Hunting searches and endpoint telemetry analysis.

Relevant telemetry included:

- PowerShell execution logs
- Sysmon process creation events
- Command-line arguments
- Endpoint metadata

---

## MITRE ATT&CK Mapping

| Technique ID | Technique |
|-------------|-----------|
| T1059.001 | PowerShell |

---

## Findings

The investigation confirmed:

- PowerShell logging was functioning correctly
- Encoded PowerShell execution was visible within Wazuh
- Sysmon captured related process creation activity
- Endpoint telemetry was successfully centralized for investigation
- Security events could be correlated across multiple telemetry sources

---

## Conclusion

The Security Operations Monitoring Environment successfully detected and collected encoded PowerShell execution activity.

This investigation demonstrated the ability to monitor potentially suspicious PowerShell activity, validate telemetry collection, and perform event analysis through Wazuh.

---

## Evidence

### Encoded PowerShell Execution

![Encoded PowerShell Execution](Screenshots/Investigations/Investigation-002/Investigation-002-Powershell-Command.png)

### Threat Hunting Results

![Threat Hunting Results](Screenshots/Investigations/Investigation-002/Investigation-002-Threat-Hunt.png)

### Event Details

![Event Details](Screenshots/Investigations/Investigation-002/Investigation-002-Event-details.png)


Status: ✅ Complete