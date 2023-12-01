pipeline{
    agent any

    tools {
        maven 'maven-3'
    }
    stages{
        stage('git checkout'){
            steps{
                git 'https://github.com/Harijana17/Triang07.git'
            }
        }
        stage('Build the app'){
            steps{
                sh 'mvn clean install'
            }
        }
        stage('Unit Test Execution'){
            steps{
                sh 'mvn test'
            }
        }
        stage('build the docker image'){
            steps{
                script {
                    sh 'docker build -t triang7:1.0.0 .'
                }
            }
        }
        stage('push the docker image') {
            steps{
                withCredentials([usernamePassword(credentialsId: 'dockerhubpass', usernameVariable: 'DOCKERHUB_USERNAME', passwordVariable: 'DOCKERHUB_PASSWORD')]) {
                    script {
                        sh "docker login -u $DOCKERHUB_USERNAME -p $DOCKERHUB_PASSWORD"
                    }
                }
            }
        }
    }
}
