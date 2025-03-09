# Tutorial for setting up remote access between 2 machines

## Mac to Debian

### Instal VNC Server on Debian
```
sudo apt update
sudo apt install tigervnc-standalone-server
```
### Configure VNC Server on Debian
Set Password
```
vncpasswd
vncserver   # may not work
tigervncserver -xstartup /usr/bin/xterm     # try this
vncserver -list     # see if vncserver is running
ss -tulnp           # to verify the service is listening
```