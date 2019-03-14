cd $ISTIO_ROOT

export ISTIO_VERSION=1.0.5

echo Install
curl -L https://github.com/istio/istio/releases/download/1.0.5/istio-1.0.5-osx.tar.gz | tar xz

# curl -L https://github.com/istio/istio/releases/download/1.0.2/istio-1.0.2-osx.tar.gz | tar xz

echo kubectl apply
cd istio-$ISTIO_VERSION
kubectl apply -f install/kubernetes/helm/istio/templates/crds.yaml

kubectl apply -f install/kubernetes/istio-demo.yaml