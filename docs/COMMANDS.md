# Windows Technician Command Reference

This document provides a quick reference for Windows commands and utilities used by the Windows Technician Toolkit.

## Network Commands

### Display Basic IP Configuration

```cmd
ipconfig
```

Displays basic IP addressing information for network adapters.

---

### Display Detailed Network Configuration

```cmd
ipconfig /all
```

Displays detailed adapter information including:

* IPv4 address
* IPv6 address
* Subnet mask
* Default gateway
* DHCP server
* DNS servers
* MAC address
* DHCP status

---

### Flush DNS Cache

```cmd
ipconfig /flushdns
```

Clears locally cached DNS records.

This can help troubleshoot:

* Incorrect DNS resolution
* Websites resolving to old IP addresses
* DNS-related connectivity problems

---

### Release DHCP Address

```cmd
ipconfig /release
```

Releases the DHCP-assigned IPv4 configuration from network adapters.

---

### Renew DHCP Address

```cmd
ipconfig /renew
```

Requests a new DHCP configuration.

---

### Ping a Host

```cmd
ping google.com
```

Tests basic network connectivity and measures response time.

---

### Continuous Ping

```cmd
ping -t google.com
```

Continues sending ICMP echo requests until manually stopped with:

```text
Ctrl + C
```

---

### Trace Network Path

```cmd
tracert google.com
```

Displays the network hops used to reach a destination.

---

### DNS Lookup

```cmd
nslookup google.com
```

Queries DNS to determine the IP address associated with a hostname.

---

### Display Active Network Connections

```cmd
netstat -ano
```

Displays:

* Active connections
* Listening ports
* Process IDs
* TCP/UDP information

---

### Reset Winsock

```cmd
netsh winsock reset
```

Resets the Windows Winsock catalog.

Administrator privileges are normally required.

A restart may be required afterward.

---

### Reset TCP/IP Stack

```cmd
netsh int ip reset
```

Resets portions of the Windows TCP/IP configuration.

Administrator privileges are required.

## System Repair Commands

### System File Checker

```cmd
sfc /scannow
```

Scans protected Windows system files and attempts to repair corrupted files.

Administrator privileges are required.

---

### DISM Health Check

```cmd
DISM /Online /Cleanup-Image /CheckHealth
```

Checks whether the Windows image has previously been marked as corrupted.

---

### DISM ScanHealth

```cmd
DISM /Online /Cleanup-Image /ScanHealth
```

Performs a more detailed scan of the Windows component store.

---

### DISM RestoreHealth

```cmd
DISM /Online /Cleanup-Image /RestoreHealth
```

Attempts to repair corruption in the Windows component store.

Administrator privileges are required.

## Windows Administrative Utilities

| Utility                | Command          |
| ---------------------- | ---------------- |
| Command Prompt         | `cmd.exe`        |
| PowerShell             | `powershell.exe` |
| Registry Editor        | `regedit.exe`    |
| Services               | `services.msc`   |
| Event Viewer           | `eventvwr.msc`   |
| Computer Management    | `compmgmt.msc`   |
| Local Users and Groups | `lusrmgr.msc`    |
| Group Policy Editor    | `gpedit.msc`     |
| Device Manager         | `devmgmt.msc`    |
| Task Manager           | `taskmgr.exe`    |
| System Information     | `msinfo32.exe`   |
| Network Connections    | `ncpa.cpl`       |
| Control Panel          | `control.exe`    |
| System Restore         | `rstrui.exe`     |

## Useful System Information Commands

### Computer Name

```cmd
hostname
```

### Current User

```cmd
whoami
```

### Detailed System Information

```cmd
systeminfo
```

### Current User and Security Groups

```cmd
whoami /all
```

### Local Users

```cmd
net user
```

### Local Administrators

```cmd
net localgroup administrators
```

## Important

Commands that change Windows configuration should be executed only when the technician understands their impact.

In enterprise environments, always follow organizational procedures for:

* Change management
* Access control
* Incident response
* Troubleshooting
* Documentation
