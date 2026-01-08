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
                sh 'docker run -d -p 8080:8080 java-cicd-app'
            }
        }
    }
}
