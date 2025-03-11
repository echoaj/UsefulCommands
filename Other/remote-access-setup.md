# Tutorial for setting up remote access between 2 machines

## Mac to Debian

### Instal VNC Server on Debian
Follow this Guide: https://www.digitalocean.com/community/tutorials/how-to-install-and-configure-vnc-on-ubuntu-20-0 \
Add these lines to **~/.vnc/xstartup**
```
#!/bin/bash
xrdb $HOME/.Xresources
startxfce4 &
```