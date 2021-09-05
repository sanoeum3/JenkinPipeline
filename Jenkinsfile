pipeline {
    agent any

    stages {
        stage('Verify Git') {
            steps {
                echo "$GIT_BRANCH"
            }
        }
        stage('Docker Build') {
            steps {
				bat 'docker images -a'
				bat 'cd azure-vote'
				bat 'docker build -t jenkins-pipeline .'
				bat 'docker images -a'		
            }
        }
        
    }
}
