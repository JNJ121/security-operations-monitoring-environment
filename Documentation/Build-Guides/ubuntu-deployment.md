# Ubuntu Deployment Guide

## Overview

This guide documents the configuration of the Ubuntu-based Wazuh server used within the Security Operations Monitoring Environment.

---

## Environment

### Host Platform

- VMware Fusion
- Apple MacBook Pro 16" (M1 Pro)

### Virtual Machine

- Hostname: SOC-WAZUH01
- Operating System: Ubuntu Desktop 26.04 ARM64

---

## Deployment Steps

### Create Virtual Machine

- Create a new Ubuntu virtual machine in VMware Fusion.
- Assign CPU, memory, and storage resources.
- Boot using the Ubuntu installation image.

### Install Ubuntu

- Complete the Ubuntu installation wizard.
- Configure local administrator credentials.
- Install available system updates.

### Verify Connectivity

Confirm internet access:

```bash
ping google.com
```

Confirm network configuration:

```bash
hostname -I
```

### Install VMware Tools

Install VMware Tools and verify:

- Screen resizing functions correctly
- Clipboard integration functions correctly
- Network adapter is detected

---

## Validation

The following checks were completed:

- Ubuntu installed successfully
- Internet connectivity verified
- System updates completed
- VMware Tools operational
- Snapshot created

---

## Result

SOC-WAZUH01 was successfully deployed and prepared for Wazuh installation.