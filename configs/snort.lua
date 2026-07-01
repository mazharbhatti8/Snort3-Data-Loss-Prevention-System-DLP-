# Configuration Files

This folder contains the Snort 3 configuration used in this project.

Main configuration file:

- snort.lua

The configuration loads the custom rules from:

/usr/local/etc/snort/rules/local.rules

use sudo nano to paste rules in this file.

The AFPacket module was used to capture live network traffic from the monitored interface.
