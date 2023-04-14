#!/bin/bash
# WSL2: dig ${HOSTNAME}.local +short
# Powershell: netsh interface ip show addresses "WiFi"
MY_HOST_IP=$(dig "${HOSTNAME}".local +short |tail -n 1)
nmap -p 6442-6446 "${MY_HOST_IP}"

sed "s/MY_HOST_IP/$MY_HOST_IP/" wsl2-kind-template.yaml > wsl2-kind.yaml