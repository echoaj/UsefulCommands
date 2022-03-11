
## Commands
### Start Docker Daemon
Open Docker app.  Docker documentation says you can run `dockerd` but it didn't work for me.

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
`docker run --rm -ti echoaj/hello-bye:1.0.0`

### Run a detached container running in the background
`docker run -d -ti ubuntu bash`

### Kill a running container
`docker kill <container_name>`

### Delete a container
`docker rm <container_name>`

### Build a docker image
`docker build -t <repo_name> <path_to_place_file>`

### Run an existing container
`docker start <container-name>`
`docker start -a HelloBye`

### Create, Push, Pull Docker Container
* Navigate to the source file your code is in
* Create a Dockerfile
* `docker build -t <repo_name> <path_to_place_file>`
* `docker run --rm <repo_name>`
* `docker login`
* `docker tag <repo_name> echoaj/<repo_name>:1.0.0`
* `docker push echoaj/<repo_name>:1.0.0`
* Start docker app on device.
* `docker pull echoaj/<repo_name>:1.0.0`
* `docker run --rm echoaj/<repo_name>:1.0.0`
