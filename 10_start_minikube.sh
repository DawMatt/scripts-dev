
# https://github.com/burrsutter/scripts-istio/blob/master/1_startMinikube.sh


minikube start --memory 8096 --cpus=4

minikube start -p minikube --memory 8096 --cpus=4


minikube start -p istio --memory=8192 --cpus=3 \
  --kubernetes-version=v1.12.0 \
  --vm-driver=virtualbox \
  --disk-size=5g 


# Standard install from minikube
# https://istio.io/docs/setup/kubernetes/platform-setup/minikube/
