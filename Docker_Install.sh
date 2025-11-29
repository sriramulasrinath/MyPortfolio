#!/bin/bash
#check whether root user or not

R="\e[31m"
N="\e[0m"

sudo dnf remove docker \
                  docker-client \
                  docker-client-latest \
                  docker-common \
                  docker-latest \
                  docker-latest-logrotate \
                  docker-logrotate \
                  docker-engine \
                  podman \
                  runc

sudo dnf -y install dnf-plugins-core
sudo dnf config-manager --add-repo https://download.docker.com/linux/rhel/docker-ce.repo
sudo dnf install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin -y
sudo systemctl enable --now docker
sudo docker run hello-world
sudo systemctl start docker
sudo systemctl enable docker
usermod -aG docker ec2-user

echo -e "$R Logout and Login again $N"