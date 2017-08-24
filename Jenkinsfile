node {
  def app
  stage('Clone repository') {
    checkout scm
  }
  stage('Deploy image') {
    sh "kubectl run spain.mobile.env --image=docker.io/manar21/android-studio:junit-fabricplugin --replicas=2 --output=yaml --dry-run > 'mobile_env-rc2.yaml'"
    sh "kubectl create -f 'mobile_env-rc2.yaml'"
  }
}
