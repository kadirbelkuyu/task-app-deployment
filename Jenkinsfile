pipeline {
    agent any

    environment {
        BUILD_ID = "${env.BUILD_NUMBER}"
    }

    stages {
        stage('Build') {
            steps {
                sh 'docker build -t your-dockerhub-username/task-app:${BUILD_ID} .'
            }
        }

        stage('Push') {
            steps {
                withCredentials([string(credentialsId: 'dockerhub_password', variable: 'DOCKERHUB_PASSWORD')]) {
                    sh 'docker login -u your-dockerhub-username -p ${DOCKERHUB_PASSWORD}'
                    sh 'docker push your-dockerhub-username/task-app:${BUILD_ID}'
                }
            }
        }

        stage('Deploy') {
            steps {
                withCredentials([file(credentialsId: 'kubeconfig', variable: 'KUBECONFIG')]) {
                    sh 'kubectl config use-context my-context'
                    sh 'kubectl set image deployment/task-app task-app=your-dockerhub-username/task-app:${BUILD_ID} --record'
                    sh 'kubectl apply -f k8s/monitoring'
                    sh 'kubectl apply -f k8s/logging'
                }
            }
        }
    }
}
