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
                    gcloud container clusters get-credentials $CLUSTER_NAME --zone $LOCATION --project $PROJECT_ID
                    kubectl apply -f k8s/storage.yaml
                    kubectl apply -f k8s/deployment.yaml
                    # Copy code to PVC
                    kubectl cp ./ default/$(kubectl get pod -l app=web -o jsonpath='{.items[0].metadata.name}'):/usr/share/nginx/html/
                '''
            }
        }
    }
}
