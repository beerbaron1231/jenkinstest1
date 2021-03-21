node {
   def commit_id
   stage('Preparation') {
     checkout scm
     bash "git rev-parse --short HEAD > .git/commit-id"                        
     commit_id = readFile('.git/commit-id').trim()
   }
   stage('docker build/push') {
     docker.withRegistry('https://index.docker.io/v1/', 'dockerhub') {
       def app = docker.build("beerbaron1231/docker-nodejs-demo:${commit_id}", '.').push()
     }
   }
}