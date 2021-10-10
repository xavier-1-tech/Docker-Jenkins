pipeline {
    agent {
        label "Agent1"
    }
    
  environment {
    DOCKERHUB_CREDENTIALS = credentials("Docker-key")
}
    stages {
        stage('Build') { 
            steps { 
                sh 'docker build -t Docker-key/javaapp .'
                sh 'echo "completed build"'
            }
        }
    
        stage('Login') { 
            steps { 
              sh 'echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin'
              sh 'echo "completed login"'
            }
        }
        
        stage('Push'){
            steps {
                sh 'docker push xaviertech/javaapp:latest'
                sh 'echo "Push was successful"'
            }
        }
    }
}
