#!/bin/zsh

# Minikube cluster :
clear && ./srcs/ascii_art/minikube.sh
sleep 5;
minikube start;
eval $(minikube docker-env);

# Metallb  LoadBalancecr :
clear && ./srcs/ascii_art/metallb.sh
sleep 5;
kubectl apply -f https://raw.githubusercontent.com/google/metallb/v0.8.1/manifests/metallb.yaml
kubectl apply -f ./srcs/yaml/configmap.yaml
eval $(minikube docker-env);
docker ps;

#
./srcs/ascii_art/end.sh
