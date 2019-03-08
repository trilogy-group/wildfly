# Development with Devspaces

### Devspaces 

Manage your Devspaces https://www.devspaces.io/.

Read up-to-date documentation about cli installation and operation in https://www.devspaces.io/devspaces/help.

Here follows the main commands used in Devspaces cli. 

|action   |Description                                                                                        |
|---------|---------------------------------------------------------------------------------------------------|
|`devspaces --help`                         |Check the available command names.                               |
|`devspaces create [options]`               |Creates a DevSpace using your local DevSpaces configuration file |
|`devspaces start trilogy-wildfly`          |Starts the DevSpace named \[trilogy-wildfly\]                    |
|`devspaces bind trilogy-wildfly`           |Syncs the DevSpace with the current directory                    |
|`devspaces info trilogy-wildfly [options]` |Displays configuration info about the DevSpace.                  |

Use `devspaces --help` to know about updated commands.

#### Development flow

You should have Devspaces cli services started and logged to develop with Devspaces.
The following commands should be issued from **project directory**.

1 - Create Devspaces

```bash
$ cd devspaces/docker
$ devspaces create
$ cd ../../
```

2 - Start containers

```bash
devspaces start trilogy-wildfly
```

3 - Switch to stable version

```bash
git checkout 14.0.1.Final
git checkout -b <new-branch-name>
```

`master` branch might be unstable

4 - Start containers synchronization

```bash
devspaces bind trilogy-wildfly
```

5 - Grab some container info

```bash
devspaces info trilogy-wildfly
```

Retrieve published DNS and endpoints using this command

6 - Connect to development container

```bash
devspaces exec trilogy-wildfly /bin/sh
```

7 - Build and Smoke Tests Wildfly

```bash
chmod +x mvnw
./mvnw package
```

8 - Run Wildfly

```bash
cd build/target/wildfly-[version]/bin
/standalone.sh -b=0.0.0.0
```

Access application URLs:

Using information retrieved in step 4, access the following URL's:

* Application (bound to port 8080): 
    * `http://trilogy-wildfly.<devspaces-user>.devspaces.io:<published-ports>/`
    

### Docker Script Manager (CLI)

Currently, we have these command available to work using local docker compose.

```bash
devspaces/docker-cli.sh <command>
```

|action    |Description                                                               |
|----------|--------------------------------------------------------------------------|
|`build`   |Builds images                                                             |
|`deploy`  |Deploy Docker compose containers                                          |
|`undeploy`|Undeploy Docker compose containers                                        |
|`start`   |Starts Docker compose containers                                          |
|`stop`    |Stops Docker compose containers                                           |
|`exec`    |Get into the container                                                    |

#### Development flow

1 - Build and Run `docker-compose` locally.

```bash
devspaces/docker-cli.sh build
devspaces/docker-cli.sh deploy
devspaces/docker-cli.sh start
```

2 - Get into container

```bash
devspaces/docker-cli.sh exec
```

3 - Switch to stable version

```bash
git checkout 14.0.1.Final
git checkout -b <new-branch-name>
```

`master` branch might be unstable

4 - Build and Smoke Tests Wildfly

```bash
chmod +x mvnw
./mvnw package
```

5 - Run Wildfly

```bash 
cd build/target/wildfly-[version]/bin
/standalone.sh -b=0.0.0.0
```

Access application URLs:

* Application: 
    * http://localhost:8080/


Please refer to [Wildfly Readme](../../README.md) doc for more details on the building and running the project.
