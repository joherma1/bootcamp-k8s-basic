# Increase replicas to 3
kubectl edit deployment/ratings-v1

stern ratings* --since 1m

curl --location --request GET 'http://a1608cc8a0c034330b96641611b8b065-d296f06c3def01e0.elb.eu-west-3.amazonaws.com/ratings/1'

# Remove the deployment and see what happnes
kubectl delete -f 1-deployment.yaml
--> 503


# Optional
Set up Route 53 to have your domain pointed to the NLB (optional):

asdf.com.           A.
ALIAS abf3d14967d6511e9903d12aa583c79b-e3b2965682e9fbde.elb.us-east-1.amazonaws.com

