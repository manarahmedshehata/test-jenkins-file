node {
  def app
  stage('Clone repository') {
    checkout scm
  }
  stage('Deploy image') {
    sh "docker ps"
    sh "docker pull ayasalah93/voda"
    sh "kubectl run andriodstudio --image=manar21/android-studio --replicas=2 --output=yaml --dry-run > "deployment-rc.yaml""
    sh "kubectl create -f "deployment-rc.yaml""
  }
}
