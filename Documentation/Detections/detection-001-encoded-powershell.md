# Detection 001 - Encoded PowerShell Execution

## Objective

Identify PowerShell executions utilizing the EncodedCommand parameter.

## Telemetry Source

- Sysmon Event ID 1
- PowerShell Logging

## Example Activity

```powershell
powershell -EncodedCommand SQBlAGwAbABvAA==
```

## MITRE ATT&CK

| Technique ID | Technique |
|-------------|-----------|
| T1059.001 | PowerShell |

## Detection Opportunities

- EncodedCommand parameter present
- Suspicious PowerShell execution
- Process creation telemetry

## Status

In Development