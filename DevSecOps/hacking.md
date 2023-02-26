# Command commands used when hacking

## Check what version of FTP is running on a target
`telnet <ip_addr> 21`
`sudo nmap -p- -sS -sV <ip_addr>` # takes a while

## Check what type of OS is running on a target
`sudo nmap -p- -sS -sV <ip_addr>` # takes a while

## Check what host is running on a target
`telnet <ip_addr> 80`

## Log in with telnet
`telnet <ip_addr>`

## Log in with FTP
`ftp <ip_addr>`

## Log in with SSH
`ssh <user>@<ip_addr>`

## Log in with FTP without account
user: anonymous
pass: "press enter"

## Download file from FTP and put in current directory
`get <file_name>`

## View shares using SMB on a target (Mac OS)
`smbutil view -g smb://<ip_addr>` 
on other machines you can use smbclient or smbmap

