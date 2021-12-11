# Check service
kubectl get services
kubectl port-forward service/ratings 19080:9080

# Check round-robin/random (as kube-proxy wants)
# Modify Replica set 3
kubectl edit deployment/ratings-v1
# Check logs
stern ratings* --since 1m
kubectl port-forward service/ratings 19080:9080
# It does not work, only forwards to 1 pod


# Connect to other microservice
kubectl get pods
kubectl exec --stdin --tty reviews-v1- -u root -- /bin/bash

# Mmm, there's no curl, try with busybox
kubectl run -i --tty busybox --image=busybox --restart=Never -- sh
$ wget -q -O - 'http://ratings:9080/ratings/2'
{"id":2,"ratings":{"Reviewer1":5,"Reviewer2":4}}