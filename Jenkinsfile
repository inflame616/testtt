pipeline {
    agent any
    stages {
        stage('Deploy Code') {
            steps {
                sh '''
                    # Lấy tên của một pod
                    POD_NAME=$(kubectl get pods -l app=web -o jsonpath='{.items[0].metadata.name}')
                    
                    # Copy code vào pod
                    kubectl cp ./ default/$POD_NAME:/usr/share/nginx/html/
                '''
            }
        }
    }
}
