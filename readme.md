# Hi

# hello

# hey there

Docker image commands
docker version
docker info
docker ps -a -
docker build -t myimage . - build images
docker image - view images
docker run myimage cat /etc/os-release - to check the os
docker run myimage whoami - to check the user
docker run myimage env - check list of env variables

# set the base image first

FROM alpine:3.18

LABEL version="1.0"

# since it is an alpine image i'm using apk

RUN apk add curl

# setting workdir

WORKDIR /downloads

# add a user

RUN adduser -D govardhan
USER govardhan

# set env variables here

ENV abc=123
ENV xy=123 \
 cv=456

#copy files from local to container
COPY script.py /downloads/

# steps to install ansible

wsl --install
sudo apt update
sudo apt install ansible
ansible-playbook -i hosts.ini install_nginx.yml
