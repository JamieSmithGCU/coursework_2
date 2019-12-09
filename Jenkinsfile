pipeline {
    agent { docker }
    stages {
        stage('build') {
            steps {
                sh 'server.js'
            }
        }
    }
}