// Declarative //
pipeline {
	agent any
	tools {
        maven 'Maven3.1.1'
        jdk 'java8'
    }
    stages {
        stage ('Initialize') {
            steps {
                bat '''
                    echo "PATH = %PATH%"
                    echo "M2_HOME = %M2_HOME%"
                '''
            	}
            }
        
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