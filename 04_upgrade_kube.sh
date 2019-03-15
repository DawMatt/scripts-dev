# Setup Minikube and pre-requisites on Mac

echo WARNING: Assumes VirtualBox and Docker are installed as native applications first

brew update

# Check current version
brew info kubectl
brew cask info minikube

# Update
brew upgrade kubectl
brew cask upgrade minikube

# Testing base install
minikube start --memory 8096 --cpus=4
minikube stop
