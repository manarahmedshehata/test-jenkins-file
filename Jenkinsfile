node {
  def app
  stage('Clone repository') {
    checkout scm
  }
  stage('Deploy image') {
    //sh "kubectl run spainmobileenv --image=docker.io/manar21/android-studio:junit-fabricplugin --replicas=2 --output=yaml --dry-run > 'mobile_env-rc2.yaml'"
    sh "export DEPLOYMENT_NAME='spainmobileenv'"
    sh "export IMAGE_NAME=docker.io/manar21/android-studio:junit-fabricplugin"
    sh "chmod +x deploy.sh"
    sh "./deploy.sh" 
    //sh "kubectl run spainmobileenv --image=nginx --replicas=2 --output=yaml --dry-run > 'mobile_env-rc2.yaml'"
    //sh "kubectl create -f 'mobile_env-rc2.yaml'"
  }
}
