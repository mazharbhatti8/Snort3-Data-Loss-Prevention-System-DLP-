# Snort 3 Commands

## Update Ubuntu

```bash
sudo apt update
sudo apt upgrade -y
```

## Install Snort

```bash
sudo apt install snort -y
```

## Verify Installation

```bash
snort -V
```

## Edit Rules

```bash
sudo nano /usr/local/etc/snort/rules/local.rules
```

## Test Configuration

```bash
sudo snort -c /usr/local/etc/snort/snort.lua -T
```

## Run Snort

```bash
sudo snort -c /usr/local/etc/snort/snort.lua -i enp0s8 -A alert_fast
```

## Check Network Interface

```bash
ip addr
```

## Test from Kali

```bash
ping <Ubuntu-IP>

nmap -sX <Ubuntu-IP>

nmap -p 23 <Ubuntu-IP>

nmap -p 21 <Ubuntu-IP>
```
