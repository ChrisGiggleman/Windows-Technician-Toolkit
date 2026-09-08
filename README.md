# Windows Technician Toolkit

A Windows batch-based technician toolkit that provides quick access to common Windows administration, troubleshooting, networking, security, and recovery utilities from a single command-line menu.

The project was created as a practical Windows support and system administration utility while also serving as a reference for common Windows management commands.

## Features

### System Tools

* Command Prompt
* PowerShell
* Registry Editor
* Services
* Event Viewer
* Computer Management

### User and Policy Administration

* Local Users and Groups
* Local Group Policy Editor

### Recovery and Security

* System Restore
* Windows Recovery Settings
* Windows Security

### Network Troubleshooting

* Display full IP configuration
* Flush DNS resolver cache
* Release and renew DHCP address
* Flush DNS after network renewal
* Open Network Connections

### Additional Administrative Tools

* Task Manager
* Device Manager
* System Information
* Control Panel

## Usage

### 1. Download or clone the repository

```powershell
git clone https://github.com/YOUR-USERNAME/Windows-Technician-Toolkit.git
```

### 2. Open the project folder

```powershell
cd Windows-Technician-Toolkit
```

### 3. Run the toolkit

Double-click:

```text
Windows-Technician-Toolkit.bat
```

For administrative functions, right-click the file and select:

```text
Run as administrator
```

## Example Menu

```text
============================================================
                WINDOWS TECHNICIAN TOOLKIT
============================================================

  SYSTEM TOOLS
  ----------------------------------------------------------
   1. Command Prompt
   2. PowerShell
   3. Registry Editor
   4. Services
   5. Event Viewer
   6. Computer Management

  USER / POLICY TOOLS
  ----------------------------------------------------------
   7. Local Users and Groups
   8. Group Policy Editor

  RECOVERY / SECURITY
  ----------------------------------------------------------
   9. System Restore
  10. Recovery Settings
  11. Windows Security

  NETWORK TOOLS
  ----------------------------------------------------------
  12. IP Configuration
  13. Flush DNS
  14. Release / Renew IP
  15. Network Connections

  OTHER
  ----------------------------------------------------------
  16. Task Manager
  17. Device Manager
  18. System Information
  19. Control Panel
  20. Exit
```

## Windows Utilities Used

| Tool                   | Command          | Purpose                                    |
| ---------------------- | ---------------- | ------------------------------------------ |
| Command Prompt         | `cmd.exe`        | Windows command-line interface             |
| PowerShell             | `powershell.exe` | Windows automation and administration      |
| Registry Editor        | `regedit.exe`    | View and modify the Windows Registry       |
| Services               | `services.msc`   | Manage Windows services                    |
| Event Viewer           | `eventvwr.msc`   | Review Windows system and application logs |
| Computer Management    | `compmgmt.msc`   | Access multiple administrative utilities   |
| Local Users and Groups | `lusrmgr.msc`    | Manage local accounts and groups           |
| Group Policy           | `gpedit.msc`     | Configure local Group Policy               |
| System Restore         | `rstrui.exe`     | Restore Windows system configuration       |
| Network Connections    | `ncpa.cpl`       | Manage network adapters                    |
| Task Manager           | `taskmgr.exe`    | Review processes and system performance    |
| Device Manager         | `devmgmt.msc`    | Manage hardware and drivers                |
| System Information     | `msinfo32.exe`   | View detailed system information           |
| Control Panel          | `control.exe`    | Open the traditional Windows Control Panel |

## Network Commands

The toolkit currently provides several common Windows networking commands.

Display complete IP information:

```cmd
ipconfig /all
```

Flush the DNS resolver cache:

```cmd
ipconfig /flushdns
```

Release the current DHCP address:

```cmd
ipconfig /release
```

Request a new DHCP address:

```cmd
ipconfig /renew
```

## Windows Edition Notes

Some tools included with the toolkit are not available on every edition of Windows.

For example:

* `gpedit.msc` is generally unavailable on Windows Home.
* `lusrmgr.msc` is generally unavailable on Windows Home.
* Some operations require administrator privileges.

The toolkit is primarily intended for Windows 10 and Windows 11 systems.

## Planned Improvements

Future versions may include:

* Ping testing
* DNS lookup
* Traceroute
* Active network connections
* Winsock reset
* TCP/IP reset
* System File Checker
* DISM health checks
* CHKDSK
* Windows Update shortcuts
* Startup application management
* Installed software information
* System uptime
* Logged-in user information
* Computer hostname and domain information
* Hardware information
* Exportable diagnostic reports
* Administrative privilege detection
* Improved menu input validation
* Troubleshooting submenus

## Project Goals

This project is designed to continue growing as a reusable toolkit for:

* Help Desk technicians
* Desktop Support technicians
* System administrators
* Cybersecurity analysts
* IT students
* Home lab environments

It also provides hands-on practice with:

* Windows administration
* Batch scripting
* Command-line troubleshooting
* Networking
* Endpoint troubleshooting
* Security utilities
* IT documentation

## Disclaimer

This toolkit contains administrative and troubleshooting commands that can modify system or network configuration.

Review commands before using them in a production environment and follow your organization's change-management and security policies.

## License

This project is available under the MIT License.
