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

### Set up Caddy on Debian for HTTPS configuration
Follow this Guide: https://caddyserver.com/docs/install 

```
sudo apt install -y debian-keyring debian-archive-keyring apt-transport-https curl
curl -1sLf 'https://dl.cloudsmith.io/public/caddy/stable/gpg.key' | sudo gpg --dearmor -o /usr/share/keyrings/caddy-stable-archive-keyring.gpg
curl -1sLf 'https://dl.cloudsmith.io/public/caddy/stable/debian.deb.txt' | sudo tee /etc/apt/sources.list.d/caddy-stable.list
chmod o+r /usr/share/keyrings/caddy-stable-archive-keyring.gpg
chmod o+r /etc/apt/sources.list.d/caddy-stable.list
sudo apt update
sudo apt install caddy
```
nano /etc/caddy/Caddyfile
```
yourdomain.com {
    tls internal
    reverse_proxy localhost:5901
}
```