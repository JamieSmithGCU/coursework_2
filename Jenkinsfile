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
				withSonarQubeEnv('5aa8dc0a-6a9b-4090-9fff-cb9fe9389af6') {
            				sh '${scannerHome}bin/sonar-scanner'
				}
			}	
		}
	}
}

