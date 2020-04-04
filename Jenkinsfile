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
        sh '''echo \'docker build -t davidordonez:1.0 \'
docker build -t davidordonez/proycdk:1.0
docker images'''
      }
    }

  }
}