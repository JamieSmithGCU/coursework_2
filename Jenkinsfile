pipeline {
	agent { docker { image 'node:6.3' } }

	stages {
		stage ('Build') {
			steps {
				sh 'node server.js'
			}
		
		}

		stage('Sonarqube') {
    environment {
        scannerHome = tool 'SonarQubeScanner'
    }
    steps {
        withSonarQubeEnv('sonarqube') {
            sh "${scannerHome}/bin/sonar-scanner"
        }
        timeout(time: 10, unit: 'MINUTES') {
            waitForQualityGate abortPipeline: true
        }
    }
}

		stage ('Push Image') {
			steps {
				script {
					docker.withRegistry('https://registry.hub.docker.com', 'docker-hub-credentials') {
						push('${env.BUILD_NUMBER}')
						push('latest')	
					}
				}
			}
		}
	}
}

