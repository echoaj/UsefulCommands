# Pycharm | Intellij Tips

[Intellij Folder Structure](https://www.jetbrains.com/help/idea/content-roots.html#configure-folders)

## Add Maven Dependency in Intellij
1. Open the pom.xml file
2. Inside the <dependencies> tag **right click** > **Gengerate** > **Dependency**
3. Search for desired dependency and click Add
4. On the right side of the Intellij window within the side bar click on Maven
5. Click on the refresh icon to Reload All Maven Projects

## Show main menu on startup
settings -> Appearence & Behavior -> Project -> Reopen projects on startup (check off)

## Intellij allow spring boot developer tools to run server automatically
Download spring bood developer tools
settings -> Build, Execute, Deployment -> Compiler -> Build project automatically (check on)
settings -> Advanced Settings -> Compiler -> Allow auto-make to start ... (check on)

## Search through all files
`ctrl + shift + f`

## Find and Replace
`ctrl + r`

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

# Docker
## Notes
* When you run a docker image, if it doesn't find it in your library it will downloaded it from a library  online for you.
* Don't let your containers fetch dependencies at boot time.  Like to container running npm install.  Otherwise if someone removes a library from node repo your containers will stop.  Instead, include the dependencies inside the container itself.
* Don't leave important thing in an unamed stopped container.  Otherwise you run the risk of accidentally deleting a seemingly unimportant container and then all your important stuff is gone.
* Docker files are programs used to describe how to create an image and you build this image by using the `docker build` command.  Docker files are not shell scripts.  Operations need to on the same line if you want both of them to run.
* Include installer in your project.
* [Resource](https://www.howtoforge.com/tutorial/how-to-create-docker-images-with-dockerfile/)

## Linux Installation
`sudo apt-get update`\
`sudo apt-get install ca-certificates curl gnupg lsb-release`\
` curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg`\
`echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null`\
`sudo apt-get update`\
`sudo apt-get install docker-ce docker-ce-cli containerd.io`\
`sudo docker run hello-world`\
Make it so you don't need to add sudo in front\
`sudo groupadd docker`\
`sudo usermod -aG docker $USER`\
restart VM or execture the command below\
`newgrp docker`\
`docker run hello-world` should work now.

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
