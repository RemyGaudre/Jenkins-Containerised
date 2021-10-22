# Jenkins-Containerised to build quarkus applications
My private tool to manage my personal project that needs to be build with GraalVM.

## How to use it ?
### Install docker
Follow instruction of docker installation on official website : [https://docs.docker.com/get-docker/](https://docs.docker.com/get-docker/)

### Change if necessary graalvm version in dockerfile
Go to [https://www.graalvm.org/downloads/](https://www.graalvm.org/downloads/). Find the version you want and change the GRAAL_VERSION environment variable in the Dockerfile.

### Build docker container
Go to the folder root of this project and :
```bash
docker build -t  myjenkinscontainer:1 .
```

### Run container
```bash
docker run -p 8080:8080  myjenkinscontainer:1
```

### Connect to the container
```bash
docker ps
# Choose your Container Id
docker exect -it <containerid> /bin/bash
```

### Use jenkins :
Go to [http://localhost:8080/](http://localhost:8080/)