node {
	stages {
		stage ('Build') {
			steps {
				sh 'node server.js'
			}
		
		}

		stage('Sonarqube') {
    			steps {
				build 'Static Analysis'
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

