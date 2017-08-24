if [[ $(kubectl get deployments | grep $DEPLOYMENT_NAME) ]]; then
echo "deployments exists"
else
echo "testttttttttttttttt" 
kubectl run spainmobenv -i --port=5901 --image=docker.io/manar21/android-studio:junit-fabricplugin --replicas=2 --output=yaml --dry-run > spainmobenv-rc.yaml
kubectl create -f spainmobenv-rc.yaml
fi
