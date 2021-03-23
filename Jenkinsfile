pipeline {
    agent any
    stages {
        stage('Build image') {
            steps {
                echo 'Starting to build docker image'

                script {
                   // def customImage = docker.build("my-image:${env.BUILD_ID}")
                   // customImage.push()
                  //docker.image("my-image:${env.BUILD_ID}").withRun('-d=true -p 3000:3000') {
                     bat "docker build --tag my-image:${env.BUILD_ID}"
                      bat "docker run -d -p 3000:3000 my-image:${env.BUILD_ID}"
                  }
                }
            }
        }
        
    }
