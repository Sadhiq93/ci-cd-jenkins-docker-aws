pipeline {
    agent any

    environment {
        DOCKER_IMAGE = '0'
        CONTAINER_NAME = 'java-app'
        HOST_PORT = '8081'
        CONTAINER_PORT = '8080'
    }

    stages {
        stage('Checkout') {
            steps {
                git 'https://github.com/Sadhiq93/jenkins_project.git'
            }
        }

        stage('Build') {
            steps {
                sh 'mvn clean package'
            }
        }

        stage('Docker Build') {
            steps {
                // Force rebuild to avoid using old cache
                sh "docker build --no-cache -t ${DOCKER_IMAGE} ."
            }
        }

        stage('Deploy') {
            steps {
                // Stop and remove old container if it exists
                sh "docker rm -f ${CONTAINER_NAME} || true"
                
                // Run new container with proper port mapping
                sh "docker run -d -p ${HOST_PORT}:${CONTAINER_PORT} --name ${CONTAINER_NAME} ${DOCKER_IMAGE}"
            }
        }
    }

    post {
        always {
            // Show running containers for verification
            sh 'docker ps'
        }
    }
}

