# Tutorial for setting up remote access between 2 machines

## Mac to Debian

### Instal VNC Server on Debian
Follow this Guide: https://www.digitalocean.com/community/tutorials/how-to-install-and-configure-vnc-on-ubuntu-20-0 \
Install XFCE `sudo apt-get install xfce4 xfce4-goodies`
Add these lines to **~/.vnc/xstartup**
```
##### XFCE GUI ##### 
unset SESSION_MANAGER
unset DBUS_SESSION_BUS_ADDRESS
xIdb SHOME/.Xresources
startlxde &
####################
```
