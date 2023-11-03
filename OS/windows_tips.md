# Windows Tips
## Game window / record screen
`windows + g`

## Screenshot
`windows + prtScn`

## Selected Screenshot
`windows + shift + s`

## Go to Desktop
`windows + d`

## Cortana
`windows + c`

## Windows + ;
`emoji keyboard`

## Control Windows
`windows + ArrowKeys`

<br>

# Power Shell
## Commands
### Display aliases
`get-alias`

### Display Netadapter
`get-netadapter`

## Check to see if you have a Profile configure
`test-path $profile`

## Create Alias (Profile)
`New-Item -Type file -Path $Profile -Force\`
`code $Profile`

```powershell
#EXAMPLE 1: MAP SINGLE COMMMAND TO VALUE
set-alias -name eth -value get-netadapter

#EXAMPLE 2: MAP MULTIPLE ARGUMENTS TO VALUE
function snips { code "C:\Users\aljos\OneDrive\Documents\UsefulCommands\"}
```
Restart powershell \
`snips`

If an issue with running the script exists, type the command below: \
`Set-ExecutionPolicy -Scope CurrentUser -ExecutionPolicy Unrestricted`

Enter Y and re-run the script.

## Check what servers are running
`netstat -abo`

## Grep
`netstat -ano | findstr 5000`

## Kill Process
`taskkill /PID 20396 /F`

## Show Processes
`Get-Process`

## Open Website in Browser
`Start "https://www.google.com"`
`Start-Process "https://www.google.com"
`
## View bytes of a file in human readable format
`Format-Hex <file_name>`

## Check if an Inbound connection to a port exists
`Get-NetFirewallRule -Direction Inbound | Where-Object { $_.Enabled -eq 'True' } | Get-NetFirewallPortFilter | Where-Object { $_.LocalPort -eq 5986 } | Format-List`