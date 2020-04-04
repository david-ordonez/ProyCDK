pipeline {
  agent any
  stages {
    stage('Env&Tools') {
      steps {
        sh 'env'
        sh 'docker --version'
        sh 'ls -ltr'
      }
    }

    stage('Build Dkr') {
      steps {
        sh '''docker build -t davidordonez/proycdk:1.0 .
'''
        sh 'docker images'
      }
    }

    stage('Deploy Image') {
      steps {
        sh 'docker login -u davidordonez --password-stdin 00Gd801011_'
        sh 'docker push davidordonez/proycdk:1.0'
      }
    }

  }
  environment {
    registryCredential = 'dockerhub_id'
    dockerImage = ''
  }
}