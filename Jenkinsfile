pipeline {
    agent any

    environment {
        STUDENT_NAME = 'Erasyl'
        STUDENT_SURNAME = 'Abdiraman'
        STUDENT_GROUP = 'IT-2310'
        STUDENT_ID = '3833'
        IMAGE_NAME = 'abdiraman-erasyl-devops'
    }

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Build') {
            steps {
                echo 'Building student application...'
                sh 'python3 -m py_compile app/main.py'
            }
        }

        stage('Test') {
            steps {
                sh 'python3 app/main.py'
            }
        }

        stage('Docker Build') {
            steps {
                sh 'docker build -t $IMAGE_NAME .'
            }
        }

        stage('Docker Run') {
            steps {
                sh '''
                    docker run --rm \
                    -e STUDENT_NAME=$STUDENT_NAME \
                    -e STUDENT_SURNAME=$STUDENT_SURNAME \
                    -e STUDENT_GROUP=$STUDENT_GROUP \
                    -e STUDENT_ID=$STUDENT_ID \
                    $IMAGE_NAME
                '''
            }
        }
    }

    post {
        success {
            echo 'SUCCESS! DevOps Pipeline completed!'
        }
        failure {
            echo 'FAILED! Check Jenkins logs.'
        }
    }
}
