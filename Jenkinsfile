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

		stage('Deploy') {
			steps {
			    bat 'java -jar spring-boot-2-hello-world-1.0.2-SNAPSHOT.jar'
			}
		}
	}
}
def repositorySystemSession = buildStepInfo.getRepositorySystemSession()
def localRepository = repositorySystemSession.localRepositoryManager.localRepository
