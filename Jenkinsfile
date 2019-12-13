def app
pipeline {
	agent any

	stages {
		stage ('Build') {
			steps {
				app = docker.build('jamiesmithgcu/coursework2')
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
						app.push('${env.BUILD_NUMBER}')
						app.push('latest')	
					}
				}
			}
		}
	}
}

