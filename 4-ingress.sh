# AWS specific instruction
# 1- Create the mandatory resources (helm available as well)
kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/controller-v1.1.0/deploy/static/provider/aws/deploy.yaml

# AWS Console NLB create EC2 -> LB
# Kubernetes Service Load Balancer created
kubectl get service ingress-nginx-controller --namespace=ingress-nginx
# Create Ingress resource
kubectl apply -f 5-ingress_resource.yaml

# Problem, the MS responds to /ratings
http://a1608cc8a0c034330b96641611b8b065-d296f06c3def01e0.elb.eu-west-3.amazonaws.com/ratings/1

# Optional: Rewrite to respond to /
kubectl apply -f 6-ingress_resource_rewrite.yaml
