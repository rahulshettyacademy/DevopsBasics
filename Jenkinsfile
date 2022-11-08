
pipeline{

   agent any
	environment {
		DOCKERHUB_CREDENTIALS=credentials('dockerhub')
	}
	
	stages {

		stage('gitclone') {

		      steps {
		         git 'https://github.com/theitern/DevopsBasics.git'
		      }
		}
		
		stage('Build') {
			steps {
			
			   sh 'docker build -t akinaregbesola/class_app:1.0 .'
			}
		}
		
		stage('Login') {
		
			steps {
			   sh 'echo $DOCKERHUB_CREDENTIALS_PSW | docker login --username akinaregbesola --password-stdin'
			}
		}

		stage('Push') {
			
			steps {
			   sh 'docker push akinaregbesola/class_app:1.0'
			}
		}
		}
	
	post {
	    always {
		sh 'docker logout'
	    }
    }

}

