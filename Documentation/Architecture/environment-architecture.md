# Security Operations Monitoring Environment Architecture

## Overview

The environment consists of a centralized Wazuh deployment used to monitor and collect endpoint telemetry from a Windows endpoint.

## Architecture Diagram

```text
MacBook Pro 16" (M1 Pro)
│
├── SOC-WAZUH01
│   ├── Ubuntu Desktop 24.04 ARM64
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

## Data Flow

Windows Endpoint
→ Sysmon
→ Wazuh Agent
→ Wazuh Manager
→ Wazuh Dashboard

## Components

### Wazuh Manager

Responsible for log collection, analysis, and alert generation.

### Wazuh Indexer

Stores collected telemetry and security events.

### Wazuh Dashboard

Provides visualization, investigation, and threat hunting capabilities.

### Windows Endpoint

Generates security telemetry through Sysmon and PowerShell logging.

### Sysmon

Provides detailed endpoint visibility including:

- Process Creation
- DNS Queries
- Network Activity
- File Operations