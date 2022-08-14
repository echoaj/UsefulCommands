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