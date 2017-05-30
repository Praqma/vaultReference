
echo "Removing Vault from Cluster"
kubectl delete -f pv/vault-pv.yaml
kubectl delete -f pvc/vault-pvc.yaml
kubectl delete -f configmaps/vault-configmap.yaml
kubectl delete -f services/vault-service.yaml
kubectl delete -f services/vault-ui-service.yaml
kubectl delete -f deployment/vault-deployment.yaml
kubectl delete -f deployment/vault-ui-deployment.yaml
kubectl delete -f ingress/vault-ui-ingress.yaml

