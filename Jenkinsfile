pipeline {
	agent any

	tools {nodejs 'node'}

	stages {
		stage ('Git Stage') {

			steps {
				
				sh 'js compile'
			}
		}

		stage('Install dependencies') {
      		steps {
        		sh 'npm install'
      		}
    	}

		stage ('Test') {
			steps {
					sh 'node server.js'
			}
		}
	}
}