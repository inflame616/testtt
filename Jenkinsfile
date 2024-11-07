pipeline {
    agent any
    environment {
        PROJECT_ID = 'steam-nuance-439700-g0'
        CLUSTER_NAME = 'my-cluster'
        LOCATION = 'asia-southeast1-a'
    }
    stages {
        stage('Build and Push') {
            steps {
                sh '''
                    gcloud builds submit --tag gcr.io/$PROJECT_ID/testtt:$BUILD_NUMBER .
                '''
            }
        }
        stage('Deploy') {
            steps {
                sh '''
                    gcloud container clusters get-credentials $CLUSTER_NAME --zone $LOCATION --project $PROJECT_ID
                    kubectl apply -f k8s/deployment.yaml
                '''
            }
        }
    }
}
