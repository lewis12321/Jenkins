pipeline {
  agent any
  stages {
    stage('Build') {
      steps {
        echo 'Building..'
        bat(script: 'build', returnStatus: true, returnStdout: true)
      }
    }
    stage('Test') {
      steps {
        echo 'Testing..'
      }
    }
    stage('Deploy') {
      steps {
        echo 'Deploying....'
      }
    }
  }
}