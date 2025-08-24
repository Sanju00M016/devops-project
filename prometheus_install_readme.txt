minikube addons enable metrics-server
minikube addons enable dashboard
winget install Helm.Helm
helm version
helm repo add prometheus-community https://prometheus-community.github.io/helm-charts
helm repo update
kubectl create namespace monitoring
helm install prometheus prometheus-community/prometheus --namespace monitoring
minikube service prometheus-server -n monitoring
