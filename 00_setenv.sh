#!/bin/bash

echo 'correct usage is source 00_setenv.sh'

# TODO: Work out my equivalent for these

# export MINIKUBE_HOME=~/minikube_0.35.0/bin;
# export PATH=$MINIKUBE_HOME:$PATH
# export KUBECONFIG=$MINIKUBE_HOME/.kube/config:$MINIKUBE_HOME/.kube/kubconfig2
export KUBE_EDITOR="code -w"
export MINIKUBE_PROFILE=minikube
export MINIKUBE_PROFILE_ISTIO=minikube

export DEV_HOME=/_Dev
export ISTIO_ROOT=$DEV_HOME/Cloud
export ISTIO_HOME=$ISTIO_ROOT/istio-1.0.5
export PATH=$ISTIO_HOME/bin:$PATH

source <(kubectl completion bash)
source <(minikube completion bash)

echo 'the following after minikube as started'
echo 'eval $(minikube --profile istio docker-env)'