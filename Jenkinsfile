node {
  def app
  stage('Clone repository') {
    checkout scm
  }
  stage('Deploy image') {
    sh "docker ps"
    sh " sudo sysctl -w net.ipv4.tcp_mtu_probing=1"
    sh "docker pull docker.io/manar21/android-studio:junit-fabricplugin"
    sh "kubectl run andriodstudio --image=docker.io/manar21/android-studio --replicas=2 --output=yaml --dry-run > "deployment-rc.yaml""
    sh "kubectl create -f "deployment-rc.yaml""
  }
}
