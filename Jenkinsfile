pipeline {
    agent any
    environment {
        GCP_USER = 'inflame616'
        GCP_HOST = '35.240.247.92'
    }
    stages {
        stage('Deploy Code') {
            steps {
                sh '''
                    # Ignore host key checking
                    scp -o StrictHostKeyChecking=no -r ./* $GCP_USER@$GCP_HOST:~/web/
                '''
            }
        }
    }
}
