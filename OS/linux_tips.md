# Linux Tips
## Setup Java
1. Check if you have Java installed: `java --version`
2. Install Java JDK: `sudo apt install openjdk-17-jdk` -- develope & compile Java programs
3. Install Java JRE: `sudo apt install openjdk-17-jre` -- run Java programs (I didn't need to install this.)
4. Should be good to go for console programs.
5. If using maven, install maven: `sudo apt install maven`
6. Set up java environment variables for JDK and Maven
   ```
    # Inside .bashrc:
    export JAVA_HOME="/usr/lib/jvm/java-17-openjdk-amd64/"
    export PATH=${PATH}:${JAVA_HOME}/bin
    export M2_HOME="/usr/share/maven"
    export MAVEN_HOME="/usr/share/maven"
    export PATH=${PATH}:${M2_HOME}/bin
   ```
7. Run your java program
8. More info: `https://tomgregory.com/java-home-vs-path-environment-variables/`
9. I still couldn't compile my Java Scheduler Project

## Get tar file from web and un zip it
1. `sudo wget -c https://download.file.tar.gz`
2. `sudo tar -xvf file.tar.gz`

## Open Files GUI from terminal
`nautilus .`

## Open Terminal from command line
`gnome-terminal`

## View bytes of a file in human readable format
`hexdump -C <file_name>`

## Permissions
### File Permissions
1. First character is the file type
   - `-` regular file
   - `d` directory
   - `l` symbolic link
   - `b` block device
   - `c` character device
   - `s` socket
   - `p` pipe
2. Next 3 characters are the permissions for the user
3. Next 3 characters are the permissions for the group
4. Next 3 characters are the permissions for others (external users)
5. r = read, w = write, x = execute

**E.g: *drwxrwxr-x* means:**\
directory\
read, write, execute for user\
read, write, execute for group\
read, execute for everyone else

**E.g: *-rw-r--r--* means:**\
regular file\
read, write for user\
read for group\
read for everyone else

### Change Permissions
`chmod <permissions> <file_name>`
#### Way 1: Use numbers
* 0 = --- (no permissions)
* 1 = --x (execute)
* 2 = -w- (write)
* 3 = -wx (write & execute)
* 4 = r-  (read)
* 5 = r-x (read & execute)
* 6 = rw- (read & write)
* 7 = rwx (read, write, execute)
  
**E.g: `chmod 777 <file_name>`**\
read, write, execute for user, group, and others\

**E.g: `chmod 644 <file_name>`**\
read, write for user, read for group, read for others\

#### Way 2: Use letters

**Users**\
* u = user
* g = group
* o = other
* a = all

**Operators:**\
* + = add
* - = remove
* = set

**Permissions:**\
* r = read
* w = write
* x = execute

**E.g: `chmod u+x <file_name>`**\
add execute permission for user\

**E.g: `chmod a-x <file_name>`**\
remove execute permission for all\

**E.g: `chmod u=rwx,g=rw,o=r <file_name>`**\
set all permissions for user\
read, write for group\
read for others