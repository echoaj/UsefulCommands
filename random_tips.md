# Pycharm | Intellij Tips

[Intellij Folder Structure](https://www.jetbrains.com/help/idea/content-roots.html#configure-folders)


# Python Virtual Environment

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

## Commands
### Display images that are available
##### An image is every file that makes up just enough of the operating system
`docker images`
### Run an image
`docker run -ti ubuntu:latest bash`

### Commiting Images (saving images into new images) 
##### Commiting images and then tagging them is such a common pattern that you can just do it all in one line
`docker commit <name_of_container> <name_of_new_image>`
##### To do everything manualy execute the commands below
`docker ps`\
`docker commit <ps_ID>`\
`docker tag <image_ID> <name_of_new_image>`

### Run container and it deletes itself after the process ends
`docker run --rm -ti ubuntu sleep 5`

### Run a detached container running in the background
`docker run -d -ti ubuntu bash`

### Kill a running container
`docker kill <container_name>`

### Delete a container
`docker rm <container_name>`

### Build a docker image
`docker build -t <name_of_resut> <path_to_place_file>`