pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                sh './jenkins/mavenbuild/mavenbuild.sh mvn -B -DskipTests clean package'
            }
        }
	stage('Test') {
            steps {
                echo 'Hello World'
            }
        }
	stage('Push') {
            steps {
                echo 'Hello World'
            }
        }
	stage('Deploy') {
            steps {
                echo 'Hello World'
            }
        }
    }
}

