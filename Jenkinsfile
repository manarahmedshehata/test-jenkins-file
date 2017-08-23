node {
  def app
  stage('Clone repository') {
    checkout scm
  }
  stage('Deploy image') {
    sh "kubectl run andriodstudio --image=docker.io/manar21/android-studio:junit-fabricplugin --replicas=2 --output=yaml --dry-run > "mobile_env-rc.yaml""
    sh "kubectl create -f "mobile_env-rc.yaml""
  }
  stage('Push image') {
    docker.withRegistry("https://registry.hub.docker.com", 'docker-hub-credential') {
      app.push("${env.BUILD_NUMBER}")
      app.push("latest")
    }
  }
}
