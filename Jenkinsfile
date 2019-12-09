pipeline {
	agent { docker { image 'node:6.3' } }

	stages {

		stage ('SCM Checkout') {
			steps {
				checkout([$class: 'GitSCM', branches: [[name: '*					develop']], doGenerateSubmoduleConfigurations: false, 					extensions: [], submoduleCfg: [], userRemoteConfigs: 					[[credentialsId: 'd86b76b4-99d0-4fb5-9515-9d87a97f6be7', 				url: 'https://github.com/JamieSmithGCU/coursework_2']]])
			}
		}

		stage ('Build') {
			steps {
			sh 'node server.js'
			sh 'exit server.js'
			}
		
		}
	}

}