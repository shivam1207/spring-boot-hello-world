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
			    bat 'mvn jar:jar deploy:deploy'
			}
		}
	}
}
