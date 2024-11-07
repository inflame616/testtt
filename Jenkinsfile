pipeline {
    agent any
    
    environment {
        DOCKER_IMAGE = "jssmu/testtt"
        DOCKER_TAG = "${BUILD_NUMBER}"
    }
    
    stages {
        stage('Build') {
            steps {
                echo 'Building..'
                sh 'docker build -t $DOCKER_IMAGE:$DOCKER_TAG .'
            }
        }
        
        stage('Push') {
            steps {
                echo 'Pushing...'
                withCredentials([usernamePassword(credentialsId: 'docker-hub', usernameVariable: 'DOCKER_USERNAME', passwordVariable: 'DOCKER_PASSWORD')]) {
                    sh '''
                        echo $DOCKER_PASSWORD | docker login -u $DOCKER_USERNAME --password-stdin
                        docker push $DOCKER_IMAGE:$DOCKER_TAG
                    '''
                }
            }
        }
        
        stage('Deploy') {
            steps {
                echo 'Deploying..'
                sh 'kubectl apply -f ~/deployment.yaml'
                sh 'kubectl set image deployment/testtt-app testtt=$DOCKER_IMAGE:$DOCKER_TAG'
            }
        }
    }
}
