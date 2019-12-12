def app

pipeline {
	agent { docker { image 'node:6.3' } }

	stages {
		stage ('Build') {
			steps {
				sh 'node server.js'
			}
		
		}

		/*stage ('SonarQube') {
			steps {
				build 'Static Analysis'
			}
		}*/

		stage ('Push Image') {
			script {
				 {
				docker.withRegistry('https://registry.hub.docker.com', 'docker-hub-credentials') {
					app.push('${env.BUILD_NUMBER}')
					app.push('latest')	
					}
				}
			}
		}
	}
}

