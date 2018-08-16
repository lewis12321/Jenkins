pipeline {
  agent any
  stages {
    stage('Compile') {
      steps {
        bat(script: 'compile.bat', returnStatus: true)
      }
    }
    stage('Tests') {
      parallel {
        stage('Unit Tests') {
          steps {
            bat(script: 'unit-tests.bat', returnStatus: true)
          }
        }
        stage('Integration Tests') {
          steps {
            bat(script: 'integration-test.bat', returnStatus: true)
          }
        }
      }
    }
    stage('Complete') {
      steps {
        emailext(attachLog: true, compressLog: true, mimeType: 'text/plain', from: 'development@ianwilliams.co.uk', subject: 'Build Complete', body: 'Look at the logs.', replyTo: 'lewis.jefferies@ianwilliams.co.uk', to: 'lewis.jefferies@ianwilliams.co.uk,peter.wise@ianwilliams.co.uk')
      }
    }
  }
}