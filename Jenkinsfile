pipeline {
	agent any


	tools {
		jdk 'jdk-1.8'
		maven 'maven3'
	}

	stages {

		stage('Build'){
			steps {
				bat 'mvn clean install -DskipTests'
			}
		}

		stage('Test'){
			steps{
				bat 'mvn test'
			}
		}

		
	}
	 post {
		 bat 'java -jar target/spring-boot-2-hello-world-1.0.2-SNAPSHOT.jar'
    
  }
}

