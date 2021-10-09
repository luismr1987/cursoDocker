pipeline {
  agent any
  stages {
    stage('inicio_env') {
      steps {
        sh 'env'
        echo 'iniciando construcción'
      }
    }

    stage('Docker env') {
      parallel {
        stage('Docker env') {
          steps {
            sh 'docker -v'
          }
        }

        stage('Image Docker') {
          steps {
            sh 'docker images'
          }
        }

      }
    }

    stage('Build') {
      steps {
        sh 'cat versionImage | xargs ./scripts/build.sh'
      }
    }

    stage('docker') {
      steps {
        sh './scripts/run.sh'
      }
    }

    stage('hub') {
      steps {
        sh './scripts/upload_hub.sh'
      }
    }

  }
}