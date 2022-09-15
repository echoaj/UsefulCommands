# Python Virtual Environment

## Start Python Virtual Environment
(Windows Only)\
`python -m venv path/to/app_name`
`.\django\Scripts\Activate.ps1`\
[Resource](https://docs.python.org/3/library/venv.html)

## Display System Path Variables.
```
echo %PATH%
```
This is where the console will look for program names to run.\
When you type `python3 app.py` it will search for `python.exe` in.

# NodeJS & NPM
## Create package.json
`npm init`\
`npm init -y` to skip questions.
## Download dependencies
`npm install`\
`npm i` 

### Generate Icons of different sizes
npx pwa-asset-generator img.png icons

### Firebase Storage & Google Cloud CLI
#### How to enable cors on firebase project
1. Download Google Cloud CLI
2. Log in using the CLI
3. Create cors.json file in the project directory and type the code below.
```
[
  {
    "origin": ["*"],
    "method": ["GET"],
    "maxAgeSeconds": 3600
  }
]
```
1. Navigate to the directory containing cors.json with the Google Cloud CLI
2. In the CLI type: `gsutil cors set cors.json gs://<app_name>.appspot.com`

## Generate gitignore file CLI
gen gitignore

## Change PC boot order
1. Open the BIOS (as soon as the PC starts press f2 or f12)
2. Go to the BIOS Setup
3. Go to General -> Boot Sequence
4. Click Add Boot Option
5. Select EFI for the file name
6. Select shimx64.efi for the file
7. Enter boot option name (e.g. ubuntu)
8. Then change the boot sequence so that the new boot option is on top

[Source](https://itsfoss.com/no-grub-windows-linux/)

## Make USB WIFI Adapter work on Linux (BT + AC600 Driver Free)
Enter the following commands in the terminal:
```
mkdir -p ~/build
cd build/
sudo apt-get install git
git clone https://github.com/brektrou/rtl8821CU.git
cd rtl8821CU/
make
sudo make install
```
Then repull the USB Adapter and it should work.\
[Source](https://github.com/brektrou/rtl8821CU)


## Add Usefull Bash Aliases
```
alias desk="cd ~/Desktop"
alias docs="cd ~/Documents"
alias bashedit="code ~/.bashrc"
alias snips="code ~/Desktop/UsefulCommands"

function gall() {
    git add .
    git commit -a -m "$1"
    git push
}
```