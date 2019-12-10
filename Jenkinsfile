pipeline {
	agent { docker { image 'node:6.3' } }

	stages {
		stage ('Build') {
			steps {
				sh 'node server.js'
			}
		
		}
		stage ('Test') {
			steps {
				build 'Static Analysis'
				}
			}
	}

}

