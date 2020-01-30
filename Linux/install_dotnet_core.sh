#!/bin/bash

# Debian linux commands to install the dotnet sdk
dotnet_ver=3.1

wget -q https://packages.microsoft.com/config/ubuntu/19.04/packages-microsoft-prod.deb -O packages-microsoft-prod.deb
dpkg -i packages-microsoft-prod.deb
apt-get update -y
apt-get install -y apt-transport-https
apt-get update -y
apt-get install -y dotnet-sdk-${dotnet_ver}
