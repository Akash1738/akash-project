pipeline {
    agent any

    stages {

        stage('Clone Code') {
            steps {
                git 'https://github.com/Akash1738/akash-project.git'
            }
        }

        stage('Build Maven') {
            steps {
                sh 'mvn clean package'
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t devops-java-web-app .'
            }
        }

        stage('Run Container') {
            steps {
                sh 'docker run -d -p 8000:8080 devops-java-web-app'
            }
        }

    }
}
