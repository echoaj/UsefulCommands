
# Install gcc and build-essential
sudo apt install gcc # afterward socket and pthread library can be included
sudo apt install build-essential # Installs meta packages, g++/GNU compiler, gcc, dpkg-dev, G++
# More Info https://linuxhint.com/install-build-essential-ubuntu/

# Send File to MAC
scp file.txt alexjoslin@192.168.1.221:~/Desktop/

# add user to sudo group
usermod -aG sudo [username]

# scale screen (settings don't remain after reboot)
xrandr --output Virtual1 --scale 0.8x0.8

# install vscode
sudo snap install --classic code

# list process tree
ps f

# start sleep in background
sleep 100 &

# select job to put in forground or background
fg %3
bg %8

# check what version of ubuntu you are running
cat /etc/lab-release

# curl get request to localhost API
curl localhost:8080/api/expense   # run spring java demon

# curl post request to localhost API   
# Inserting {"name": "James Foster"}
curl -d '{"item":"Ice Cream"}' -H 'Content-Type: application/json' localhost:8080/api/expense

# Environment Variables
# User defined variables lowercase
# Global variables uppercase
myvar="cowboy"                   # create local variable
echo $myvar                      # print local variable
printenv HOME                    # print global variable
# User defined variables can't viewed in sub shells.  They end when you close the shell
export myvar                     # make variable local
unset myvar                      # remove variable
PATH=$PATH:/home/path/to/dir     # Add to global PATH variable
PATH=$PATH:.                     # Add directory I am currently in to path
# place PATH=$PATH:/home/path/to/dir in .bashrc to make change perminant

# How to create a custom bash command
https://pavanchitneedi.medium.com/how-to-create-custom-commands-in-linux-782b4d52be79

#-----------------------------------------------------------------
# Configure powerlevel10k
p10k configure

# Update VSCode
sudo apt install code

#VM_Share create symbolic link
ln -s /mnt/hgfs/VM_Share ~/Desktop
ls /mnt/hgfs/VM_Share

#Access qconnect through serial (through terminal emulator)
sudo microcom -p /dev/ttyUSB0 -s 115200

#Access qconnect through ssh
ssh root@192.168.0.133

#Personal Access token git lcoal
Ns4kez_R6Gjie7Lp2xv3

#Command to copy over map files to qconnect throuhgh ssh
scp {MAP.bin,MAP.md5,certs.zip} root@192.168.0.133:/var/user/SAR/

#Check if TerrStatus is 5
tail -F /var/log/user_sar_ccm/current 

#Soft reset qconnect
echo -ne "at+cfun=1,1\r" | microcom -t 2000 /dev/ttyACM2
tail -F /var/log/qsvc_terr/current

#Terminal ID for 3-axis
12345665432112345111

#Check if installing os software
tail -F /var/log/user_sar_sm/current 

192.168.0.180   #6-axis qconnect
192.168.0.15    #Ethernet adapter

#On qconnect manual way to print acceleration data in hex format
/usr/qk/bin/mosquitto_sub -t "quake/imu/mtime-value/acc" -F "%t %X"

#Subscribe 
mosquitto_sub -h 192.168.0.180 -t "quake/imu/#" -F "%t %X"
mosquitto_sub -h 192.168.0.133 -t "quake/imu/mtime-value/acc"

#Inject a mosquitto payload
echo -ne "\x01" | mosquitto_pub -h 192.168.0.180 -t 'quake/imu/set/gyro/enable' -s
mosquitto_pub -h 192.168.0.133 -f payloadBinary -t quake/imu/set/acc/config

#Check if you have correct MAP.bin file.
#Should match your terminal ID
hexdump -C /mnt/var/user/SAR/etc/MAP.bin
hexdump -C /var/user/SAR/etc/MAP.bin

#View App Version
cat /etc/issue

#View os version (one of these)
strings /dev/mtd2 | grep -i sysboot
cat /var/ver/versions
cat /etc/os-release

#View kernel version
uname -srm

#Check how much memory your device has for each partition:
mtdinfo -a

#Check how much time device has been up
cat /proc/uptimevar/user/SAR/etc

