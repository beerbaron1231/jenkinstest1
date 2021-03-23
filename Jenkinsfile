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
             steps {
                echo 'run server'

                script {
                    docker.image("my-image:${env.BUILD_ID}").withRun('-p 3000:3000')
                }
            }
            
        }
    }
}