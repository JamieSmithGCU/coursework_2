pipeline {
	agent { docker { image 'node:6.3' } }
	def app 
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
			steps {
				docker.withRegistry('https://registry.hub.docker.com', 'docker-hub-credentials') {
					app.push('${env.BUILD_NUMBER}')
					app.push('latest')	
					}
				}
			}
	}
}