#Copy APP to QConnect
scp app_768.zip root@192.168.0.180:/root

#Install App -Kevin Way
tar -zxvf runit.1.tar.gz --wildcards 'QConnect_svc_install*'
scp QConnect_svc_install* root@192.168.0.180:/root
tar -xvf QConnect_svc_install*
./install.sh

#Install App
/etc/update_universal.sh --yes --type app --save --arch app_768.zip --dir /root

#Tail Check if IMU recieving messages
tail -F /var/log/qsvc_imu/current | grep config

#stop service
sv stop qsvc_imu
#stop userapp
sv stop user_sar_<whatever>
#stop all services (will not restart service on boot) [dangerous]
/etc/qsvc_control_all.sh stop
#stop all userapps (will not restart service on boot) [dangerous]
/etc/user_control_all.sh stop

#View apps and services on QConnect
ls /service/

#Set ZSH to default shell when loging in
sudo usermod -s /usr/bin/zsh $(whoami)

#Git list parent branch
git log --first-parent

#Git hard reset branch
git reset --hard

stty -F /dev/gps0 9600 cs8 -cstopb -parenb raw
cat /dev/gps0

#Check terminal id of ccm
#Should match your terminal id of QC if it starts with 1
#If it starts with 0 then terminal id of ccm will be different
tail -F /var/log/user_sar_ccm/current

# check if ism330 online
lsmod | grep "ism330\|lis3dh"

# Check if imu on i2c bus
i2cdetect -y 2

# Pipe output to file while viewing
ls | tee log    # Overwrite
ls | tee log -a # Append

# Decompress file
./lzssConvert -d -i test_lzss -o test_uncomp
# Compress file
./lzssConvert -c -i test -o test_lzss

# put random garbage in file
head /dev/urandom > <file>

# Update .zshrc
source .zshrc

# Test start report topics
mosquitto_sub -h 192.168.0.133 -t "user/mm/report/start/lzss" -C 1 -N > start_lzss
mosquitto_sub -h 192.168.0.133 -t "user/mm/report/start/test/raw" -C 1 -N > start_test_raw
&
mosquitto_sub -h 192.168.0.133 -t "user/mm/report/start/raw" -C 1 -N > start_raw
mosquitto_sub -h 192.168.0.133 -t "user/mm/report/start/test/lzss" -C 1 -N > start_test_lzss

# View checksum of user_sar
md5sum /usr/qk/bin/user_sar

# See contents of zipped filed without unzipping it
zip -sf file.zip

# Open file explorer at location
nautilus

# See amount of free disk space available.
df      # disk free

# git graph
git log --all --decorate --oneline --graph

# remove remote branch on gitlab
git remote remove <remote name>

# Load Custom Binaries on QConnect
scp user_sar root@192.168.0.133:/root
cp user_sar /usr/qk/bin
cp user_sar /backup

# http server location
\\dsc10\c$

# timer
date1=`date +%s`; while true; do 
   echo -ne "$(date -u --date @$((`date +%s` - $date1)) +%H:%M:%S)\r";
done

# telenet access Quake FTP service
telnet 70.182.89.225 21

# curl stuff
# curl -T data.txt ftp://192.168.49.129:20 -u quaketester:qu@k3
# curl -v -k --ftp-port 54.213.76.246:20 ftp:://70.183.89.225/
curl -v --insecure "ftp://70.183.89.225" -T data.txt --user quaketester:qu@k3
curl -v --insecure "ftp://70.183.89.225:/functional_tests/caseSerialNum_10_att/" -T hello.txt --user quaketester:qu@k3

# copy from QConnect to VM (make sure network adapter is connected)
scp curl1kEvery30s.sh ajoslin@192.168.0.100:/home/ajoslin/Desktop/

# log onto quake test server
ssh -p 8282 quaketester@70.183.89.225 #Pass: qu@k3


ssh root@$AX3
tail -F /var/log/user_sar_ccm/current
tail -F /var/log/user_sar_lc/current
tail -F /var/log/qsvc_gnss/current
tail -F /var/log/qsvc_terr/current

