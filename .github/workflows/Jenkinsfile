pipeline {
    agent any

    stages {
        stage('Compile Stage') {
			  steps {
           			withMaven(maven : 'Maven_3.9.9'){
					sh 'mvn clean compile'
		   			}
            }
            }
     	stage('Testing Stage') {
             steps {
          			withMaven(maven : 'Maven_3.9.9'){
					sh 'mvn test'
		   }
           }
            } 
            
        stage('Deployment Stage') {
             steps {
           			withMaven(maven : 'Maven_3.9.9'){
					sh 'mvn deploy'
		   }
           }
           } 
        
        }
        }
        
      
