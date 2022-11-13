
pipeline{

   agent any

	//create dockerhub credential in github with your dockerhub Username and Password/Token
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
			
			   sh 'docker build -t akinaregbesola/class_app:${BUILD_NUMBER} .'
			}
		}
		
		stage('Login') {
		
			steps {
			   sh 'echo $DOCKERHUB_CREDENTIALS_PSW | docker login --username akinaregbesola --password-stdin'    
			}
		}

		stage('Push') {
			
			steps {
			   sh 'docker push akinaregbesola/class_app:${BUILD_NUMBER}'
			}
		}
		}
	
	post {
	    always {
		sh 'docker logout'
	    }
    }

}


