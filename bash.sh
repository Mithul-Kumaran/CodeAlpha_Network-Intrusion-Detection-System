#!/bin/bash

# Snort Automation Script (Snort 3) by [Your Name]

if ! command -v snort &> /dev/null
then
    echo "[*] Installing Snort 3..."
    sudo apt update && sudo apt install -y snort
else
    echo "[*] Snort is already installed."
fi


echo "[*] Setting up directories..."
sudo mkdir -p /etc/snort/rules
sudo mkdir -p /var/log/snort

RULE_FILE="/etc/snort/rules/local.rules"
echo "[*] Creating ICMP detection rule..."
sudo bash -c "cat > $RULE_FILE" << 'EOF'
alert icmp any any -> any any (msg:"ICMP Ping Detected (Snort3 Automation)"; sid:1000001; rev:1;)
EOF

echo "[*] Starting Snort on interface eth1..."
echo ">>> Open another terminal and run: ping <Kali-IP>"
sudo snort -i eth1 -A alert_fast -R $RULE_FILE
