pipeline {
    agent any

    environment {
        STUDENT_NAME = 'Abat'
        STUDENT_SURNAME = 'Baglanuly'
        STUDENT_GROUP = 'IT2-2314'
        STUDENT_ID = '38350'
    }

    stage {
        stage('Checkout') {
            steps {
                echo 'Checking out source code from GitHub...'
                checkout scm
            }
        }
        stage('Build') {
            steps {
                echo 'Building project environment...'
                sh 'chmod +x scripts/Baglanuly_Abat_system.sh'
                sh './scripts/Baglanuly_Abat_system.sh'
            }
        }
        stage('Test') {
            steps {
                echo 'Executing tests...'
                sh 'test -f Baglanuly_Abat_IT2-2314_38350.txt'
                exho "Student: ${env.STUDENNT_NAME} ${env.STUDENT_SURNAME}"
                echo "Group: ${env.STUDENT_GROUP}"
                echo "Student ID: ${env.STUDENT_ID}"
            }
        }
        stage('Docker Build') {
            steps {
                echo 'Building Docker image...'
                sh 'docker build -t baglanuly-abat-devops .'
            }
        }
        stage('Docker Run') {
            steps {
                echo 'Running Docker container...'
                sh 'docker stop baglanuly-abat-container || true'
                sh 'docker rm baglanuly-abat-container || true'
                sh '''
                    docker run -d \
                      -e STUDENT_NAME="${STUDENT_NAME}" \
                      -e STUDENT_SURNAME="${STUDENT_SURNAME}" \
                      -e STUDENT_GROUP="${STUDENT_GROUP}" \
                      -e STUDENT_ID="${STUDENT_ID}" \
                      --name baglanuly-abat-container \
                      baglanuly-abat-devops
                '''
                sh 'docker.ps'
                sh 'docker logs baglanuly-abat-container'
            }
        }
    }
}
