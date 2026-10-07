# Wazuh Installation Guide

## Environment

- Ubuntu Desktop 26.04 ARM64
- VMware Fusion

## Download Installation Script

```bash
curl -sO https://packages.wazuh.com/4.14/wazuh-install.sh
```

## Install Wazuh

```bash
sudo bash wazuh-install.sh -a
```

## Validation

```bash
sudo systemctl status wazuh-manager
sudo systemctl status wazuh-indexer
sudo systemctl status wazuh-dashboard
```

Expected Result:

All services displayed as active and running.