pipeline {
	agent any

	tools {nodejs 'node'}

	stages {
		stage ('Git Stage') {

			steps {
				
				sh 'js compile'
			}
		}

		stage ('Testing Stage') {

			steps {
				
					sh 'js test'
			}
		}

		stage ('Deployment Stage') {
			steps {
					sh 'js deploy'
			}
		}
	}
}