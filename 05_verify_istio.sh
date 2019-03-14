# Verify istio

# From: https://istio.io/docs/setup/kubernetes/quick-start/#verifying-the-installation


kubectl get svc -n istio-system
echo '### Service count (includes header line - last check was 17): ' `kubectl get svc -n istio-system | wc -l`

kubectl get pods -n istio-system
echo '### Pod count (includes header line - last check was 14): ' `kubectl get pods -n istio-system | wc -l`
