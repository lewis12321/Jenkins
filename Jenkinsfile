pipeline {
  agent any
  stages {
    stage('Build') {
      steps {
        echo bat(script: 'build.bat', returnStatus: true, returnStdout: true)
      }
    }
    stage('Test') {
      steps {
        echo bat(script: 'test.bat', returnStdout: true, returnStatus: true)
      }
    }
    stage('Deploy') {
      steps {
        echo 'Deploying....'
      }
    }
  }
}