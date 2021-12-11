# Install all the deployments and replicas
# Remove the previous ingress
kubectl delete -f 5-Ingress Resource.yaml
kubectl apply -f 11-bookinfo.yaml

# Install the new ingress
kubectl apply -f 12-ingress.yaml
#http://a1608cc8a0c034330b96641611b8b065-d296f06c3def01e0.elb.eu-west-3.amazonaws.com/productpage
# With / rewrite
kubectl apply -f 12-ingress_rewrite_root.yaml

# Fix service to reviews v3
kubectl apply -f 13-reviews-v3.yaml
