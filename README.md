# Creating a Jenkins server that can build .NET Core apps

* Docker command to build the Jenkins server image that includes the .NET Core SDK:
  ```bash
  docker build --rm -f "Dockerfile" -t jenkins-dotnet-build:3.1 "."
  ```


* Docker command line to start the Jenkins server:
  ```bash
  docker run -d -v jenkins_home:/var/jenkins_home -p 8080:8080 -p 50000:50000 jenkins-dotnet-build:3.1
  ```