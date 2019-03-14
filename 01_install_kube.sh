# Setup Minikube and pre-requisites on Mac
#
# Assumes virtualisation engine is already installed

brew update
brew install kubectl
brew cask install minikube

# Testing base install

minikube start --memory 8096 --cpus=4
minikube stop
