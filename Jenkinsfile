pipeline {
	agent any

	stages {
		stage ('Git Stage') {

			steps {
				withNodeJS(node : 'NodeJS 13.3.0') {
				sh 'js compile'
				}
			}
		}

		stage ('Testing Stage') {

			steps {
				withNodeJS(node : 'NodeJS 13.3.0') {
					sh 'js test'
				}
			}
		}

		stage ('Deployment Stage') {
			steps {
				withNodeJS(node : 'NodeJS 13.3.0') {
					sh 'js deploy'
				}
			}
		}
	}
}