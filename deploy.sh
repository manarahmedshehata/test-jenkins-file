if [[ $(kubectl get deployments | grep andriostudio) ]]; then
echo "deployments exists"
else
kubectl run andriostudio --image=manar21/android-studio --replicas=2 --output=yaml --dry-run > "deployment-rc.yaml"
kubectl create -f "deployment-rc.yaml"
fi
