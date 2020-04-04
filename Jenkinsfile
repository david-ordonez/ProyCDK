pipeline {
   agent any

   stages {
      stage('Init') {
         steps {
            sh 'rm -rf ProjectC'
            sh 'git clone https://github.com/RogerMZ/ProjectC.git'
            //git 'https://github.com/RogerMZ/ProjectC.git'
         }
      }
      stage('Compiler') {
         steps {
            sh 'mkdir -p build'
            sh 'ls -ltr'
            sh 'gcc ProjectC/hello.c -o build/hello'
         }
      }
      stage('Test') {
         steps {
            sh './build/hello'
         }
      }
   }
}
