# SOC Analyst Home Lab

## Overview

This project documents the design, deployment, and operation of a SOC-focused home lab built to develop practical cybersecurity skills in:

- Security Monitoring
- Log Collection
- SIEM Administration
- Threat Detection
- Endpoint Telemetry
- Incident Investigation
- Detection Engineering
- MITRE ATT&CK Mapping

The lab was designed to simulate a small Security Operations Center (SOC) environment using free and open-source tools.

---

## Project Goals

- Gain hands-on SOC Analyst experience
- Learn SIEM administration and log management
- Deploy endpoint telemetry collection
- Investigate security events
- Create custom detection rules
- Conduct threat hunting activities
- Produce portfolio-quality incident reports
- Build a project suitable for GitHub and cybersecurity interviews

---

## Lab Architecture

```text
MacBook Pro 16" (M1 Pro)
│
├── SOC-WAZUH01
│   ├── Ubuntu Desktop 26.04 ARM64
│   ├── Wazuh Manager
│   ├── Wazuh Indexer
│   └── Wazuh Dashboard
│
└── SOC-ENDPOINT01
    ├── Windows 11 ARM
    ├── Wazuh Agent
    ├── Sysmon ARM64
    └── PowerShell Logging
```

---

## Hardware

Host System

- Apple MacBook Pro 16"
- Apple M1 Pro
- 16 GB RAM
- VMware Fusion

---

## Technologies Used

### SIEM

- Wazuh

### Operating Systems

- Ubuntu Desktop 26.04 ARM64
- Windows 11 ARM

### Endpoint Monitoring

- Wazuh Agent
- Sysmon ARM64

### Logging Sources

- Windows Event Logs
- Sysmon Operational Logs
- PowerShell Logging

---

## Completed Phases

### Phase A – Infrastructure Deployment

Completed

- VMware Fusion Installation
- Ubuntu Deployment
- Windows Deployment
- Network Configuration
- System Updates
- Snapshot Creation

### Phase B – SIEM Deployment

Completed

- Wazuh Installation
- Wazuh Manager Deployment
- Wazuh Indexer Deployment
- Wazuh Dashboard Deployment

### Phase C – Endpoint Telemetry

Completed

- Windows Agent Enrollment
- Sysmon ARM64 Installation
- Sysmon Log Collection
- PowerShell Logging
- Verification of Log Ingestion

---

## Telemetry Verification

Successfully verified the following:

- Windows Endpoint Connected
- Wazuh Agent Active
- Sysmon Process Creation Events
- Sysmon DNS Query Events
- Windows Security Events
- PowerShell Events

---

## MITRE ATT&CK Focus

This lab is being used to study and detect:

| Technique | Description |
|------------|------------|
| T1033 | System Owner/User Discovery |
| T1016 | Network Discovery |
| T1082 | System Information Discovery |
| T1059.001 | PowerShell |
| T1046 | Network Service Discovery |
| T1087 | Account Discovery |

---

## Investigation Projects

### Investigation 001

Windows Host Reconnaissance

Status: In Progress

Activities:

- whoami
- net user
- ipconfig /all
- nslookup
- tasklist

Objective:

Validate Sysmon telemetry collection and Wazuh detection visibility.

---

## Screenshots

### Infrastructure

- Ubuntu Deployment
- Windows Deployment
- Wazuh Dashboard

### Telemetry

- Active Wazuh Agent
- Sysmon Events
- PowerShell Events

### Investigations

- Investigation Screenshots
- Detection Validation
- Alert Analysis

---

## Future Enhancements

- Custom Wazuh Detection Rules
- PowerShell Detection Engineering
- MITRE ATT&CK Mapping
- Threat Hunting Exercises
- Incident Response Playbooks
- Detection Tuning
- Additional Windows Attack Simulations

---

## Key Skills Demonstrated

- SIEM Administration
- Security Monitoring
- Endpoint Visibility
- Threat Detection
- Log Analysis
- Sysmon Configuration
- Windows Security Logging
- PowerShell Logging
- Incident Investigation
- Cybersecurity Documentation

---

## Author

Jabari Neal-Jackson

Current Role:
Network Administrator I

Target Roles:

- SOC Analyst
- Cybersecurity Analyst
- Security Operations Analyst