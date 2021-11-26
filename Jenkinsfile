// Declarative //
pipeline {
	agent any
	tools {
        maven 'mvn_home_3.5.3'
        jdk 'jdk8'
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