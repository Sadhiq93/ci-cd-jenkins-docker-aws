pipeline {
    agent any

    environment {
        DOCKER_IMAGE = 'java-cicd-app'
        CONTAINER_NAME = 'java-app'
        HOST_PORT = '8081'       // Port on your server
        CONTAINER_PORT = '8080'  // Port Tomcat listens inside the container
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

