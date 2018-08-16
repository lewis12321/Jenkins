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
    stage('Complete') {
      steps {
        emailext(attachLog: true, compressLog: true, mimeType: 'text/plain', from: 'development@ianwilliams.co.uk', subject: 'Build Complete', body: 'Look at the logs.', replyTo: 'lewis.jefferies@ianwilliams.co.uk', to: 'lewis.jefferies@ianwilliams.co.uk,peter.wise@ianwilliams.co.uk')
      }
    }
  }
}