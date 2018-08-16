pipeline {
  agent any
  stages {
    stage('Build') {
      steps {
        bat(script: 'build.bat', returnStatus: true)
      }
    }
    stage('Test') {
      steps {
        bat(script: 'test.bat', returnStatus: true)
      }
    }
    stage('Deploy') {
      steps {
        echo 'Deploying....'
      }
    }
  }
}