# Lab Setup Guide

This guide explains how to recreate the complete lab environment used in this project.

---

# Lab Overview

The project consists of two virtual machines connected through the same virtual network.

| Machine | Operating System | Purpose |
|---------|------------------|---------|
| Ubuntu Server | Ubuntu Server | Snort 3 IDS/DLP Monitoring Server |
| Kali Linux | Kali Linux | Attack Simulation & Security Testing |

---

# Software Requirements

| Software | Purpose |
|----------|---------|
| Oracle VirtualBox | Virtualization Platform |
| Ubuntu Server | Snort Monitoring Server |
| Kali Linux Virtual Machine | Attacker Machine |
| Snort 3 | Intrusion Detection System (IDS) |
| Wireshark | Packet Analysis |
| Nmap | Network Scanning |
| Netcat (nc) | Traffic Simulation |

---

# Official Download Links

## Oracle VirtualBox

Download Oracle VirtualBox from the official website.

https://www.virtualbox.org/wiki/Downloads

---

## Ubuntu Server

Download Ubuntu Server LTS.

https://ubuntu.com/download/server

Recommended Version

- Ubuntu Server 22.04 LTS

---

## Kali Linux Virtual Machine

Download the pre-built VirtualBox image.

https://www.kali.org/get-kali/#kali-virtual-machines

---

## Snort

Official Website

https://www.snort.org/

Documentation

https://docs.snort.org/

---

## Nmap

https://nmap.org/

---

## Wireshark

https://www.wireshark.org/

---

# Recommended Virtual Machine Configuration

## Ubuntu Server

RAM

3 GB

CPU

2 Cores

Storage

25 GB

Network Adapter

Enable 2 adapter 
NAT
Host Only 

---

## Kali Linux

RAM

2 GB

CPU

2 Cores

Storage

20 GB

Network Adapter

Enable 2 adapter 
NAT
Host Only 

---

# Network Configuration

Both virtual machines must be connected to the same Internal Network inside Oracle VirtualBox.

Example

```
Kali Linux
      │
      │
      ▼
=========================
 VirtualBox Host only network
=========================
      │
      ▼
Ubuntu Server
      │
      ▼
Snort 3
```

---

# Verify Connectivity

Find Ubuntu IP Address

```bash
ip a
```

From Kali Linux

```bash
ping <Ubuntu-IP>
```

If the ping is successful, both virtual machines are communicating correctly.

---

# Update Ubuntu

```bash
sudo apt update

sudo apt upgrade -y
```

---

# Install Snort Inside Ubuntu Server

```bash
sudo apt install snort -y
```

Verify Installation

```bash
snort -V
```

---
# Kali Linux
## Install Nmap 

Nmap is pre-installed on Kali Linux.

Verify

```bash
nmap --version
```

---

## Install Wireshark

Wireshark is pre-installed on Kali Linux.

Verify

```bash
wireshark
```

---

# Configure Snort In Ubuntu 

Edit the local rule file.

```bash
sudo nano /usr/local/etc/snort/rules/local.rules
```

Paste the custom rules from the **rules/local.rules** file.

---

# Test Snort Configuration

```bash
sudo snort -c /usr/local/etc/snort/snort.lua -T
```

Expected Result

```
Snort successfully validated the configuration.
```

---

# Start Snort

```bash
sudo snort -c /usr/local/etc/snort/snort.lua -i enp0s8 -A alert_fast
```

Replace **enp0s8** with your network interface if it is different.

---

# Generate Test Traffic From Kali

## Ping Detection

```bash
ping <Ubuntu-IP>
```

---

## Nmap XMAS Scan

```bash
nmap -sX <Ubuntu-IP>
```

---

## FTP Detection

```bash
nmap -p 21 <Ubuntu-IP>
```

---

## Telnet Detection

```bash
nmap -p 23 <Ubuntu-IP>
```

---

## HTTP Detection

```bash
nmap -p 80 <Ubuntu-IP>
```

---

# Packet Analysis

Open Wireshark on Kali Linux.

Capture packets on the active network interface while generating test traffic.

Observe:

- ICMP Packets
- TCP Connections
- HTTP Requests
- Network Scans

---

# Expected Alerts

The implemented rules should generate alerts for:

- ICMP Ping Detection
- Nmap XMAS Scan Detection
- Telnet Login Attempts
- FTP Connection Attempts
- HTTP GET Requests
- HTTP POST Requests
- Password Keyword Detection
- SQL Injection Attempts
- Credit Card Detection
- Email Address Detection
- Government ID Detection
- Confidential Project Detection
- Password Disclosure
- API Key Exposure

---

# Troubleshooting

## Snort Does Not Generate Alerts

- Verify both VMs are on the same Internal Network.
- Verify the correct network interface is selected.
- Validate the Snort configuration.
- Confirm the custom rules are loaded.

---

## Verify Network Interface

```bash
ip addr
```

Example Interface

```
enp0s8
```

---

# Lab Summary

The completed lab consists of:

- Oracle VirtualBox
- Ubuntu Server
- Kali Linux
- Snort 3 IDS
- Wireshark Packet Analysis
- Nmap Network Scanning
- Custom Snort Detection Rules
- Real-Time Alert Generation

Following this guide allows anyone to recreate the complete Snort 3 Data Loss Prevention (DLP) lab from scratch.
