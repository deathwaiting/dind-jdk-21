# Docker-in-Docker image with JDK-21

- Docker-in-Docker image : a docker image that have docker installed in the container
- This is mainly useful for CI/CD pipelines that needs to build other docker images, but generally discouraged approach for security reason.
- This image is an extension of the offical [docker:dind](https://hub.docker.com/_/docker) image, with Temurin JDK-21 installed.
- This is mainly used to build docker images for java applications in CI/CD pipelines like gitlab-ci. 
    - For ex: spring boot 3 plugin has a maven target `spring-boot:build-image`, which builds an optimized image for the application using build-packs. This requires both the JDK and docker to be installed.

## Usage

- To pull the image : 
```sh
docker push ahmedgalalfathy/dind-jdk-21:latest
```

- To run the image -for testing- : 
```sh
docker run --privileged --rm -it ahmedgalalfathy/dind-jdk-21:latest
```

