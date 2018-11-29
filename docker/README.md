# Dockerfile
 Dockefile is created on top of `alpine` image version 3.4.
 # Requirements
 - The project should be cloned from https://github.com/trilogy-group/wildfly
 - `master` branch might be unstable, branch `14.0.1.Final` is the stable one at the time of this writing
 - Docker version 18.06.0-ce
 - Docker compose version 1.22.0
  
# Quick Start
- Clone the repository
- Open a terminal session to that folder
- Go into the `docker` directory: `cd docker`
- Run `build-image.sh` to build the Docker image
- Run `start-image.sh` to start the container and log into it
- At this point you will be inside the docker container, you can proceed to build and run the project:
	- `cd /data` to go into the root folder where the project is located
	- `./mvnw package` to run a complete build
	- `cd build/target/wildfly-[version]/bin` as instructed on project README file
	- `./standalone.sh -b=0.0.0.0` to start the server binding on all addresses
	
- When you finish working with the container, type `exit`
 
 Please refer to [Wildfly Readme](../README.md) doc for more details on the building and running the project.
