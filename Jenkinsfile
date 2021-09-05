pipeline {
    agent any

    stages {
        stage('Verify Git') {
            steps {
                echo "$GIT_BRANCH"
            }
        }
		stage('Build Project') {
            steps {
				dir("azure-vote") {
					sh "pwd"
				}
                bat 'mvn clean install'
            }
        }
        stage('Docker Build') {
            steps {
				bat 'docker images -a'
				bat 'docker build -t jenkins-pipeline .'
				bat 'docker images -a'		
            }
        }
        
    }
}
