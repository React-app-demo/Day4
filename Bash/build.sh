#!/bin/bash
sudo docker rmi -f $(sudo docker images -q) ##this is not recommned step, i am deleting existing images to save space
sudo rm -r gold ## these steps are not recommened instead you can modify script as shown below
sudo mkdir gold
cd gold/
sudo git clone https://github.com/React-app-demo/Day4-code.git
cd Day4-code/
sudo docker build -t react-microk8s -f golddockerfile .
# sudo docker tag react-microk8s:latest sagarkakkalasworld/react-microk8s:latest ##make sure you did docker login
# sudo docker push sagarkakkalasworld/react-microk8s:latest

sudo docker tag react-docker:latest hussain503/react-docer-hub:latest
sudo docker push hussain503/react-docer-hub:latest
