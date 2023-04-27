pipeline {
	agent any

	environment {
		mavenHome = tool 'maven3'
	}

	tools {
		jdk 'jdk-1.8'
	}

	stages {

		stage('Build'){
			steps {
				bat "mvn clean install -DskipTests"
			}
		}

		stage('Test'){
			steps{
				bat "mvn test"
			}
		}

		stage('Deploy') {
			steps {
			    bat "mvn jar:jar deploy:deploy"
			}
		}
	}
}
