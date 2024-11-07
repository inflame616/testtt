pipeline {
    agent any
    environment {
        GCP_USER = 'inflame616'
        GCP_HOST = '<your-gcp-instance-ip>'
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
