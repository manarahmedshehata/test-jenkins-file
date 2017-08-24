if [[ $(kubectl get deployments | grep $DEPLOYMENT_NAME) ]]; then
echo "deployments exists"
else
echo "testttttttttttttttt"
kubectl run $DEPLOYMENT_NAME --image=$IMAGE_NAME --replicas=2 --output=yaml --dry-run > $DEPLOYMENT_NAME-rc.yaml
kubectl create -f $DEPLOYMENT_NAME-rc.yaml
fi
