node{
  def app
  
    stage('Clone') {
      checkout scm
    }
    stage('Build image') {
      app = docker.build("jducret/nginx")
    }
  
    stage('Run image') {
      docker.image('jducret/nginx').withRun('-p 80:80') { c ->
      sh 'docker ps'
      sh 'curl localhost'
      }
    }
}
