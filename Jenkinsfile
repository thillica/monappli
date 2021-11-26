// Declarative //
pipeline {
	agent any
	stages {
		stage('Build') {
			steps {
				bat 'cd monappli & mvn install'
			}
		 post {
                success {
                    junit '**/target/surefire-reports/*.xml'
                        }
              }
		}
		stage('Test') {
			steps {
				echo 'Testing..'
			}
		}
		stage('Deploy') {
			steps {
				echo 'Deploying....'
			}
		}
	}
}