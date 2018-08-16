pipeline {
  agent any
  stages {
    stage('Build') {
      steps {
        timestamps() {
          bat(script: 'bulid.bat', returnStatus: true)
          pwd()
        }

      }
    }
    stage('Test') {
      steps {
        timestamps() {
          bat(script: 'test.bat', returnStatus: true)
        }

      }
    }
    stage('Complete') {
      steps {
        timestamps() {
          emailext(attachLog: true, compressLog: true, mimeType: 'text/plain', from: 'development@ianwilliams.co.uk', subject: 'Build Complete', body: 'Look at the logs.', replyTo: 'lewis.jefferies@ianwilliams.co.uk', to: 'lewis.jefferies@ianwilliams.co.uk,peter.wise@ianwilliams.co.uk')
        }

      }
    }
  }
}