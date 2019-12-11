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
        			scannerHome = tool 'sonarqube'
 				}

			steps {
				withSonarQubeEnv('sonarqube') {
            				sh '${scannerHome}/bin/sonar-scanner'
				}
			}	
		}
	}
}

