pipeline {
    agent any
    environment {
        CLUSTER_NAME = 'my-cluster'
        LOCATION = 'asia-southeast1-a'
        PROJECT_ID = 'steam-nuance-439700-g0'
    }
    stages {
        stage('Deploy') {
            steps {
                sh '''
                    gcloud auth activate-service-account --key-file=/var/jenkins_home/gcp-key.json
                    gcloud container clusters get-credentials $CLUSTER_NAME --zone $LOCATION --project $PROJECT_ID
                    kubectl apply -f k8s/storage.yaml
                    kubectl apply -f k8s/deployment.yaml
                '''
            }
        }
    }
}
