pipeline {
  agent any
  stages {
    stage('Env & Tools') {
      steps {
        sh 'env'
        sh 'docker --version'
        sh 'ls -ltr'
      }
    }

    stage('Build') {
      steps {
        sh 'echo \'docker build -t davidordonez:1.0\''
      }
    }

  }
}