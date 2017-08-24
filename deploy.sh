if [[ $(kubectl get deployments | grep $DEPLOYMENT_NAME) ]]; then
echo "deployments exists"
else
echo "testttttttttttttttt" 
kubectl run spainmobenv -i --image=docker.io/manar21/android-studio:junit-fabricplugin --replicas=1 --output=yaml --dry-run > spainmobenv-rc.yaml
kubectl create -f spainmobenv-rc.yaml
fi
