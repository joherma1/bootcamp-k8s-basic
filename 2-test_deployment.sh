# Change to the proper namespace
kubens bookinfo
kubectl get deployment
kubectl get sa
kubectl get replicaset
kubectl describe replicaset ratings-v1
kubectl get pods
# Port forward (local:remote)
kubectl port-forward ratings-v1- 19080:9080

curl --location --request GET 'http://localhost:19080/ratings/1'