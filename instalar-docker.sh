#!/bin/bash

echo "Instalando o Docker......."

curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh
sudo apt-get update && upgrade -y
