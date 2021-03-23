pipeline {
    agent any
    stages {
        stage('Build image') {
            steps {
                echo 'Starting to build docker image'

                script {
                    def customImage = docker.build("my-image:${env.BUILD_ID}")
                    customImage.push()
                }
            }
        }
        stage('run server') {
            steps {
                echo 'run'

                script {
                   docker.image("my-image:${env.BUILD_ID}").withRun('-p 3000:3000') {
                       
                   }
                }
            }
        }
    }
}