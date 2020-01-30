FROM jenkins/jenkins:lts

LABEL Name=jenkins-dotnet-build Version=0.0.1

USER root

RUN apt-get -y update \
    && wget -q https://packages.microsoft.com/config/ubuntu/19.04/packages-microsoft-prod.deb packages-microsoft-prod.deb \
    && dpkg -i packages-microsoft-prod.deb \
    && rm -f packages-microsoft-prod.deb \
    && apt-get -y update \
    && apt-get -y install apt-transport-https \
    && apt-get -y update \
    && apt-get -y install dotnet-sdk-3.1
USER jenkins
