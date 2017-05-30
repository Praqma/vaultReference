echo "deploying Vault to Cluster"
kubectl apply -f pv/vault-pv.yaml
kubectl apply -f pvc/vault-pvc.yaml
kubectl apply -f configmaps/vault-configmap.yaml
kubectl apply -f services/vault-service.yaml
kubectl apply -f services/vault-ui-service.yaml
kubectl apply -f deployment/vault-deployment.yaml
kubectl apply -f deployment/vault-ui-deployment.yaml
kubectl apply -f ingress/vault-ui-ingress.yaml
