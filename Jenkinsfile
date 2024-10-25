pipeline {
    agent any 
    stages {
        stage('Build') {
            steps {
                echo 'Building..'
                // Thêm các lệnh build ở đây, ví dụ:
                // sh 'npm install' // Nếu bạn đang sử dụng Node.js
            }
        }
        stage('Test') {
            steps {
                echo 'Testing..'
                // Thêm các lệnh test ở đây, ví dụ:
                // sh 'npm test' // Nếu bạn đang sử dụng Node.js
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying..'
                // Thêm các lệnh deploy ở đây
                // Ví dụ: sử dụng kubectl để deploy
                // Cần đảm bảo rằng kubectl đã được cấu hình và có quyền truy cập vào cluster
                sh 'kubectl apply -f ~/deployment.yaml'
            }
        }
    }
}
