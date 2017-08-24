if [[ $(kubectl get deployments | grep $DEPLOYMENT_NAME) ]]; then
echo "deployments exists"
else
echo "testttttttttttttttt" 
#kubectl run -i spainmobenv --image=docker.io/manar21/android-studio:junit-fabricplugin --replicas=1 --output=yaml > testspainmobenv-rc.yaml
#kubectl run spainmobenv --image=docker.io/manar21/android-studio:junit-fabricplugin --replicas=2 --output=yaml --dry-run > spainmobenv-rc-test.yaml
kubectl run spainmobenv --image=manar21/android-studio:junit-fabricplugin-up --port=5901 --replicas=2 --output=yaml --dry-run > spainmobenv-rc-test.yaml
kubectl create -f spainmobenv-rc-test.yaml
fi
