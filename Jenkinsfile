node {
  def app
  stage('Clone repository') {
    checkout scm
  }
  stage('Deploy image') {
    sh "whoami"
    sh "docker ps"
    sh "docker login -u ayasalah93 -p aya27548435"
    sh "docker run hello-world"
    sh "kubectl run andriodstudio --image=docker.io/manar21/android-studio --replicas=2 --output=yaml --dry-run > "deployment-rc.yaml""
    sh "kubectl create -f "deployment-rc.yaml""
  }
  stage('Push image') {
    docker.withRegistry("https://registry.hub.docker.com", 'docker-hub-credential') {
      app.push("${env.BUILD_NUMBER}")
      app.push("latest")
    }
  }
}
