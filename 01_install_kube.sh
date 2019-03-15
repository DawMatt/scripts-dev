# Setup Minikube and pre-requisites on Mac

echo WARNING: Assumes VirtualBox and Docker are installed as native applications first

brew update
brew install kubectl
brew cask install minikube

# Testing base install

minikube start --memory 8096 --cpus=4
minikube stop
