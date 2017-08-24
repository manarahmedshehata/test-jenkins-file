if [[ $(kubectl get deployments | grep $DEPLOYMENT_NAME) ]]; then
echo "deployments exists"
else
kubectl run $DEPLOYMENT_NAME --image=$IMAGE_NAME --replicas=2 --output=yaml --dry-run > "$IMAGE_NAME-rc.yaml"
kubectl create -f "$IMAGE_NAME.yaml"
fi
