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
            				sh '${JAVA_HOME}/bin/sonar-scanner'
				}
			}	
		}
	}
}

