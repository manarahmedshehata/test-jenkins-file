if [[ $(kubectl get deployments | grep $DEPLOYMENT_NAME) ]]; then
echo "deployments exists"
else
echo "testttttttttttttttt" 
#kubectl run -i spainmobenv --image=docker.io/manar21/android-studio:junit-fabricplugin --replicas=1 --output=yaml > testspainmobenv-rc.yaml
kubectl run --tty spainmobenv --image=docker.io/manar21/android-studio:junit-fabricplugin --replicas=2 --output=yaml --dry-run > spainmobenv-rc-test.yaml
kubectl create -f spainmobenv-rc-test.yaml
fi
