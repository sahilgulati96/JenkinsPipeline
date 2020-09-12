pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
		git 'https://github.com/sahilgulati96/JenkinsPipeline.git'
		sh './jenkins/mavenbuild/mavenbuild.sh mvn -B -DskipTests clean package'
            }
        }
	stage('Test') {
            steps {
                sh './jenkins/test/maventest.sh mvn test'
            }
        }
	stage('Push') {
            steps {
                sh './jenkins/push/push.sh'
            }
        }
	stage('Deploy') {
            steps {
                echo 'Hello World'
            }
        }
    }
}

