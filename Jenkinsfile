pipeline {
	agent { docker { image 'node:6.3' } }

	stages {
		stage ('Build') {
			steps {
				sh 'node server.js'
			}
		
		}

		stage ('SonarQube') {
			environment {
        			scannerHome = tool 'SonarQube'
 				}

			steps {
				withSonarQubeEnv('SonarQube') {
            				sh '/var/jenkins_home/sonarqube/sonar-scanner-3.3.0.1492-linux/bin/sonar-scanner'
				}
			}	
		}
	}
}

