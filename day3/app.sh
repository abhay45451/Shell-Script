#!/bin/bash

echo "----------Deployment start-------------"
function git_clone() {
	echo "git clonning..."
	git clone https://github.com/abhay45451/django-notes-app.git
}

function install_dependancies() {
       sudo apt-get update -y 
       sudo apt install docker.io -y
       sudo apt install nginx -y
}

function docker_restart() {
    sudo systemctl enable docker
    sudo systemctl enable nginx
    #sudo systemctl restart docker
}

function deploy() {
	docker build -t notes-app .
	#docker run -d -p 8000:8000 notes-app:latest
        docker-compose up -d
}

if ! git_clone; then
   echo "Project already clone"
   cd django-notes-app

fi

if ! install_dependancies; then
   echo " Installation failed"
   exit 1
fi

if ! docker_restart; then
  echo "System Fault"
  exit 1
fi

if !  deploy; then
 echo "Deployment failed"
 exit 1
fi

echo "-----------Deployemnt Done -----------"
