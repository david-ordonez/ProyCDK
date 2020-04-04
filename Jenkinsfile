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
        sh '''docker build -t davidordonez/proycdk:1.0 .
'''
        sh 'docker images'
      }
    }

  }
}