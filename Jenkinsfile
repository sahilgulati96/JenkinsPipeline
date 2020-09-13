pipeline {
    agent any
    environment {
    PASS = credentials('DOCKER_PASS')
    }
    stages {
        stage('Build') {
            steps {
		
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
                sh 'bash jenkins/push/push.sh'
            }
        }
	stage('Deploy') {
            steps {
                sh 'bash jenkins/deploy/deploy.sh'
            }
        }
    }
}

