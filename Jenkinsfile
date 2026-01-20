pipeline {
    agent any

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
                sh 'docker build -t java-cicd-app .'
            }
        }

        stage('Deploy') {
            steps {
                // Remove old container if exists
                sh 'docker rm -f java-app || true'
                // Run container with correct port mapping
                sh 'docker run -d -p 8081:8080 --name java-app java-cicd-app'
            }
        }
    }
}

