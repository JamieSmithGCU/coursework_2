pipeline {
	agent { docker { image 'node:6.3' } }

	stages {
		stage ('Build') {
			steps {
				sh 'node server.js'
			}
		
		}

		stage ('Test') {
			environment {
        			scannerHome = tool 'SonarQube'
    			}

			steps {
        			withSonarQubeEnv('SonarQube') {
            			sh '${scannerHome}bin/sonar-server.properties'        			}

			timeout(time: 10, unit: 'MINUTES') {
            			waitForQualityGate abortPipeline: true
        			}
			}
		}
	}
}

