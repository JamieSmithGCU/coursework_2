pipeline {
	agent { docker { image 'node:6.3' } }

	stages {
		stage ('Build') {
			steps {
				sh 'node server.js'
			}
		
		}

		stage('Sonarqube') {
			steps {
				def scannerHome = tool 'SonarQube';
					withSonarQubeEnv(credentialsId: 'dce1db44-40fe-4be9-a72e-b943ed0e2264') {
   						sh """cp sonar-server.properties ${scannerHome}conf/sonar-scanner.properties"""
        					sh """${scannerHome}bin/sonar-scanner -D sonar.login=admin -D sonar.password=admin"""
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

