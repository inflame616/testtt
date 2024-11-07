pipeline {
    agent any
    environment {
        GCP_USER = 'inflame616'
        GCP_HOST = '34.143.250.249'  // IP của node gke-my-cluster-default-pool-5457b2d7-gd5p
    }
    stages {
        stage('Deploy Code') {
            steps {
                sh '''
                    scp -o StrictHostKeyChecking=no -r ./* $GCP_USER@$GCP_HOST:/home/inflame616/web/
                '''
            }
        }
    }
}
