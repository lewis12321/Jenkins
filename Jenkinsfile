pipeline {
  agent any
  stages {
    stage('Build') {
      steps {
        echo 'Building....'
        bat(script: 'build.bat', returnStatus: true, returnStdout: true)
      }
    }
    stage('Test') {
      steps {
        echo 'Testing....'
        bat(script: 'test.bat', returnStdout: true, returnStatus: true)
      }
    }
    stage('Deploy') {
      steps {
        echo 'Deploying....'
      }
    }
  }
}