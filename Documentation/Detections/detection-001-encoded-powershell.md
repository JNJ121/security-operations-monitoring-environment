# Detection 001 - Encoded PowerShell Execution

## Objective

Identify PowerShell executions utilizing the `EncodedCommand` parameter.

Encoded PowerShell commands are frequently used by adversaries to obfuscate command execution and evade basic detection methods.

---

## Detection Type

PowerShell Execution Monitoring

---

## Telemetry Sources

- Sysmon Event (Process Creation)
- PowerShell Script Block Logging
- Wazuh SIEM

---

## Example Activity

```powershell
powershell -EncodedCommand SQBlAGwAbABvAA==
```

---

## Detection Logic

Identify command-line activity containing:

```text
powershell.exe
```

and

```text
-EncodedCommand
```

Potential indicators include:

- EncodedCommand parameter present
- Obfuscated PowerShell execution
- Process creation telemetry
- PowerShell command-line activity

---

## MITRE ATT&CK Mapping

| Technique ID | Technique |
|-------------|-----------|
| T1059.001 | PowerShell |

---

## Validation Activity

The following command was executed on SOC-ENDPOINT01:

```powershell
powershell -EncodedCommand SQBlAGwAbABvAA==
```

The activity generated process creation telemetry that was successfully collected by Sysmon and ingested into Wazuh.

---

## Detection Results

The encoded PowerShell execution was successfully identified through:

- Sysmon Process Creation Events
- PowerShell Logging
- Wazuh Threat Hunting

Command-line activity containing the `EncodedCommand` parameter was visible for investigation and analysis.

---

## Findings

The monitoring environment successfully detected encoded PowerShell execution activity.

The detection demonstrates visibility into a common attacker technique that may be used for execution, obfuscation, or payload delivery.

---

## Related Investigation

- Investigation 002 - Encoded PowerShell Execution Analysis

---

## Status

✅ Validated