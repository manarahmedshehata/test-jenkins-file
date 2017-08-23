node {
  def app
  stage('Clone repository') {
    checkout scm
  }
  stage('Deploy image') {
    sh "chmod +x deploy.sh"
    sh "export IMAGE_NAME_FILE=andriodstudio"
    sh "export DEPLOYMENT_NAME=andriodstudio"
    sh "export IMAGE_NAME=manar21/android-studio"
    sh "export REPLICAS=2"
    sh "./deploy.sh"
  }
}
