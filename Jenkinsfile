node{
    
    def registry = 'jducret/nginx'
    def image = "${registry}:version-${env.BUILD_ID}"

    stage('Clone') {
        git 'https://github.com/DucretJe/jenkins-nginx.git'
    }
    
    def img = stage('Build') {
        docker.build("$image", '.')
    }
    
    stage('Run') {
        img.withRun("--name run-$BUILD_ID -p 80:80") { c ->
            sh 'curl localhost'
        }
    }
    
    stage('Push') {
        docker.withRegistry('', 'dockerhub1') {
            img.push 'latest'
            img.push()
        }
    }
}
