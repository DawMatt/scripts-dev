# Setup Minikube and pre-requisites on Mac
#
# Assumes virtualisation engine is already installed

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
