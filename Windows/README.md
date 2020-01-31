# Creating a Jenkins server that can build .NET Core apps

[Jenkins on Linux Running in a Container](https://github.com/jenkinsci/docker/)

[Jenkins on Linux Dockerfile](https://github.com/jenkinsci/docker/blob/master/Dockerfile)

[Docker Builder Reference](https://docs.docker.com/engine/reference/builder)

[Jenkins Release Build Downloads](https://updates.jenkins-ci.org/download/war/)

* Docker command to build the Windows ServerCore based Java image:
  ```bash
  docker build --rm -f Dockerfile_WindowsJava -t windows/java:latest .
   ```

* Docker command to build the Jenkins server image:
  ```bash
  docker build --rm -f Dockerfile_WindowsJenkins -t windows/jenkins:latest .
   ```

* Docker command line to start the Jenkins server:
  ```bash
  docker run -d -p 8081:8080 -p 50001:50000 windows/jenkins:latest
  docker run -d -v jenkins_home:/var/jenkins_home -p 8081:8080 -p 50001:50000 windows/jenkins:latest
  ```