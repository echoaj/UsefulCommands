

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
restart VM or execute the command below\
`newgrp docker`\
`docker run hello-world` should work now.

## Commands
### Start Docker Daemon
Open Docker app.  Docker documentation says you can run `dockerd` but it didn't work for me.

### Display images that are available
##### An image is every file that makes up just enough of the operating system
`docker images`
### Run an image
`docker run -ti ubuntu:latest bash`

### Committing Images (saving images into new images) 
##### Committing images and then tagging them is such a common pattern that you can just do it all in one line
`docker commit <name_of_container> <name_of_new_image>`
##### To do everything manually execute the commands below
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

### Port Binding
Let's say you have two images such as redis & redis:4.0 on your machine but both run on the same port.
If you were to run them both you would get an error because they are bound to the same port number on your host machine.
So you need to tell docker to use a different port number for each image for the host.
```
       +-----+                  +-----+
 host  |3000 |                  |3001 | <- Good, now it will work
+------+-----+------------------+-----+-------+
|                 container                   |
|      +-----+                  +-----+       |
|      |3000 |                  |3000 |       |
|      +-----+                  +-----+       |
|  +-------------+          +--------------+  |
|  |             |          |              |  |
|  |    redis    |          |  redis:4.0   |  |
|  |             |          |              |  |
|  +-------------+          +--------------+  |
+---------------------------------------------+
```
`docker run -p 3000:3000 redis`
`docker run -p 3001:3000 redis:4.0`
