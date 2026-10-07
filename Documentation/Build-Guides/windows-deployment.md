# Windows Endpoint Deployment Guide

## Overview

This guide documents the deployment and configuration of the Windows endpoint used for telemetry generation and security monitoring.

---

## Environment

### Host Platform

- VMware Fusion
- Apple MacBook Pro 16" (M1 Pro)

### Virtual Machine

- Hostname: SOC-ENDPOINT01
- Operating System: Windows 11 ARM

---

## Deployment Steps

### Create Virtual Machine

- Create a new Windows 11 ARM virtual machine.
- Allocate CPU, memory, and storage resources.
- Complete the Windows installation process.

### Configure Windows

- Create local administrator account.
- Install Windows updates.
- Verify network connectivity.

### Install VMware Tools

VMware Tools were installed to enable:

- Dynamic resolution
- Driver support
- Network adapter functionality
- Improved virtual machine performance

### Verify Connectivity

Confirm internet access:

```powershell
ipconfig

ping 8.8.8.8
```

### Configure Endpoint Monitoring

Install:

- Wazuh Agent
- Sysmon ARM64a
- PowerShell Logging

Verify:

- Agent connection to Wazuh
- Sysmon event generation
- PowerShell event collection

---

## Validation

The following checks were completed:

- Windows installation successful
- Network connectivity verified
- VMware Tools operational
- Wazuh Agent connected
- Sysmon ARM64 installed
- PowerShell Logging enabled

---

## Result

SOC-ENDPOINT01 was successfully deployed and integrated into the Security Operations Monitoring Environment.