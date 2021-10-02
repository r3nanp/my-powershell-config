<img src="./.github/img/powershell.png" />

# 🔥 My Powershell Config

My Windows Powershell configuration with **oh-my-posh** and **PSReadline**.

![r3nanp](https://img.shields.io/badge/r3nanp-my--powershell--config-blue?style=for-the-badge&logo=powershell)
![license mit](https://img.shields.io/github/license/r3nanp/my-powershell-config?color=blue&label=LICENSE&logo=github&style=for-the-badge)

---

<div align="center">
  - <a href="./.github/README-pt.md">Switch to Portuguese 🇧🇷
  </a>
</div>

---

## Prerequisites

⚠ **You should use a modern console** host like ConEmu, Alacritty, Terminus, Hyper, FluentTerminal, or the official Windows Terminal to have a great terminal experience on Windows. ⚠

## Techologies used

- [oh-my-posh](https://github.com/JanDeDobbeleer/oh-my-posh)
- [PSReadline](https://github.com/PowerShell/PSReadLine)

## How to active the scripts execution in Powershell?

- This command will show which policy is active
```ps1
Get-ExecutionPolicy
```

---

**Policy table**
| Restriced | AllSigned | RemoteSigned | Unrestriced | ByPass |
|-------------------------------------------------------------------------------- |----------------------------------------------------- |-------------------------------------------------------------------------------- |----------------------------------------------------------------------------------------------------------- |------------------------------------------------------ |
| No script can be run. Windows Powershell can only be used in interactive mode. | Only scripts signed by a trusted publisher can run. | Download scripts must be signed by a trusted publisher before they can be run. | No restrictions. All scripts can be run, but download scripts will prompt for permission before it runs. | All scripts can be run, without warnings or prompts. |

---

Example: My Powershell is using RemoteSigned policy

<img src="./.github/img/screenshot.png" alt="Hyper">

- This command will change your policy:
```ps1
Set-ExecutionPolicy -Scope CurrentUser RemoteSigned
```

### How to install PSReadline and oh-my-posh

- Install PSReadline

```ps1
Install-Module -Name PSReadLine -AllowPrerelease -Scope CurrentUser -Force -SkipPublisherCheck
```

- If you don't have an -AllowPrerelease flag, upgrade PowerShellGet with:

```ps1
Install-Module -Name PowerShellGet -Force first.
```

- Install oh-my-posh

```ps1
Install-Module oh-my-posh -Scope CurrentUser
```

(Not necessary)

- Install Get-ChildItemColor

```ps1
Install-Module -Name Get-ChildItemColor -AllowPrerelease -Scope CurrentUser -Force -SkipPublisherCheck -AllowClobber
```

### Configure Powershell profile

- Into your powershell, execute this command:

```ps1
if (!(Test-Path -Path $PROFILE )) { 
  New-Item -Type File -Path $PROFILE -Force 
}

# To open in visual studio code, but you can change it
code $PROFILE
```

### <a href="/theme/profile.ps1"> And copy and paste profile configuration in theme</a>
