
# Snort 3 Data Loss Prevention (DLP) System

## Overview

This project demonstrates the design and implementation of a **Network-Based Data Loss Prevention (DLP) System** using **Snort 3**. The system monitors network traffic, performs deep packet inspection, detects sensitive information within packets, and generates real-time security alerts. The project was developed as part of a Network Security laboratory using a virtual lab environment.

---

## Project Objectives

* Install and configure Snort 3 on Ubuntu Linux.
* Monitor network traffic in real time.
* Develop custom Snort 3 detection rules.
* Detect sensitive information transmitted across the network.
* Generate alerts for suspicious activities.
* Analyze captured network traffic.

---

## Lab Environment

| Component         | Description  |
| ----------------- | ------------ |
| Monitoring Server | Ubuntu Linux |
| Attacker Machine  | Kali Linux   |
| IDS Engine        | Snort 3      |
| Network Scanner   | Nmap         |
| Traffic Generator | Netcat (nc)  |
| Packet Analyzer   | Wireshark    |

---

## Project Architecture

```
Kali Linux
     │
     │  Network Traffic
     ▼
Ubuntu Linux
     │
     ▼
Snort 3 IDS
     │
     ▼
Packet Inspection
     │
     ▼
Alert Generation & Log Files
```

---

## Features

* Real-time network monitoring
* Deep packet inspection
* Custom Snort 3 detection rules
* Data Loss Prevention (DLP)
* Security event logging
* Intrusion detection
* Network traffic analysis

---

## Implemented Detection Rules

* ICMP Ping Detection
* Nmap XMAS Scan Detection
* Telnet Connection Detection
* Malicious Executable Detection
* Password Disclosure Detection
* Confidential Project Keyword Detection
* Credit Card Pattern Detection
* Email Address Detection
* Government ID Pattern Detection
* API Key Exposure Detection

---

## Testing

The implemented rules were tested by generating network traffic from Kali Linux using:

* Ping
* Nmap
* Netcat

Snort successfully detected the generated traffic and produced real-time alerts.

---

## Results

The project successfully detected:

* ICMP Ping Traffic
* Nmap XMAS Scans
* Telnet Connection Attempts
* Password Disclosure
* Confidential Keywords
* Credit Card Numbers
* Email Addresses
* Government ID Patterns
* API Key Exposure

---

## Limitations

* Detection depends on predefined Snort rules.
* Encrypted traffic cannot be fully inspected.
* Designed for educational and laboratory environments.
* Does not automatically block malicious traffic.

---

## Future Improvements

* Integrate with Wazuh SIEM.
* Add automatic alert notifications.
* Develop additional DLP detection rules.
* Deploy in a larger enterprise network.

---

## Skills Demonstrated

* Network Security
* Intrusion Detection Systems (IDS)
* Data Loss Prevention (DLP)
* Linux Administration
* Snort 3 Configuration
* Network Traffic Analysis
* Rule Development
* Cybersecurity Lab Design

---

  ## Installation

A complete step-by-step installation guide is available in:

 **setup/setup.md**

This guide includes:

- Oracle VirtualBox installation
- Ubuntu Server installation
- Kali Linux VM setup
- Snort installation
- Network configuration
- Testing procedures

---

## Author

**Mazhar Mubarak Bhatti**

BS Cyber Security Student

Passionate about Network Security, SOC Operations, Blue Team Security, and Threat Detection.
