pipeline {
  agent any
  stages {
    stage('Build') {
      steps {
        echo 'Building..'
        bat(mvn clean install, returnStatus: true, returnStdout: true)
      }
    }
    stage('Test') {
      steps {
        echo 'Testing..'
		bat (mvn test)
      }
    }
    stage('Deploy') {
      steps {
        echo 'Deploying....'
      }
    }
  }
}