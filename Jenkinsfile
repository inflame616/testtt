pipeline {
    agent any
    environment {
        GCP_USER = 'inflame616'
        GCP_HOST = '35.240.247.92'  // IP của instance web1
    }
    stages {
        stage('Deploy Code') {
            steps {
                sh '''
                    # Copy code to GCP ~/web directory
                    scp -r ./* $GCP_USER@$GCP_HOST:~/web/
                '''
            }
        }
    }
}
